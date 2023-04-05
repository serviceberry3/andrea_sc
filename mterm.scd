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
	s = ampl * SinOsc.ar(freq) * EnvGen.kr(~env, doneAction: 2);
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
SynthDef(\wood_block, { arg wdv=30, freq=850, swing=1.5, ampl=0.5, out=0;
	var env, sig, main, trig6, wd;

	env = Env.perc(0.01, 0.01, 1, \sin);

	main = ((LFSaw.ar(1, pi, 1, 0).neg ** (swing)) + 1) / 2;

	wd = (Resonz.ar(main, freq, 0.04, wdv) + SinOsc.ar(800)) * EnvGen.kr(env, doneAction: 2);

	s = FreeVerb.ar(wd, 0.33, 0.9);

	Out.ar(out, LeakDC.ar(s ! 2) * ampl);
}).add;


SynthDef(\fady_fm, { | out = 0, ampl = 1, freq = 440, partials = #[324, 504, 666, 838], gate = 1 |
	//carrier amplitudes
	var amps = [1, 1, 1, 1].normalizeSum; //makes these ampls sum to 1

	//the modulator
	var mod = SinOsc.ar(freq, mul: 100);

	//the 3 carriers
	var car1 = SinOsc.ar(partials[0] + mod, mul: amps[0]) * LFNoise1.kr(10, 1);
	var car2 = SinOsc.ar(partials[1] + mod, mul: amps[1]) * LFNoise1.kr(10, 1);
	var car3 = SinOsc.ar(partials[2] + mod, mul: amps[2]) * LFNoise1.kr(10, 1);
	var car4 = SinOsc.ar(partials[3] + mod, mul: amps[3]) * LFNoise1.kr(10, 1);

	var env;


	s = LPF.ar(BBandStop.ar(HPF.ar((car1 + car2 + car3 + car4) + BPF.ar(PinkNoise.ar(), 25, 1) ! 2, 150), freq: 25, bw: 10), 700);

	e = EnvGen.kr(Env.adsr(0.8, 0.1, 1, 0.8, 1, \sin), doneAction: 2, gate: gate);

	//env = EnvGen.kr(Env.linen(0.8,

	//adsr args: attacktime, decaytime, sustainlvl (fraction of peak lvl), releasetime, peaklevel, curve
	Out.ar(out, s * ampl * e);
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

	//main UGen stuff
	//line env args: attacktime, sustaintime, releasetime, level (of sustain portion), curve
	b = Pan2.ar( //pan to position (user-passed arg)
		Mix( //mix down to single channel
			SinOsc.ar(freq: freqs + partialFreqNoises, mul: a + partialAmplNoises),
			pan));

	//to try to better mimic freqscope of original, I made some PinkNoise and filtered it until I saw the flat low-freq tail around -70 dB that's present on the original. I added this to the rest of signal
	//wrapped it in BandStop filter because the low-freq tail ampl was too big
	c = BBandStop.ar(HPF.ar(b + BPF.ar(PinkNoise.ar(), 25, 1) ! 2, 150), freq: 25, bw: 10);

	//hella high-order lowpass filter to really cut out a lot of the high-freq components (which is necessary based on freqscope of original)
	d = LPF.ar(LPF.ar(LPF.ar(LPF.ar(LPF.ar(LPF.ar(LPF.ar(LPF.ar(c, 800), 800), 800), 800), 800), 800), 800), 800);

	e = EnvGen.kr(Env.adsr(0.2, 0.1, 1, 0.8, 1, \sin), doneAction: 2, gate: gate);

	s = FreeVerb.ar(d, 0.33, 0.8);

	Out.ar(out, s * e * loudness);
}).add;





