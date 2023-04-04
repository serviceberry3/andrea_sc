(
SynthDef(\modalMarimba, {
	arg
	// Standard values
	out = 0, freq = 440, amp = 0.1, att = 0.001, dec = 0.1, rel = 0.5, pan = 0,
	// Other controls, position goes from 0 to 1
	decCoef = 2, position = 0.414, ampSlope = 3;

	var freqarray, amparray, decarray, mallet, snd;

	// Array of frequencies, determined by solutions to the dynamic beam equation
	freqarray = Array.fill(30, { arg i; i + 1.5});
        freqarray[0] = 1.50561873;
	    freqarray[1] = 2.49975267;
	    freqarray = freqarray/1.50561873; // Normalize to freqarray[0] = 1

	// Array of amplitudes
	amparray = Array.fill(30, { arg i;
		if (freqarray[i] > 20000)
		    { 0 }
		    {
		        sin(((i + 1) * pi) * position) *
		        (ampSlope * (freqarray[i]).log2).dbamp
		    }
	});

	// Array of Decay times
	decarray = Array.fill(30, { arg i;
		exp(-1 * i * decCoef)
	}); // The decay times are dropping off exponentially

	// Hit the object
	mallet = Decay2.ar(
		in: Impulse.ar(0),
		attackTime: att,
		decayTime: dec,
		mul: 0.1);

	// Bank of resonators
	snd = Klank.ar(
		specificationsArrayRef: Ref.new([freqarray, amparray, decarray]),
		input: mallet,
		freqscale: freq,
		decayscale: rel);

	// Output stuff
	snd = Mix.ar(snd) * amp;
	snd = Limiter.ar(snd);

	DetectSilence.ar(in: snd, doneAction: 2);

	Out.ar(out, Pan2.ar(snd, pan));
}).add;



SynthDef(\abstractDrum, {
	arg
	// Standard values
	out = 0, freq = 140, amp = 1, pan = 0, att = 0.001, dec = 0.01, rel = 1,
	// Other Controls (position goes from 0 to 1)
	position = 0.5, ampSlope = 3, decCoef = 0.15, hiFreqSus = 0;

	var freqarray, amparray, decarray, exciter, snd;

	// Setting up arrays for Klank
	freqarray = Array.fill(8, {
		arg i = 1;
		(
			Array.fill((i + 1), {
				arg j;
				(j + 1).pow(2)
			}) +
			(i + 1).pow(2)
		).sqrt

	});
	freqarray = freqarray.flatten/(2.sqrt);

	amparray = Array.fill(36, {
		arg i;
		if (freqarray[i] > 20000)
			{ 0 }
			{
			    sin(((i + 1) * pi) * position) *
		        (ampSlope * (freqarray[i]).log2).dbamp
		    }
	});
	amparray = amparray/ampSlope;

	decarray = Array.fill(36, {
		arg i;
		exp(-1 * i * decCoef) + hiFreqSus
	});
	decarray = decarray/decarray[0];

	// Exciter
	exciter = Decay2.ar(
		in: Impulse.ar(0),
		attackTime: att,
		decayTime: dec,
		mul: 0.005); // This keeps the volume at a sane level

	// The actual sound-makey part
	snd = Klank.ar(
		specificationsArrayRef:
		    Ref.new([freqarray, amparray, decarray]),
		input: exciter,
		freqscale: freq,
		decayscale: rel);

	// Output Stuff
	snd = Mix.ar(snd * amp * 2);
	snd = Limiter.ar(snd);

	DetectSilence.ar(in: snd, doneAction: 2);

	Out.ar(out, Pan2.ar(snd, pan));
}).add;


SynthDef(\frameDrum, {
	arg
	// Standard values
	out = 0, pan = 0, freq = 170, amp = 0.5, att = 0.0025, dec = 0.0025, rel = 5, crv = 0,
	// Other controls (position goes from 0 to 1, blend from -1 to 1)
	decCoef = 0.225, position = 0.8, thumpAmp = 0.5, thumpDec = 0.2, exBlend = 0;

	var exciter, freqArray, ampRowArray, ampArray, decArray, snd;

	// An Array of bessel function solutions, normalized to 1 at the fundamental
	freqArray = [
		[ 0.6276, 1, 1.3403, 1.6651, 1.9804, 2.2892, 2.5931, 2.8933,
		  3.1905, 3.4852, 3.7778, 4.0686, 4.3579, 4.6458, 4.9325, 5.2182 ],
		[ 1.4406, 1.8309, 2.1967, 2.5474, 2.8877, 3.2201, 3.5465, 3.8681,
		  4.1855, 4.4996, 4.8108, 5.1194, 5.4258, 5.7301, 6.0328, 6.3338 ],
		[ 2.2585, 2.6551, 3.0326, 3.3967, 3.7509, 4.0974, 4.4377, 4.7727,
		  5.1033, 5.4302, 5.7538, 6.0745, 6.3927, 6.7085, 7.0223, 7.3342 ],
		[ 3.0774, 3.4772, 3.8615, 4.234, 4.5974, 4.9534, 5.3033, 5.648,
		  5.9882, 6.3246, 6.6575, 6.9873, 7.3144, 7.6391, 7.9615, 8.2818 ],
		[ 3.8967, 4.2985, 4.6872, 5.0655, 5.4354, 5.7984, 6.1555, 6.5075,
          6.8551, 7.1988, 7.539, 7.8761, 8.2104, 8.5422, 8.8716, 9.1988 ],
		[ 4.7162, 5.1194, 5.5111, 5.8936, 6.2685, 6.6368, 6.9995, 7.3573,
		  7.7108, 8.0605, 8.4067, 8.7497, 9.0899, 9.4276, 9.7628, 10.0958 ],
		[ 5.5358, 5.9399, 6.334, 6.7198, 7.0984, 7.471, 7.8382, 8.2007,
		  8.5591, 8.9136, 9.2648, 9.6128, 9.9581, 10.3007, 10.6409, 10.9789 ],
		[ 6.3555, 6.7603, 7.1562, 7.5445, 7.9262, 8.3022, 8.6732, 9.0396,
          9.402, 9.7607, 10.1161, 10.4684, 10.8179, 11.1649, 11.5094, 11.8517 ],
		[ 7.1753, 7.5807, 7.978, 8.3683, 8.7525, 9.1314, 9.5054, 9.8752,
		  10.241, 10.6033, 10.9623, 11.3183, 11.6715, 12.0222, 12.3706, 12.7167 ],
		[ 7.995, 8.4009, 8.7993, 9.1914, 9.5777, 9.959, 10.3357, 10.7082,
          11.077, 11.4424, 11.8046, 12.1638, 12.5203, 12.8744, 13.226, 13.5755 ],
		[ 8.8148, 9.221, 9.6205, 10.0139, 10.4021, 10.7854, 11.1643, 11.5394,
          11.9107, 12.2788, 12.6438, 13.0059, 13.3653, 13.7223, 14.0769, 14.4294 ],
		[ 9.6346, 10.0412, 10.4414, 10.8361, 11.2257, 11.6108, 11.9918, 12.3689,
		  12.7426, 13.113, 13.4805, 13.8451, 14.2072, 14.5668, 14.9241, 15.2793 ],
		[ 10.4545, 10.8612, 11.2622, 11.6579, 12.0489, 12.4356, 12.8183, 13.1973,
		  13.573, 13.9455, 14.3152, 14.6821, 15.0465, 15.4085, 15.7683, 16.1259 ],
		[ 11.2743, 11.6813, 12.0829, 12.4795, 12.8716, 13.2597, 13.6439, 14.0246,
		  14.4021, 14.7766, 15.1482, 15.5172, 15.8837, 16.2479, 16.6099, 16.9697 ],
		[ 12.0941, 12.5013, 12.9034, 13.3009, 13.694, 14.0833, 14.4689, 14.8512,
		  15.2303, 15.6064, 15.9799, 16.3507, 16.7192, 17.0853, 17.4493, 17.8112 ],
		[ 12.914, 13.3214, 13.7239, 14.1221, 14.5162, 14.9065, 15.2933, 15.677,
		  16.0575, 16.4353, 16.8103, 17.1829, 17.5531, 17.921, 18.2869, 18.6507 ],
	];

	// Amplitudes corresponding to nodes that look like slices
	ampRowArray = Array.fill(16, {
		arg i;
		if (i == 0)
			{ thumpAmp }
			{
			    (
				    ((3pi).pow(2) - (24pi * i * sin((pi/2)/i))) *
		            (
			        	((4 * i) * sin((pi/2)/i)).pow(2)/(3 * pi) -
		                ((4 * i) * sin((pi/2)/i))
		            ).pow(-2)
	            ) *
		        (
			        position.pow(3) - position +
			        (
			        	(position - position.pow(2)) *
					    ((16/3 * (i * sin((pi/2)/i)).pow(2)) - pi.pow(2))/
					    ((8pi/3 * i * sin((pi/2)/i)) - pi.pow(2))
			        )
		        )
		    }
	});

	// Amplitudes corresponding to nodes that have rings
	ampArray = Array.fill2D(16, 16, {
		arg i, j;
		(if (freqArray[i][j] > 20000)
	    	{ 0 }
		    {
				cos(position * ((i * pi) + pi/2)) * ampRowArray[j]
		    }
		)
	});

	// Decay times
	decArray = Array.fill2D(16, 16, {
		arg i, j;
		(
			if (j == 0)
		        { thumpDec }
		        { 1 }
		) *
		exp(-1 * (i + j) * decCoef)
	});

	// Exciter
	exciter = Env.perc(
		attackTime: att,
		releaseTime: dec,
		level: 0.05,
		curve: crv).ar;
	exciter = XFade2.ar(
		inA: exciter,
		inB: BrownNoise.ar(exciter),
		pan: exBlend);

	// Bank of resonators
	snd = Array.fill(16, {
		arg i;
			Klank.ar(
		        specificationsArrayRef:
		    	    Ref.new([freqArray[i], ampArray[i], decArray[i]]),
		        input: exciter,
		        freqscale: freq,
		        decayscale: rel
	        )
	});

	// Output stuff
	snd = Mix.ar(snd) * amp;
	snd = Limiter.ar(snd);

	DetectSilence.ar(in: snd, amp: 0.00025, doneAction: 2);

	Out.ar(out, Pan2.ar(snd, pan));
}).add;

SynthDef("beating", {
	arg freq = 440, amp = 0.1, out = 0, pan = 0, att = 0.01, dec = 1, curve = -4, beatFreq = 15;

	var env, snd, oscillator1, oscillator2;

	env = Env.perc(att, dec, amp, curve).kr(doneAction: 2);

	oscillator1 = SinOsc.ar(freq); //Try other waveforms for the oscillators! Mix and match, collect them all!
	oscillator2 = SinOsc.ar(Line.kr(freq + beatFreq, freq, dec));

	snd = Mix([oscillator1, oscillator2]);
	snd = snd * env;

	Out.ar(out, Pan2.ar(snd, pan));

}).add;

SynthDef("blip1", {arg out = 0, freq = 25, numharm = 10, att = 0.01, rel = 1, amp = 0.1, pan = 0;
	var snd, env;
	env = Env.perc(att, rel, amp).kr(doneAction: 2);
	snd = Blip.ar(
		freq: freq * [1, 1.01],
		numharm: numharm,
		mul: env
	);
	snd = LeakDC.ar(snd);
	snd = Mix.ar(snd);
	snd = Pan2.ar(snd, pan);
	Out.ar(out, snd);
}).add;

SynthDef(\kalimba, {
	arg
	// Standard values
	out = 0, freq = 440, amp = 0.1, att = 0.001, rel = 3, pan = 0, crv = -8,
	// Other controls (mix control goes from 0 to 1)
	mix = 0.1, clickRel = 0.01;

	var note, env, body, snd;

	env = Env.perc(
		attackTime:att * 3, releaseTime: rel,
		curve: crv).kr(doneAction: 2);

	note = SinOsc.ar(freq) * env;

	body = DynKlank.ar(
		specificationsArrayRef:
		Ref.new([
			[240 * ExpRand(0.9, 1.1), 2020 * ExpRand(0.9, 1.1), 3151 * ExpRand(0.9, 1.1)],
			[-7, 0, 3].dbamp, // same as 10.pow([-7, 0, 3] / 20),
			[0.75, 0.04, 0.06] + clickRel
		]),
		input:
		// Try BrownNoise, GrayNoise, etc. here, but you may need to change ring times above
		(PinkNoise.ar * Env.perc(att, clickRel).kr)
	);

	snd = (note * (1 - mix)) + (body * mix) * amp;

	DetectSilence.ar(in: snd, doneAction: 2);

	Out.ar(out, Pan2.ar(snd, pan));
}).add;


SynthDef("steelDrum", {
	arg freq = 440, amp = 0.1, out = 0, pan = 0, att = 0.01, dec = 1.5, curve = -6, filterHarmonic = 6;

	var resFreqArray, resAmpArray, resDecArray, enva, envb, envc, snda, sndb, sndc, snd;

	//Arrays for the bank of resonators, mostly harmonics near 5ths and 9ths, and random amplitudes:
	resFreqArray = [2, 2.98, 4.75, 6.21, 9, 9.15, 11.87];
	resAmpArray = [0.35, 0.23, 0.10, 0.06, 0.07, 0.05, 0.01];
	resDecArray = [0.86, 0.72, 0.37, 0.55, 0.32, 0.21, 0.16];

	//Custom envelope shapes attempting to capture the aparrent "bloom" of a note:
	enva = Env.pairs([[0, 0], [att, 1], [(att + dec), 0]], curve).kr;
	envb = Env.pairs([[0, 0], [(att * 5), 0.25], [(att * 6), 0.75], [((att * 6) + (dec / 2)), 0]], curve).kr;
	envc = Env.pairs([[0, 0], [(att * 5), 0.1], [(att * 8), 0.5], [((att * 8) + (dec / 3)), 0]], curve).kr;

	//Fundamental, octave up, and a bank of enharmonic resonators excited by a metalic sound:
	snda = SinOsc.ar(freq: freq, mul: enva);
	sndb = SinOsc.ar(freq: freq * 2.015, mul: envb);
	sndc = DynKlank.ar(
		specificationsArrayRef:
		    Ref.new([
		    	resFreqArray * freq,
		    	resAmpArray,
			    resDecArray * dec
		    ]),
		input:
		LPF.ar(HPF.ar(CombN.ar(PinkNoise.ar(1), 1/freq, 1/freq, -1, envc), freq * 2), freq * filterHarmonic)
	);

	//Output stages with a tiny bit of compression to smooth things out:

	snd = Mix.ar([snda, sndb, sndc]) * (amp / 3);
	snd = Limiter.ar(snd, amp);
	DetectSilence.ar(in: snd, amp: 0.0001, time: 0.5, doneAction: 2);
	Out.ar(out, Pan2.ar(snd, pan));

}).add;


SynthDef(\clap, {
	arg out=0, amp = 0.1, pan=0;
	var env1, env2, son, noise1, noise2;

	env1 = EnvGen.ar(Env.new([0, 1, 0, 1, 0, 1, 0, 1, 0], [0.001, 0.013, 0, 0.01, 0, 0.01, 0, 0.03], [0, -3, 0, -3, 0, -3, 0, -4]));
	env2 = EnvGen.ar(Env.new([0, 1, 0], [0.02, 0.3], [0, -4]), doneAction:2);

	noise1 = WhiteNoise.ar(env1);
	noise1 = HPF.ar(noise1, 600);
	noise1 = BPF.ar(noise1, 2000, 3);

	noise2 = WhiteNoise.ar(env2);
	noise2 = HPF.ar(noise2, 1000);
	noise2 = BPF.ar(noise2, 1200, 0.7, 0.7);

	son = noise1 + noise2;
	son = son * 2;
	son = son.softclip * amp;

	Out.ar(out, Pan2.ar(son, pan));
}).add;


SynthDef(\polyswingsym,{

	arg
	kickv=1500, frqkick=45, deckick=16, pkick=4, bwkick=0.01, divkick=1,
	snrv1=40, decsnr=15, frqsnr=222, divsnr=2,
	hhv=50, divhh=3,
	tmv=44, frqtm=135, bwtm=0.05, divtm=8,
	clvv=40, divclv=4,
	wdv=30, frqwd=850, divwd=5,
	speed=1, swing=1.5, amp=0.5, out=0;

	var sig, master, trig1, trig2, trig3, trig4, trig5, trig6, kick,snr1,hh,tm,clv,wd;

	master=(((LFSaw.ar(speed,pi,1,0).neg**(swing))+1)/2);

	trig1 = (master%(1/divkick))*divkick;
	trig2 = (master%(1/divsnr))*divsnr;
	trig3 = (master%(1/divhh))*divhh;
	trig4 = (master%(1/divtm))*divtm;
	trig5 = (master%(1/divclv))*divclv;
	trig6 = (master%(1/divwd))*divwd;


	kick= Resonz.ar(trig1,frqkick*((trig1**deckick*pkick)+1),bwkick,kickv);
	snr1=  (Resonz.ar(trig2,frqsnr,0.02,4)+ WhiteNoise.ar(0.01)+Dust2.ar(123,0.01))*(trig2**decsnr).tanh*snrv1;
	hh= RHPF.ar(Mix.new(Resonz.ar(trig3,Array.linrand(11,4000,6500),0.0005)),2400,0.4,hhv);
	tm= Resonz.ar(trig4,frqtm,bwtm,tmv);
	clv= HPF.ar(Mix.new(Resonz.ar(trig5,Array.linrand(9,500,3500),0.01,clvv)),700);
	wd= Resonz.ar(trig6,frqwd,0.04,wdv);


	sig = kick+snr1+hh+tm+clv+wd;

	//sig = wd;


	Out.ar(out, LeakDC.ar(sig!2).tanh*amp);
}).add;



SynthDef(\winwoodlead,{|out= 0 freq = 440 amp = 0.1 gate=1 cutoff=8000 rq=0.8 lfowidth=0.01 lforate= 8 lagamount=0.01 pan=0.0|

	var pulse, filter, env, lfo;

	lfo = LFTri.kr(lforate,Rand(0,2.0)!2);

	pulse = Mix(Pulse.ar((freq.lag(lagamount))*[1,1.001]*(1.0+(lfowidth*lfo)),[0.2,0.19]))*0.5;

	filter =  RLPF.ar(pulse, cutoff, rq);

	//remove low end
	//lowshelf either boosts or cuts freqs below a cutoff freq (similar to hipass filt)
	filter = BLowShelf.ar(filter,351,1.0,-9);

	env = EnvGen.ar(Env.adsr(0.01,0.0,0.9,0.05), gate, doneAction:2);

	Out.ar(out, Pan2.ar(filter*env*amp,pan));

}).add;


)


