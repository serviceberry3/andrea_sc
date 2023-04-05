/*

 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌
▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌░▌     ▐░▌
▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌▐░▌    ▐░▌
▐░▌ ▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌ ▐░▌   ▐░▌
▐░▌▐░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌  ▐░▌
▐░▌ ▀▀▀▀▀▀█░▌▐░█▀▀▀▀█░█▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌   ▐░▌ ▐░▌
▐░▌       ▐░▌▐░▌     ▐░▌  ▐░▌          ▐░▌          ▐░▌    ▐░▌▐░▌
▐░█▄▄▄▄▄▄▄█░▌▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌     ▐░▐░▌
▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌
 ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  *ish*


CPSC 432/532 Midterm Project Description 2021


Midterm Goal:

The overarching goal for the midterm: to realize and synthesize (in multiple senses) the topics, synthesis and DSP methods learned in the class heretofore. It will require you to use your ears (and any other analysis method you choose) to try to match timbres using additive synthesis and/or FM synthesis. It will also require you to master the use of the Pattern classes to arrange your music in time.

General Description:

You may pick a song from Hiroshi Yoshimura's album 'Green' and use it as a model and guide for your own piece. Your piece may be original (your own notes/chords, etc), or may be a "cover": exactly the same notes and kinds of sampled ambient sounds.
Still have to figure out mono/stereo, what notes are,

**Alternately** you may model another piece of electronic music provided:
1) is has multiple instrumental parts (percussion, pad, lead, natural sounds, etc. Think "chilledcow"
2) it is comparable length (~5')
3) is has multiple sections
something that hass multiple parts, comes and gos

The Green album may be found in full here: https://www.youtube.com/watch?v=D7aYjRl_6Zw&t=772s

Whether you choose a song from Green or another album, the following criteria must be adhered to:

1) Your piece should have the same:
   -number of type of musical parts (synth lead, bass, etc.)
   -number and type of sound samples (rain, forest sounds, etc)
   -number and type of FX (reverb, phasing, delays, etc)
   -Spatial features (panning)
   -Be the same length (within 10 or so seconds)

2) You must use the Pattern classes for organization and generation of synth events.

3) You may use whatever synthesis methods we have covered that get the results you want/need

4) You may organize your musical data however you wish, but you must take advantage of language features when it comes to formal structures and repetition. By this I mean you should organize your note data in the smallest meaningful arrays and reuse these arrays to account for repetition, changing only those parameters required of the musical process (as defined by the Yoshimura tune itself). This as opposed to multiple pitch arrays (for example) that are the same, or long, hard-coded arrays representing entire instrumental parts.

Use of audio samples:

You can find nature samples on the internet. Use a quick google search to find places like FreeSound.org: https://freesound.org/  *Use only good-sounding .wav audio samples -- no lossy mp3s, nothing that sounds jank.

You will have to master a few technical effects as well including fade-ins and fade-outs, use of sample-playing synths with the Pattern classes, and the all-important Pmono for changing a continuously running Synth with a Pattern.

Key classes will be Pseq, Pbind, Pmono, Pfx, Ppar, Ptpar

The above classes cover about 90% of use cases.

Patterns Reading:

There are two pattern tutorials in the IDE documentation. **Read through both.** You will not be able to complete this assignment without doing so. Here are the web links, but they exist locally.

1) http://doc.sccode.org/Tutorials/Streams-Patterns-Events1.html
2) http://doc.sccode.org/Tutorials/A-Practical-Guide/PG_01_Introduction.html

Beyond meeting the minimum criteria outlined above you will be judged on:

-stylistic match to your model: does your piece live in the same stylistic world (ex. 1980s Japanese Minimal Ambient Electronic) (2)

-sonic match to your model: do the instruments and samples in your piece sound the same as the model (2)

-formal match to your model: does your piece have the same meta structure as your model -- number of sections, parts, lengths, etc. (1)

You must write two blog posts, one (1) by March 31 detailing your progress with in-progress notes, ideas, CODE EXAMPLES, etc, and another (2) by the due date detailing your finished product with mp3 upload and embed, etc. (Due date: April 5th)

Specific questions regarding this assignment should be posted to an appropriately-named Discussion on Canvas.
*/