SynthDef(\maraca, { | out = 0, freq = 400 |
	var noise1, env1, env2, env3, env4;

	env1 = EnvGen.ar(Env.new([0, 1, 0, 1, 0, 1, 0, 1, 0], [0.001, 0.013, 0, 0.01, 0, 0.01, 0, 0.03], [0, -3, 0, -3, 0, -3, 0, -4]));

	env2 = EnvGen.ar(Env.new([0, 1, 0], [0.02, 0.3], [0, -4]), doneAction:2);
	env3 = EnvGen.ar(Env.new([0, 1, 0], [0.5, 0.5], [3, -3]), doneAction: 2);

	env4 = EnvGen.ar(Env.perc(0.03, 0.4, 1, -3), doneAction: 2);

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

)

Env.linen().plot;
Env.perc(0.01, 0.3, 1, \sin).plot;



//Env.new args: values (levels) array, time array, curve array (affects concave vs. convex vs. flat)
Env.new([0, 1, 0], [0.6, 0.6], [3, -3]).plot;

Synth(\sd);
Synth(\kick);
Synth(\bd);
Synth(\kick2);
Synth(\hat);
Synth(\ringkick);
Synth(\marimba);
Synth(\marimba1);
Synth(\wood_block);
Synth(\maraca);
Synth(\fady);
Synth(\fady_add_aflat);
Synth(\bass_stringy, [\freq, 30]);


/*play {BBandStop.ar(HPF.ar(BPF.ar(PinkNoise.ar(), 25, 0.1) ! 2, 150), freq: 25, bw: 10)};

play {BPF.ar(PinkNoise.ar(), 25, 0.1) ! 2};
play {HPF.ar(BPF.ar(PinkNoise.ar(), 25, 0.1) ! 2, 150)};*/


~fady_aflat_freqs_v2 = [52, 81, 162, 247, 280, 332, 419, 496, 559, 666, 830, 52, 81, 162];
~fady_aflat_ampls_v2 = #[-66.5, -63.3, -65.3, -34.4, -31.7, -29.2, -33.5, -35, -37.8, -36.7, -35.5, -66.5, -63.3, -65.3];




Synth(\fady_add_aflat, [\freqs, ~fady_aflat_freqs_v2, \amplSpect, ~fady_aflat_ampls_v2]);
Synth(\fady_add_aflat, [\freqs, ~fady_aflat_freqs, \amplSpect, ~fady_aflat_ampls]);
Synth(\fady_add_aflat, [\freqs, ~fady_gflat_freqs, \amplSpect, ~fady_gflat_ampls]);



s = Server.local;
b = Buffer.read(s, "andrea.mp3".resolveRelative);
b.play;



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
~aflat1 = 51.91;
~dflat1 = 69.30;
~dflat0 = 30;



//background synth note seq: 311.13 (Eflat4), 329.63 (E4), 415.30 (Aflat4), 311.13, 329.63, 277.18 (Dflat4),... repeats
~baying = { | note1=0.35, rest1=0.4, note2=0.35, rest2=0.4, note3=0.35, rest3=0.2 |
	Pbind(\instrument, \sin, \freq, Pseq([311.13, Rest(), 329.63, Rest(), 415.30, Rest(), 311.13, Rest(), 329.63, Rest(), 277.18], 1), \ampl, 0.1, \dur, Pseq([note1, rest1, note2, rest2, note3, rest3, 0.3, 0.4, 0.3, 0.4, 0.01], 1));
};


//kick
k = Pbind(\instrument, \kick, \ampl, 0.3, \freq, Pseq([75], 1));

//snare
s = Pbind(\instrument, \sd, \ampl, 0.3, \freq, Pseq([250], 1));

//wood block
w = Pbind(\instrument, \wood_block, \ampl, 0.5, \freq, Pseq([850], 1));

//fady synths
a = Pbind(\instrument, \fady, \freqs, [~fady_aflat_freqs], \amplSpect, [~fady_aflat_ampls], \loudness, 0.1, \gate, Pseq([1, 0], 1), \dur, Pseq([9.5, 0.001], 1)); //this one is aflat
e = Pbind(\instrument, \fady, \freqs, [~fady_e_freqs], \amplSpect, [~fady_e_ampls], \loudness, 0.1, \gate, Pseq([1, 0], 1), \dur, Pseq([9.5, 0.001], 1)); //this one is e
g = Pbind(\instrument, \fady, \freqs, [~fady_gflat_freqs], \amplSpect, [~fady_gflat_ampls], \loudness, 0.1, \gate, Pseq([1, 0], 1), \dur, Pseq([9.5, 0.001], 1)); //this one is gflat


//use Pattern class
~pat1 = Ptpar([0, ~baying.value(note1: 0.5, rest1: 0.6, note2: 0.35, rest2: 0.1), 0, k, 0.75, s, 1.5, s, 1, k, 2, k, 2.5, s, 3, k, 3.5, w, 3.75, w]);
~pat2 = Ptpar([0, ~baying.value(), 0, k, 0.75, s, 1.5, s, 1, k, 2, k, 2.5, s, 3, k, 3.5, w, 3.75, w]);

//fady synth pattern repeat throughout song
~fady_pat = Ptpar([0, a, 8, e, 16, g, 24, e]);

//baying sequence rep throughout song: Aflat4 (415.30), E4 (329.63), Gflat4 (369.99)
~baying_seq = Ptpar([0, ~pat1, 4, ~pat2]);

//bass seq
~bass_seq = Pbind(\instrument, \bass_stringy, \freq, Pseq([~dflat1, Rest(), ~dflat1, Rest(), ~dflat0, Rest(), ~aflat1, Rest(), ~dflat1, Rest(), ~dflat1, Rest(), ~dflat1], 1), \ampl, 0.5, \dur, Pseq([0.1, 0.6, 0.1, 2, 0.1, 0.4, 0.1, 0.4, 0.1, 0.6, 0.1, 0.6, 0.1], 1));

~tc.sched(64, {~baying_seq.play(~tc); 8});
~tc.sched(0, {~fady_pat.play(~tc); 32});
~tc.sched(32, {~bass_seq.play(~tc); });

//~bass_seq.play(~tc);/
)