y=Synth(\polyswingsym)
y.free

// Parameters main
y.set(\swing,2);
y.set(\speed,1);
y.set(\amp,0.5);

// Volumes
y.set(\kickv,1500);
y.set(\snrv1, 40);
y.set(\hhv,50);
y.set(\tmv,44);
y.set(\clvv,40);
y.set(\wdv,40);

// Divisors
y.set(\divkick,1);
y.set(\divsnr,2);
y.set(\divhh,3);
y.set(\divtm,6);
y.set(\divclv,4);
y.set(\divwd,5);

// Parameters Kick
y.set(\deckick,16);
y.set(\frqkick,45);
y.set(\bwkick,0.01);
y.set(\pkick,3);

// Parameters Snare
y.set(\decsnr,6);
y.set(\frqsnr,222);

// Parameters Tom
y.set(\frqtm,135);
y.set(\bwtm,0.06);


// Parameters Woodblock
y.set(\frqwd,850);



Synth(\kalimba);
Synth(\steelDrum);
Synth(\abstractDrum);
Synth(\frameDrum);

Synth(\beating);
Synth(\blip1);
Synth(\clap);







(
fork{
	// notes sequence
	var seq = Pxrand([0,3,5,7,8],inf).asStream;
	loop{
		var dur = 8;
		var num = 8;
		var root = 36;
		var freq = (seq.next+root).midicps;
		var spread = rrand(0.4,0.8);
		var attack = rrand(0.05, 0.3);

		// play the cluster
		play{
			var harm = Array.geom(num, 1, 1.5);
			var harma = Array.geom(num, 0.5, 0.8);
			var detune = Array.fill(num, { LFNoise2.kr(1,0.01,1) });
			var source = PinkNoise.ar;
			var bandwidth = Rand(0.001,0.01);
			var generator = [
				SinOsc.ar(freq*harm*detune, mul:harma*0.3).scramble,
				Resonz.ar(source, freq*harm*detune, bandwidth, mul:harma).scramble * 50
			].wchoose([0.2,0.8]);
			var snd = Splay.ar(generator,spread);
			snd * LFGauss.ar(dur, attack, loop:0, doneAction:2);
		};
		dur.wait;
	};

};

// global triple super gverb
{
	var in = In.ar(0,2);
	in = (in*0.2) + GVerb.ar(in, 220, 12, mul:0.6);
	in = (in*0.2) + GVerb.ar(in, 220, 12, mul:0.6);
	in = (in*0.2) + GVerb.ar(in, 220, 12, mul:0.6);
	ReplaceOut.ar(0, Limiter.ar(LeakDC.ar(in)))
}.play(addAction:\addToTail)
)




