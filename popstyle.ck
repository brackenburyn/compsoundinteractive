//popstyle.ck
//Noah Brackenbury, MUSC 208, Spring 2016
 
//sound chain
SndBuf lyrics => dac;
SndBuf beahit => dac;
SndBuf boos => dac;
SndBuf pap1 => dac;
SndBuf pap2 => dac;
SndBuf keys => NRev keysrev => dac;
SndBuf love => JCRev loverev => Echo loveecho => dac;
SndBuf real => NRev realrev => Echo realecho => dac;
SndBuf yuh => dac;
Moog moog => dac;
SinOsc build => dac;

//tempo adjustment
190::ms => dur ei;

//imported boombox.ck sound chain and adjustments
Wurley arp => NRev arprev => dac;

//note specification
61.735 => float B1;
65.408 => float C2;
69.296 => float Db2;
73.415 => float D2;
82.407 => float E2;
87.307 => float F2;
92.499 => float Fs2;
98 => float G2;
103.83 => float Af2;
110 => float A2;


//load audio samples
me.dir() + "beahit.wav" => beahit.read;
me.dir() + "boos.aiff" => boos.read;
me.dir() + "pap1.aiff" => pap1.read;
me.dir() + "pap2.aiff" => pap2.read;
me.dir() + "keys.wav" => keys.read;
me.dir() + "love.aiff" => love.read;
me.dir() + "reallife.wav" => real.read;
me.dir() + "yuh.wav" => yuh.read;

//ready samples for eventual play
beahit.samples() => beahit.pos;
boos.samples() => boos.pos;
pap1.samples() => pap1.pos;
pap2.samples() => pap2.pos;
keys.samples() => keys.pos;
love.samples() => love.pos;
real.samples() => real.pos;
yuh.samples() => yuh.pos;


//gain adjustment
.3 => boos.gain;
.3 => yuh.gain;
.15 => real.gain;
.15 => love.gain;
1.1 => pap1.gain => pap2.gain;
.6 => keys.gain;
0 => build.gain;
.3 => float moogvel;
.7 => beahit.gain;

//rate adjustment
1.8 => keys.rate;
.8 => pap1.rate => pap2.rate;

//reverb adjustment
.2 => keysrev.mix;
.2 => arprev.mix;

//echo adjustment
ei * 4 => loveecho.delay;
ei => realecho.delay;


//opening melody function
fun void boombox(float arpvel){
    A2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    A2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Db2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    A2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Db2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    
    B1*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    B1*4 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Af2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    B1*4 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Af2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Af2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    
    D2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    A2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Fs2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    D2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    A2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Fs2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    D2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Fs2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    
    A2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    A2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Db2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    A2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    Db2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
    E2*2 => arp.freq;
    arpvel => arp.noteOn;
    ei => now;
}


//bassline function
fun void bassline2(){
    A2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 8 => now;
    B1*2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 8 => now;
    D2*2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 8 => now;
    A2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 8 => now;
    E2*2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 8 => now;
    Db2*2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 8 => now;
    A2 => moog.freq;
    moogvel => moog.noteOn;
    ei * 14 => now;
    0 => yuh.pos;
    ei * 2 => now;
}

//percussion function
fun void beat(int style){
    for( 0 => int index; index < 4; index ++){
        0 => boos.pos;
        ei * 2 => now;
        if(style == 1 && index % 2 == 0){0 => love.pos;}
        if(style == 1 && index % 2 == 1){0 => real.pos;}
        ei * 1 => now;
        0 => boos.pos;
        ei * 1 => now;
        0 => pap1.pos;
        0 => pap2.pos;
        ei * 2 => now;
        0 => boos.pos;
        ei * 2 => now;
        ei * 2 => now;
        0 => keys.pos;
        ei * 2 => now;
        0 => pap1.pos;
        0 => pap2.pos;
        ei * 2 => now;
        0 => yuh.pos;
        ei * 2 => now;
    }
}

//measures 1-8
spork ~ bassline2();
spork ~ boombox(.4);
ei * 32 => now;
spork ~ boombox(.5);
ei * 16 => now;
0 => float buildgain;
for( 0 => int index; index < 64; index ++){
    buildgain => build.gain;
    (index*5) + 100 => build.freq;
    .005 +=> buildgain;
    ei / 4 => now;
}
0 => build.gain;

//measures 9-16
spork ~ bassline2();
spork ~ beat(1);
ei * 64 => now;


/*to use speech synthesizer, make sure tts.py, CMU_parser.py, 
cmudict.dat, and the phones folder are in the same directory 
as popstyle.ck.  Open terminal, navigate to this directory, and type 
python3 tts.py "your lyric here"
to create message.wav.  Write lyrics in as the song progresses, and
end the song by typing "" as lyrics. */


//measures 17-end
//loads audio file from speech synthesizer and plays it
me.dir() + "message.wav" => lyrics.read;

0 => int lyriclength;

while(lyrics.samples() > 0){
    me.dir() + "message.wav" => lyrics.read;
    if( lyriclength == lyrics.samples()){break;}
    lyrics.samples() => lyriclength;
    spork ~ bassline2();
    spork ~ beat(0);
    ei * 32 => now;
    me.dir() + "message.wav" => lyrics.read;
    if( lyriclength != lyrics.samples()){0 => lyrics.pos;}
    else{lyrics.samples() => lyrics.pos;}
    ei * 32 => now;
}
//end
lyrics.samples() => lyrics.pos;
0 => beahit.pos;
4::second => now;