//---------------------------------BEGIN PROJECT CODE HERE-------------------------------------------

//Andrea (Instrumental), by Bad Bunny (ft. Buscallaba)
//A mediocre instrumental sampling can be found here: https://www.youtube.com/watch?v=8TM2yEp6Drw.

//The entirety of the song runs at 103 bpm.


//INSTRUMENT DEFINITIONS
(
//Env.new (or just Env()) args: values (levels) array, time array, curve array (affects concave vs. convex vs. flat)
~env = Env.new([1, 0.0001], [0.8], \exp);


//kickdrum: (see 01:33 for good isolation of the kick) the one they use seems to have little tone
//TODO: make less tonal
SynthDef(\kick, { | ampl = 1, freq = 70 |
    //send the signal to the output bus '0'
	s = ampl * SinOsc.ar(freq) * EnvGen.kr(Env.new([1, 0.0001], [0.8], \exp), doneAction: 2);
    Out.ar(0, s ! 2);
}).add;


SynthDef(\bd, { | out=0, freq=100 |
	var osc, env;
	osc = FSinOsc.ar(freq);
	env = EnvGen.kr(Env.perc(0, 0.55), doneAction: 2);
	Out.ar(out, Pan2.ar(osc, 0, env));
}).add;


//background "baying" synth
SynthDef(\sin, { | ampl = 1, freq = 300 |
    //send the signal to the output bus '0'
	//Env.perc args: attacktime, releasetime, peak level, curve
	//FreeVerb args: input sig, mix (dry/wet bal), room sz, damp, mul, add
	s = ampl * FreeVerb.ar(SinOsc.ar(freq) * Env.perc(0.05, 0.15, 1, \sine).kr(), 0.5, 0.6) * Env.linen(sustainTime: 0.5, releaseTime: 0.15).kr(2);
    Out.ar(0, s ! 2);
}).add;


//snare drum
//TODO: make more hollow/resonant??
SynthDef(\sd, { | ampl = 1, freq = 200 |
	var osc1, osc2, env, sig;
	osc1 = WhiteNoise.ar;

	osc2 = FSinOsc.ar(freq);

	//percussive envelope (it's a drum!)
	//Env.perc args: attacktime, releasetime, peak level, curve
	env = EnvGen.kr(Env.perc(0, 0.05, 1, \sine), doneAction: 2);

	//mix multi-channel signal down to single channel, only passing low freqs
	sig = LPF.ar(Mix([osc1, osc2]), 5000);

	//pan signal to both speakers
	Out.ar(0, Pan2.ar(sig, 0, env * ampl));
}).add;


SynthDef(\kick2, { |freq=440, gate=1, amp=0.5, source,pan = 0.0 |
	source =
	Pan2.ar(
		SinOsc.ar(EnvGen.kr(Env.perc(0.0001, 1.5, 1, -200), gate, 1000, 45, doneAction:2), 1, 1) +
		((BPF.ar([GrayNoise.ar(6),GrayNoise.ar(6)],EnvGen.kr(Env.perc(0.001, 0.3, 1, -200), gate, 6000, 70), 1.5)).distort * Line.kr(0.3,0,0.1))
		*
		EnvGen.kr(Env.perc(0.0001, 0.09, amp, 8)),0);
	Out.ar(0, source);
}).add;


SynthDef(\hat, { | out=0 |
	var osc1, env;
	osc1 = WhiteNoise.ar;
	env = EnvGen.kr(Env.perc(0, 0.01), doneAction: 2);
	Out.ar(out, Pan2.ar(osc1, 0, env));
}).add;


SynthDef(\ringkick, { | freq = 40, decay = 0.25, amp = 1 |
	var snd;
	snd = Ringz.ar(
		in: LPF.ar(
			in: Impulse.ar(0),
			freq: 1000),
		freq: freq,
		decaytime: decay,
		mul: 7 * amp).tanh.sin*2;
	Out.ar(0, snd ! 2);
}).add;

SynthDef(\marimba, { | freq = 440, amp = 0.4 |
	var snd, env;
	env = Env.linen(0.015, 1, 0.5, amp).kr(doneAction: 2);
	snd = BPF.ar(Saw.ar(0), freq, 0.02);
	snd = BLowShelf.ar(snd, 220, 0.81, 6);
	snd = snd * env;
	Out.ar(0, Splay.ar(snd));
}).add;


//RLPF: SC uses reciprocal of Q (RQ). Max Q value is 1. Smaller rq values -> smaller bandwidth of band stop zone.
//therefore smaller rq values -> narrower bandwidth of band stop zone. higher Q -> closer the filter to being perfect
SynthDef(\pong, { | freq = 400 |
	var sig, freqs, env, partialFreqNoises;

	//fill an array with some LFNoise1 objects to slightly vary each of the partials' frequencies over time
	partialFreqNoises = Array.fill(3, { |i|
		//LFNoise1 args: freq, mul
		LFNoise1.kr(3, 1);
	});

	env = Env.perc(0.01, 0.08, 1, \sin);

	freqs = #[600, 1200, 650];

	sig = Mix(RLPF.ar(SinOsc.ar(freqs + partialFreqNoises) * EnvGen.kr(env, doneAction: 2), 600, 0.5));

	Out.ar(0, Pan2.ar(sig, 0));
}
).add;


//cred: http://sccode.org/1-5de/fork
SynthDef(\wood_block, { | freq=850, wdv=30, swing=1.5, ampl=0.5, out=0 |
	var env, sig, main, wd;

	env = Env.perc(0.01, 0.01, 1, \sin);

	main = ((LFSaw.ar(1, pi, 1, 0).neg ** (swing)) + 1) / 2;

	wd = (Resonz.ar(main, freq, 0.04, wdv) + SinOsc.ar(800)) * EnvGen.kr(env, doneAction: 2);

	//add some reverb
	s = FreeVerb.ar(wd, 0.33, 0.9);

	//LeakDC: remove super low-freq (~DC) content, so essentially a highpass filter
	Out.ar(out, LeakDC.ar(s ! 2) * ampl);
}).add;


//experiment with getting the wood block to reverb a bit
SynthDef(\wood_verb, { | freq=400, wdv=30, swing=1.5, ampl=0.5, out=0 |
	var local, in, env, sig, main, wd, s;

	main = ((LFSaw.ar(1, pi, 1, 0).neg ** (swing)) + 1) / 2;

	wd = (Resonz.ar(main, freq, 0.04, wdv) + SinOsc.ar(800));

	//add some reverb
	//s = FreeVerb.ar(wd, 0.33, 0.9);
	s = FSinOsc.ar(freq).cubed.max(0);

	in = Mix.fill(12, {
		Pan2.ar(
			//Decay2 produces exponential decay that has rounded attack
			//Decay2 args: input sig, attackTime, decayTime, mul, add
			Decay2.ar(Impulse.ar(0), 0.1, 0.3, 0.1) * s, 0)
	});

	//cascade allpass delay lines
	//Allpass args: input sig, maxdelaytime, delaytime, decaytime, mul, add
	2.do { local = AllpassN.ar(in, 0.003, [0.001, 0.001], 1) };

	//LocalIn defines buses that are local to enclosing Synth (good for feedback processing loops in Synths)
	//Define LocalIn with 2 channs
	local = LocalIn.ar(2) * 0.98;

	//pass thru single-pole filter. second arg is feedback coeff
	local = OnePole.ar(local, 0.5);

	//rotate and another allpasss
	local = Rotate2.ar(local[0], local[1], 0.23);
	local = AllpassN.ar(local, 0.05, [0.01, 0.01], 2);

	//DelayN is delay line. args: signal, maxdelaytime, delaytime
	local = DelayN.ar(local, 0.3, [0.19, 0.26]);
	local = AllpassN.ar(local, 0.05, [0.01, 0.01], 2);

	//remove super low freq (DC), so essentially a highpass filter
	local = LeakDC.ar(local);
	local = local + in;

	//write out to the channel called local, causing feedback loop
	LocalOut.ar(local);

	Out.ar(out, local + in);
}).add;



SynthDef(\fady, { | out=0, freq = 52, loudness = 0.5, dur = 3.0, pan = 0.0, attackTime = 0.3, releaseTime = 0.9, gate = 1, freqs = #[53, 82, 106, 280, 334, 420, 497, 563, 672, 845, 1005, 1262, 1491, 1670], amplSpect = #[-64.1, -68.8, -28.5, -30.7, -32.6, -34.7, -38.8, -37.1, -37.5, -75.2, -76.9, -74.3, -72.4] |
	var numPartials, partialFreqNoises, partialAmplNoises;

	//number of total partials we have
	numPartials = freqs.size;

	//fill an array with some LFNoise1 objects to slightly vary each of the partials' frequencies over time
	partialFreqNoises = Array.fill(numPartials, { |i|
		LFNoise1.kr(10, 5);
	}
	);

	//fill yet another array with some more LFNoise1 objects to slightly vary each of the partials' amplitudes over time
	//fill an array with some LFNoise1 objects to slightly vary each of the partials' frequencies over time
	partialAmplNoises = Array.fill(numPartials, { |i|
		LFNoise1.kr(10, 0.5); //multiplier of 2 sounds pretty good
	}
	);

	//convert db to amplitudes
	a = 10.pow(amplSpect / 20);

	b = Pan2.ar( //pan to position (user-passed arg)
		Mix( //mix down to single channel
			SinOsc.ar(freq: freqs + partialFreqNoises, mul: a + partialAmplNoises),
			pan));

	//to try to better mimic freqscope of original, I made some PinkNoise and filtered it until I saw the flat low-freq tail around -70 dB that's present on the original. I added this to the rest of signal
	//wrapped it in BandStop filter because the low-freq tail ampl was too big
	//TODO: try BrownNoise??
	c = BBandStop.ar(HPF.ar(b + BPF.ar(PinkNoise.ar(), 25, 1) ! 2, 150), freq: 25, bw: 10);

	//hella high-order lowpass filter to really cut out a lot of the high-freq components (which is necessary based on freqscope of original)
	10.do {
		c = LPF.ar(c, 800);
	};

	e = EnvGen.kr(Env.adsr(0.2, 0.1, 1, 0.8, 1, \sin), doneAction: 2, gate: gate);

	s = FreeVerb.ar(c, 0.33, 0.8);

	Out.ar(out, s * e * loudness);
}).add;



SynthDef(\maraca, { | out = 0, freq = 400 |
	var noise1, noise2, env1, env2, env3, env4, env5;

	env1 = EnvGen.ar(Env.new([0, 1, 0, 1, 0, 1, 0, 1, 0], [0.001, 0.013, 0, 0.01, 0, 0.01, 0, 0.03], [0, -3, 0, -3, 0, -3, 0, -4]));

	env2 = EnvGen.ar(Env.new([0, 1, 0], [0.02, 0.3], [0, -4]), doneAction:2);
	env3 = EnvGen.ar(Env.new([0, 1, 0], [0.5, 0.5], [8, -8]), doneAction: 2);

	env4 = EnvGen.ar(Env.perc(0.03, 0.4, 1, -3), doneAction: 2);

	env5 = EnvGen.ar(Env.new([0, 1, 0.8, 0], [0.2, 0.3, 5], [\sin, 1, \sin]), doneAction: 2);

	//WhiteNoise args: mul, add
	noise1 = LPF.ar(WhiteNoise.ar(env4), 500);

	Out.ar(out, noise1 ! 2);
}).add;


SynthDef(\marimba1, {
	arg
	// Standard values
	freq = 440, out = 0, amp = 0.4, pan = 0, rq = 0.02,
        // Controls for BLowShelf
	shelffreq = 220, rs = 0.81, shelfamp = 2;

	var snd;

	snd = BPF.ar(
		in: Saw.ar(0),
		freq: freq,
		rq: rq);

	snd = BLowShelf.ar(
		in: snd,
		freq: shelffreq,
		rs: rs,
		db: shelfamp.ampdb);

	snd = Limiter.ar(snd) * amp;

	DetectSilence.ar(in: snd, doneAction: 2);

	Out.ar(out, Pan2.ar(snd, pan));
}).add;

SynthDef(\marimba2, {|baseFreq = 300, ln = 0.4, st=0.05, out=0, pos=0, ampl=0.5|
	var pluck, rsntr, freqs, amps, ring;
	freqs = [1,4,10] * baseFreq;

	amps = [0.5, 0.4, 0.2];

	ring = Array.fill(3, {|i| ln - (st*(1-st*i))});

	pluck = Pluck.ar(Impulse.ar(0), 1, baseFreq.reciprocal, baseFreq.reciprocal, ln, mul: 0.4);
	rsntr = Klank.ar(`[freqs, amps * 0.45, ring], pluck);
	DetectSilence.ar(rsntr, time:0.5, doneAction: 2);

	Out.ar(out, Pan2.ar(ampl * ((pluck * 0.75) + rsntr), pos));
}).add;



SynthDef(\bass_stringy, { | out = 0, ampl = 1, freq = 69.30, partials = #[324, 504, 666, 838], gate = 1  |
	//carrier amplitudes
	var amps = [1, 1, 1, 1].normalizeSum; //makes these ampls sum to 1

	//the modulator
	var mod = SinOsc.ar(freq, mul: 500);

	//the 3 carriers
	var car1 = SinOsc.ar(freq*1 + mod, mul: amps[0]) * LFNoise1.kr(10, 1);
	var car2 = SinOsc.ar(freq*2 + mod, mul: amps[1]) * LFNoise1.kr(10, 1);
	var car3 = SinOsc.ar(freq*3 + mod, mul: amps[2]) * LFNoise1.kr(10, 1);
	var car4 = SinOsc.ar(freq*4 + mod, mul: amps[3]) * LFNoise1.kr(10, 1);

	var env;

	s = car1 + car2 + car3 + car4;

	e = EnvGen.kr(Env.perc(0.01, 0.4, 1, \sin), doneAction: 2, gate: gate);


	//adsr args: attacktime, decaytime, sustainlvl (fraction of peak lvl), releasetime, peaklevel, curve
	Out.ar(out, s * ampl * e ! 2);
}).add;


//trippy using multiple modulator FM
SynthDef(\trippy, { |f=554.37, e=0.9, out=0, ampl=0.5|
	var m1, m2, m3, carr;

	//modulator 1
	m1 = SinOsc.ar((f * 1) + (f / 250), mul: 700 * (17 * (8 - (e * f.log)) / (e * f.log).squared));

	//modulator 2
	m2 = SinOsc.ar((f * 4) + (f / 200), mul: 15 * (20 * (8 - (e * f.log)) / f));


	//carrier, base freq with 2 modulators added
	carr = SinOsc.ar(f + m1 + m2);

	//syntactic sugar for panning
	Out.ar(out, carr ! 2 * ampl);
}).add;


//trippy using multiple carrier FM (I like better)
SynthDef(\trippy2, { | out = 0, loudness = 0.2, freq = 554.37, gate = 1 |
	//carrier amplitudes
	var amps = [2, 1, 1, 0.5].normalizeSum; //makes these ampls sum to 1

	//the modulator
	var mod = SinOsc.ar(800, mul: 20);

	//the 3 carriers
	var car1 = SinOsc.ar(freq + mod, mul: amps[0]) * LFNoise1.kr(10, 1);
	var car2 = SinOsc.ar(freq*2 + mod, mul: amps[1]) * LFNoise1.kr(10, 1);
	var car3 = SinOsc.ar(freq*3 + mod, mul: amps[2]) * LFNoise1.kr(10, 1);
	var car4 = SinOsc.ar(freq*4 + mod, mul: amps[3]) * LFNoise1.kr(10, 1);

	var env;

	s = car1 + car2 + car3 + car4;

	10.do {
		s = HPF.ar(s, 250);
	};

	env = EnvGen.kr(Env.adsr(0.2, 0.1, 1, 0.2, 1, \sin), doneAction: 2, gate: gate);

	//adsr args: attacktime, decaytime, sustainlvl (fraction of peak lvl), releasetime, peaklevel, curve
	Out.ar(out, s * loudness * env ! 2);
}).add;



)


Env.linen().plot;
Env.perc(0.01, 0.3, 1, \sin).plot;

//Env.new args: values (levels) array, time array, curve array (affects concave vs. convex vs. flat)
Env.new([0, 1, 0.8, 0], [0.2, 0.3, 1], [8, 1, -8]).plot;

//samples of the synths
Synth(\sd);
Synth(\kick);
Synth(\bd);
Synth(\kick2);
Synth(\hat);
Synth(\ringkick);
Synth(\marimba);
Synth(\marimba1);
Synth(\wood_block, [\wdv, 400, \swing, 2]);
Synth(\wood_verb, [\freq, 850]);
Synth(\maraca);
Synth(\fady);
Synth(\bass_stringy, [\freq, ~gflat1]);
Synth(\marimba2, [\ampl, 0.1]);
Synth(\trippy);
t = Synth(\trippy2, [\freq, 830.61, \ampl, 0.05]);
t.set(\gate, 0);

s = Server.local;
b = Buffer.read(s, "andrea.mp3".resolveRelative, 44100 * 20); //conv from rel to abs path
b.play;



//from rhythmic to audio rate; the Mouse is controlling the average number of clicks per second, they are not evenly spaced!
{Dust.ar(MouseX.kr(1,100))}.play

//from rhythmic to audio rate
{Impulse.ar(0.5)}.play

{ Saw.ar(Select.kr(Stepper.kr(Impulse.kr(MouseX.kr(1,40),0.1),0,0,7,1),[75,63,67,72,55,62,63,60].midicps),0.1) }.play


/*play {BBandStop.ar(HPF.ar(BPF.ar(PinkNoise.ar(), 25, 0.1) ! 2, 150), freq: 25, bw: 10)};

play {BPF.ar(PinkNoise.ar(), 25, 0.1) ! 2};
play {HPF.ar(BPF.ar(PinkNoise.ar(), 25, 0.1) ! 2, 150)};*/


~fady_aflat_freqs_v2 = [52, 81, 162, 247, 280, 332, 419, 496, 559, 666, 830, 52, 81, 162];
~fady_aflat_ampls_v2 = #[-66.5, -63.3, -65.3, -34.4, -31.7, -29.2, -33.5, -35, -37.8, -36.7, -35.5, -66.5, -63.3, -65.3];




Synth(\fady_add_aflat, [\freqs, ~fady_aflat_freqs_v2, \amplSpect, ~fady_aflat_ampls_v2]);
Synth(\fady_add_aflat, [\freqs, ~fady_aflat_freqs, \amplSpect, ~fady_aflat_ampls]);
Synth(\fady_add_aflat, [\freqs, ~fady_gflat_freqs, \amplSpect, ~fady_gflat_ampls]);




{FreeVerb.ar(SinOsc.ar(200) * Env.perc(0.05, 0.15, 1, \sine).kr(), 0.5, 0.6) * Env.linen(sustainTime: 0.5, releaseTime: 0.15).kr(2) ! 2}.play;


//PLAY THE COMPOSITION -- ANDREA BY BAD BUNNY, MODELED BY NOAH S WEINER
(
~bpm = 103; // Andrea runs at 103 bpm
~tc = TempoClock(~bpm / 60); // make a new tempoclock at tempo 103 bpm, but need to get beats per second


//partials and stuff for additive synthesis
~fady_e_freqs = [70, 128, 183, 220, 276, 329, 370, 439, 556, 660, 832, 989, 1119, 1660];
~fady_e_ampls = [-66.9, -61, -37.4, -28, -29.8, -25.9, -37.9, -36.5, -40.8, -35.5, -62, -61.4, -62.5, -71.1];


~fady_gflat_freqs = [63, 138, 210, 247, 312, 373, 424, 497, 627, 749, 985, 1109, 1234, 1484];
~fady_gflat_ampls = [-66.2, -64.8, -35.6, -30.2, -31.1, -26.9, -41.7, -37.5, -33.4, -36.9, -61.5, -62.4, -58.4, -63.6];

~fady_aflat_freqs = [53, 82, 106, 280, 334, 420, 497, 563, 672, 845, 1005, 1262, 1491, 1670];
~fady_aflat_ampls = [-64.1, -68.8, -28.5, -30.7, -32.6, -34.7, -38.8, -37.1, -37.5, -75.2, -76.9, -74.3, -72.4];

//other info
~bflat0 = 29.14;
~d0 = 18.35;
~eflat0 = 19.45;
~e0 = 20.60;
~gflat0 = 23.12;
~dflat1 = 34.65;
~gflat1 = 46.25;
~aflat1 = 51.91;
~dflat2 = 69.30;
~dflat5 = ~dflat2 * 8;
~aflat5 = ~aflat1 * 16;
~gflat5 = ~gflat1 * 16;
~e5 = ~e0 * 32;




//background synth note seq: 311.13 (Eflat4), 329.63 (E4), 415.30 (Aflat4), 311.13, 329.63, 277.18 (Dflat4),... repeats
~baying = { | note1=0.35, rest1=0.4, note2=0.35, rest2=0.4, note3=0.35, rest3=0.2 |
	var durs = [note1, rest1, note2, rest2, note3, rest3, 0.3, 0.4, 0.3, 0.4, 0.01];

	"sum for baying seq:".post;
	sum(durs).postln;

	Pbind(\instrument, \sin, \freq, Pseq([311.13, Rest(), 329.63, Rest(), 415.30, Rest(), 311.13, Rest(), 329.63, Rest(), 277.18], 1), \ampl, 0.1, \dur, Pseq([note1, rest1, note2, rest2, note3, rest3, 0.3, 0.4, 0.3, 0.4, 0.01], 1));
};

//bass note seq
~bass = { | note1=69.30, note2=29.14, note3=51.91 |
	var durs = [0.1, 0.6, 0.1, 2.2, 0.1, 0.4, 0.1, 0.4, 0.1, 0.7, 0.1, 0.7, 0.1, 2.3];

	"sum for bass seq:".post;
	sum(durs).postln;

	Pbind(\instrument, \bass_stringy, \freq, Pseq([note1, Rest(), note1, Rest(), note2, Rest(), note3, Rest(), note1, Rest(), note1, Rest(), note1, Rest()], 1), \ampl, 0.2, \dur, Pseq(durs, 1));
};


//trippy note seq: dflat - aflat - gflat - e - gflat - dflat
~trippy = { | note1, note2, note3, note4, note5, note6 |
	t = [0.5, 1.5, 0.5, 1, 1, 2];
	t = t + 0.5;
	l = 0.25;

	a = Pbind(\instrument, \trippy2, \freq, Pseq([note1], 1), \loudness, l, \dur, Pseq([t[0]], 1));
	b = Pbind(\instrument, \trippy2, \freq, Pseq([note2], 1), \loudness, l, \dur, Pseq([t[1]], 1));
	c = Pbind(\instrument, \trippy2, \freq, Pseq([note3], 1), \loudness, l, \dur, Pseq([t[2]], 1));
	d = Pbind(\instrument, \trippy2, \freq, Pseq([note4], 1), \loudness, l, \dur, Pseq([t[3]], 1));
	e = Pbind(\instrument, \trippy2, \freq, Pseq([note5], 1), \loudness, l, \dur, Pseq([t[4]], 1));
	f = Pbind(\instrument, \trippy2, \freq, Pseq([note6], 1), \loudness, l, \dur, Pseq([t[5]], 1));

	//want some overlap
	Ptpar([0, a, 0.5, b, 2, c, 2.5, d, 3.5, e, 4.5, f], 1);
};


//kick
k = Pbind(\instrument, \kick, \ampl, 0.3, \freq, Pseq([75], 1));

//snare
s = Pbind(\instrument, \sd, \ampl, 0.3, \freq, Pseq([250], 1));

//wood block
w = Pbind(\instrument, \wood_block, \ampl, 0.5, \freq, Pseq([850], 1));

//fady synths
a = Pbind(\instrument, \fady, \freqs, [~fady_aflat_freqs], \amplSpect, [~fady_aflat_ampls], \loudness, 0.1, \dur, Pseq([9.5], 1)); //this one is aflat
e = Pbind(\instrument, \fady, \freqs, [~fady_e_freqs], \amplSpect, [~fady_e_ampls], \loudness, 0.1, \dur, Pseq([9.5], 1)); //this one is e
g = Pbind(\instrument, \fady, \freqs, [~fady_gflat_freqs], \amplSpect, [~fady_gflat_ampls], \loudness, 0.1, \dur, Pseq([9.5], 1)); //this one is gflat


//use Pattern class
~pat1 = Ptpar([0, ~baying.value(note1: 0.5, rest1: 0.6, note2: 0.35, rest2: 0.1), 0, k, 0.75, s, 1.5, s, 1, k, 2, k, 2.5, s, 3, k, 3.5, w, 3.75, w]);
~pat2 = Ptpar([0, ~baying.value(), 0, k, 0.75, s, 1.5, s, 1, k, 2, k, 2.5, s, 3, k, 3.5, w, 3.75, w]);

//fady synth pattern repeat throughout song
~fady_pat = Ptpar([0, a, 8, e, 16, g, 24, e, 28, a]);

//baying sequence rep throughout song: Aflat4 (415.30), E4 (329.63), Gflat4 (369.99)
~baying_seq = Ptpar([0, ~pat1, 4, ~pat2]);

//bass seq
~bass_seq = Pseq([~bass.value(), ~bass.value(~gflat1, ~dflat0, ~e0), ~bass.value(~aflat1, ~eflat0, ~gflat0), ~bass.value(~gflat1, ~bflat0, ~e0)], 1);

//trippy seq
~trippy_seq_1 = ~trippy.value(~dflat5, ~aflat5, ~gflat5, ~e5, ~gflat5, ~dflat5);
//~trippy_seq_2

~tc.sched(64, {~baying_seq.play(~tc); 8});
~tc.sched(0, {~fady_pat.play(~tc); 32});
~tc.sched(32, {~bass_seq.play(~tc); 32});
~tc.sched(35.5, {~trippy_seq_1.play(~tc);});

//g.play;
/*~bass_seq.play(~tc);
~met = Pbind(\instrument, \world, \ampl, 0.1);
//~met.play(~tc);
~tc.sched(3.5, {~trippy_seq_1.play(~tc);});*/
)

p = Pmono(\trippy2, \dur, Pseq([1, 1], 1), \freq, Pseq([100, 200], 1)).play


~s = Server.local;
~b = Buffer.read(s, "andrea.mp3".resolveRelative, 44100 * 18); //conv from rel to abs path
~b.play;

(
SynthDef("fm1", { arg bus = 0, freq = 440, carPartial = 1, modPartial = 1, index = 3, mul = 0.05;

    // index values usually are between 0 and 24
    // carPartial :: modPartial => car/mod ratio

    var mod;
    var car;

    mod = SinOsc.ar(
        freq * modPartial,
        0,
        freq * index * LFNoise1.kr(5.reciprocal).abs
    );

    car = SinOsc.ar(
        (freq * carPartial) + mod,
        0,
        mul
    );

    Out.ar(
        bus,
        car
    )
}).add;
)

(
Synth("fm1", [\bus, 0, \freq, 440, \carPartial, 1, \modPartial, 2.4]);
Synth("fm1", [\bus, 1, \freq, 442, \carPartial, 1, \modPartial, 2.401]);
)

(
s.queryAllNodes;
)



(
SynthDef(\trig_demo, { |out, freq = 440, gate = 1, t_trig = 1|    // t_trig here
    var    env = Decay2.kr(t_trig, 0.01, 0.1),
        sig = SinOsc.ar(freq, 0, env)
            * Linen.kr(gate, 0.01, 0.1, 0.1, doneAction: Done.freeSelf);
    Out.ar(out, sig ! 2)
}).add;
)

(
p = Pmono(\trig_demo,
    \freq, Pexprand(200, 800, inf),
    \trig, 1,    // note that this is NOT t_trig -- just \trig
    \delta, 0.125
).play;
)


p.stop;