// Construct a circulant feedback matrix using the given eigenvalues
(
// 1 - The eigenvalues of the feedback coefficient matrix
d = [
	-1,
        Polar(1, -3pi / 4),
        Polar(1, -pi / 2),
        Polar(1, -pi / 6),
        1,
        Polar(1, pi / 6),
        Polar(1, pi / 2),
        Polar(1, 3pi / 4)
];

// 2 - Compute the feedback matrix from the given eigenvalues
n = d.size;
a = (Matrix.newIDFT(n) * Matrix.withFlatArray(n, 1, d)).real.flat / sqrt(n);
)

(
        var primePowerDelays = { arg delays;
                (delays collect: { |delay, i|
                        var prime = i.nthPrime;

		        prime ** ((log(delay) / log(prime)) + 0.5).floor;
	        }).asInteger;
        };

        var delayLengths = { arg n, dmin, dmax;
	        var nm1 = n - 1;
	        var d = dmin * ((dmax / dmin) ** ((0..nm1) / nm1));

	        (d).round(1.0).asInteger;
        };

	SynthDef(\sine, { arg out, freq = 440, amp = 0.5, trigFreq = 1;
		Out.ar(out, Decay.ar(Impulse.ar(trigFreq), 0.2, SinOsc.ar(freq, 0, amp)))
	}).add;

	SynthDef(\fdn, { arg in, out, scale = 1.0, coef = 0.5;
		var a, x, w, fb, delT;

		fb = LocalIn.ar(n);

		a = \a.kr(0 ! n);
		delT = \delT.kr(primePowerDelays.(delayLengths.(n, 0.03, 0.06)));
		x = In.ar(in);
		w = a.size collect: { arg i;
			DelayN.ar(a.rotate(i).inject(x, { |input, coef|
				coef * fb[i] + input
			}), 1, (delT[i] * scale - ControlDur.ir).fold(0.0, 1.0))
		};

		LocalOut.ar(LeakDC.ar(OnePole.ar(w, coef)));

		Out.ar(out, w.sum.tanh ! 2)
	}).add;
)

