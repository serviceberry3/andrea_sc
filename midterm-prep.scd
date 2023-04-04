// Where am examplz?

Platform.userAppSupportDir // maybe here? maybe in the Application/SuperCollider directory

// FIGURING OUT DATA

// What note is that?? In midi notes? 53 = F3 - 12 = 41

play { SinOsc.ar(45.midicps) }


( // working towards electric piano sound from TeeVee

x =  {|freq = 200, amp=0.5, rel = 2|

	var c1 = 1; // freq for carrier 1
	var c2 = 2; // freq for carrier 2: change from 2 to 1.01...
	var m1 = 4; // freq for mod 1
	var m1i = 250; // index for mod 1
	var m2 = 10; // freq for mod 2
	var m2i = 565; // index for mod 2


	var mod1env = Env.perc(releaseTime: rel).kr();
	var mod2env = Env.perc(releaseTime: rel/10).kr();

	var carenv = Env.perc(releaseTime: rel * 1.3).kr(2);

	var mod1 = SinOsc.ar(freq * m1, mul: m1i * mod1env);
	var mod2 = SinOsc.ar(freq * m2, mul: m2i * mod2env);

	var car1 = SinOsc.ar(freq * c1 + mod1, mul: amp * carenv);
	var car2 = SinOsc.ar(freq * c2 + mod2, mul: amp * carenv);

	var pan = Pan2.ar(car1);

	Out.ar(0, pan * amp);

}

)

x.play(args: [\freq, 400])


//  FIGURING OUT SOUNDS

( // working towards electric piano sound from TeeVee

x =  {|freq = 200, amp=0.5, rel = 2|

	var c1 = 1; // freq for carrier 1
	var c2 = 1.01; // freq for carrier 2: change from 2 to 1.01...
	var m1 = 1; // freq for mod 1
	var m1i = 20; // index for mod 1
	var m2 = 12; // freq for mod 2
	var m2i = 400; // index for mod 2


	var mod1env = Env.perc(releaseTime: rel).kr();
	var mod2env = Env.perc(releaseTime: rel/10).kr();

	var carenv = Env.perc(releaseTime: rel * 1.3).kr(2);

	var mod1 = SinOsc.ar(freq * m1, mul: m1i * mod1env);
	var mod2 = SinOsc.ar(freq * m2, mul: m2i * mod2env);

	var car1 = SinOsc.ar(freq * c1 + mod1, mul: amp * carenv);
	var car2 = SinOsc.ar(freq * c2 + mod2, mul: amp * carenv);

	var pan = Pan2.ar(car1 + car2);

	Out.ar(0, pan * amp);

}

)

x.play(args: [\freq, rrand(200, 450).round(50)]);




// That pad sound... a the start
// WHERE DO WE REALLY START, SCOTT??? S

57.midicps
(
play {| freq = 220, amp = 0.135, pos = 0 |

	var env = Env.linen(0.01, 0.3, 0.05).kr(); // no dunackshun
	//var snd = Saw.ar(freq, mul: env) * amp;
	var sin1 = SinOsc.ar(freq, mul: env * amp);
	var sin2 = SinOsc.ar(freq * 2, mul: env * amp * 0.4);
	var sin3 = SinOsc.ar(freq * 4, mul:env * amp * 0.2);
	var pan = Pan2.ar(sin1 + sin2 + sin3, pos);
	var verb = FreeVerb.ar(pan);
	// var filt = LPF.ar(snd, freq * 1);

	DetectSilence.ar( verb, doneAction: 2);
	//filt
	Out.ar(0, verb);

}

)

// another way to add FX with time delay stuff is to to Pfx




(
SynthDef(\echo, { arg out=0, maxdtime=0.2, dtime=0.2, decay=2, gate=1;
    var env, in;
    env = Linen.kr(gate, 0.05, 1, 0.1, 2);
    in = In.ar(out, 2);
    XOut.ar(out, env, CombL.ar(in * env, maxdtime, dtime, decay, 1, in));
}, [\ir, \ir, 0.1, 0.1, 0]).add;

SynthDef(\distort, { arg out=0, pregain=40, amp=0.2, gate=1;
    var env;
    env = Linen.kr(gate, 0.05, 1, 0.1, 2);
    XOut.ar(out, env, (In.ar(out, 2) * pregain).distort * amp);
}, [\ir, 0.1, 0.1, 0]).add;

SynthDef(\wah, { arg out=0, gate=1;
    var env, in;
    env = Linen.kr(gate, 0.05, 1, 0.4, 2);
    in = In.ar(out, 2);
    XOut.ar(out, env, RLPF.ar(in, LinExp.kr(LFNoise1.kr(0.3), -1, 1, 200, 8000), 0.1).softclip * 0.8);
}, [\ir, 0]).add;
)


​
(
var p, q, r, o;
p = Pbind(\degree, Prand((0..7),12), \dur, 0.3, \legato, 0.2);
​
q = Pfx(p, \echo, \dtime, 0.2, \decay, 3);
​
r = Pfx(q, \distort, \pregain, 20, \amp, 0.25);
​
o = Pfx(r, \wah);
​
Pseq([p, q], 2).play;
)