{//LPF.ar(PinkNoise.ar(), 121) ! 2 }.play

(
SynthDef(\fady, {
	arg
	freq = 415.30, out = 0, amp = 0.4, pan = 0, rq = 0.02, shelffreq = 220, rs = 0.81, shelfamp = 2;


	var local, in;

	//Mix.fill args: sz of array to create, array filling fxn
	in = Mix.fill(1, {
		Pan2.ar(Decay2.ar(SinOsc.ar(freq), 0.1, 0.5, 0.1) * FSinOsc.ar(freq).cubed.max(0), 0)
	});


	4.do { local = AllpassN.ar(in, 0.03, {Rand(0.005, 0.02)}.dup, 1) };

	//LocalIn args: num chans
	local = LocalIn.ar(2) * 0.98;
	local = OnePole.ar(local, 0.5);

	local = AllpassN.ar(local, 0.05, {Rand(0.01,0.05)}.dup, 2);

	local = DelayN.ar(local, 0.3, [0.19,0.26]);
	local = AllpassN.ar(local, 0.05, {Rand(0.03,0.15)}.dup, 2);

	local = LeakDC.ar(local);
	local = local + in; // sums the input

	LocalOut.ar(local);

	Out.ar(0, local);
}).add;

Synth(\fady);
)



(
{
	var local, in;

	//Mix.fill args: sz of array to create, array filling fxn
	in = Mix.fill(1, {
		Pan2.ar(Decay2.ar(SinOsc.ar(600), 0.1, 0.5, 0.1) * FSinOsc.ar(600).cubed.max(0), 0)
	});


	4.do { local = AllpassN.ar(in, 0.03, {Rand(0.005, 0.02)}.dup, 1) };

	local = LocalIn.ar(2) * 0.98;
	local = OnePole.ar(local, 0.5);

	local = Rotate2.ar(local[0], local[1], 0.23);
	local = AllpassN.ar(local, 0.05, {Rand(0.01,0.05)}.dup, 2);

	local = DelayN.ar(local, 0.3, [0.19,0.26]);
	local = AllpassN.ar(local, 0.05, {Rand(0.03,0.15)}.dup, 2);

	local = LeakDC.ar(local);
	local = local + in; // sums the input

	LocalOut.ar(local);

	local + in;
}.play;
)




(
var stream, dur;
dur = 0.4;

stream = Routine.new({
        loop({
            310.yield;
		    330.yield;
		    420.yield;
		    310.yield;
		    330.yield;
		    280.yield;
        });
    });

    Routine({
        loop({
		    Synth(\kick, []);
            Synth(\sin, [ \freq, stream.next ]);
            dur.wait; // synonym for yield, used by .play to schedule next occurence
        })
    }).play
)