(
x = Synth(\sine, [\out, 10, \trigFreq, 0.25, \amp, 0.1], 1, \addToHead);
y = Synth(\fdn, [\in, 10, \out, 0, \a, a, \scale, 1, \coef, 0.5], 1, \addToTail);
)







(
SynthDef(\berlinb, { arg out=0, freq = 80, amp = 0.01, pan=0, gate=1;
    var synth, env;
    env = Decay2.kr(gate, 0.05, 8, 0.0003);
    synth = RLPF.ar(
        LFPulse.ar(freq, 0, SinOsc.kr(0.12, [0, 0.5pi], 0.48, 0.5)),
        freq * SinOsc.kr(0.21, 0, 18, 20),
        0.07
    );
    #a, b = synth*env;
    DetectSilence.ar(a, 0.1, doneAction: Done.freeSelf);
    Out.ar(out, amp * Mix.ar(PanAz.ar(4, [a, b], [pan, pan+1])));
}).add;
)

(
f = Pbind(
    \degree, Pseq([0, 1, 2, 4, 6, 3, 4, 8], inf),
    \dur, 0.5, \octave, 3, \instrument, \berlinb
).play;
)

(
f.stream = Pbind(
    \degree, Pseq([0, 1, 2, 4, 6, 3, 4, 8], inf),
    \dur, 0.5, \octave, [2, 1],
    \instrument, \berlinb,
    \pan, Pfunc({1.0.rand2})
).asStream;
)