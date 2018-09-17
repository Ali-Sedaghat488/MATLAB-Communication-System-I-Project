%     Ali Sedaghat
%     ID = 9432488
%     Communication System I Project
%     Dr. Farhang
%%  WITHOUT NOISE

%   First Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fswoa = 300; % First Sampling rate
Fcwoa = 40; % First Carrier Frequency
twoa = [0:2*Fswoa+1]/Fswoa;
X = sin(2*pi*twoa);
[numwoa,denwoa] = butter(10,Fcwoa*2/Fswoa); % Lowpass filter
YAMMODwoa = ammod(X,Fcwoa,Fswoa); % Modulated Signal
YAMDEMODwoa = amdemod(YAMMODwoa,Fcwoa,Fswoa,0,0,numwoa,denwoa); % Demodulated Signal
YAMMODwoa = fft(YAMMODwoa); % Discrete Fourier Transform of Modulated Signal
YAMMODwoa = abs(YAMMODwoa(1:length(YAMMODwoa)/2+1));
frqYAMMODwoa = [0:length(YAMMODwoa)-1]*Fswoa/length(YAMMODwoa)/2; 
figure;
plot(frqYAMMODwoa,YAMMODwoa);
title('First Spectrum of the AM Modulated Signal');
YAMDEMODwoa = fft(YAMDEMODwoa); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwoa = abs(YAMDEMODwoa(1:length(YAMDEMODwoa)/2+1));
frqYAMDEMODwoa = [0:length(YAMDEMODwoa)-1]*Fswoa/length(YAMDEMODwoa)/2;
figure;
plot(frqYAMDEMODwoa,YAMDEMODwoa);
title('First Spectrum of the AM Demodulated Signal');

%   Second Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
Fswob = 200; % Second Sampling rate
Fcwob = 40; % First Carrier Frequency
twob = [0:2*Fswob+1]/Fswob;
X = sin(2*pi*twob);
[numwob,denwob] = butter(10,Fcwob*2/Fswob); % Lowpass filter
YAMMODwob = ammod(X,Fcwob,Fswob); % Modulated Signal
YAMDEMODwob = amdemod(YAMMODwob,Fcwob,Fswob,0,0,numwob,denwob); % Demodulated Signal
YAMMODwob = fft(YAMMODwob); % Discrete Fourier Transform
YAMMODwob = abs(YAMMODwob(1:length(YAMMODwob)/2+1));
frqYAMMODwob = [0:length(YAMMODwob)-1]*Fswob/length(YAMMODwob)/2; 
figure;
plot(frqYAMMODwob,YAMMODwob);
title('Second Spectrum of the AM Modulated Signal(Changing Sampling rate)');
YAMDEMODwob = fft(YAMDEMODwob); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwob = abs(YAMDEMODwob(1:length(YAMDEMODwob)/2+1));
frqYAMDEMODwob = [0:length(YAMDEMODwob)-1]*Fswob/length(YAMDEMODwob)/2;
figure;
plot(frqYAMDEMODwob,YAMDEMODwob);
title('Second Spectrum of the AM Demodulated Signal(Changing Sampling rate)');


%   Third Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
Fswoc = 300; % First Sampling rate
Fcwoc = 20; % Second Carrier Frequency
twoc = [0:2*Fswoc+1]/Fswoc;
X = sin(2*pi*twoc);
[numwoc,denwoc] = butter(10,Fcwoc*2/Fswoc); % Lowpass filter
YAMMODwoc = ammod(X,Fcwoc,Fswoc); % Modulated Signal
YAMDEMODwoc = amdemod(YAMMODwoc,Fcwoc,Fswoc,0,0,numwoc,denwoc); % Demodulated Signal
YAMMODwoc = fft(YAMMODwoc); % Discrete Fourier Transform
YAMMODwoc = abs(YAMMODwoc(1:length(YAMMODwoc)/2+1));
frqYAMMODwoc = [0:length(YAMMODwoc)-1]*Fswoc/length(YAMMODwoc)/2; 
figure;
plot(frqYAMMODwoc,YAMMODwoc);
title('Third Spectrum of the AM Modulated Signal(Changing Carrier Frequency)');
YAMDEMODwoc = fft(YAMDEMODwoc); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwoc = abs(YAMDEMODwoc(1:length(YAMDEMODwoc)/2+1));
frqYAMDEMODwoc = [0:length(YAMDEMODwoc)-1]*Fswoc/length(YAMDEMODwoc)/2;
figure;
plot(frqYAMDEMODwoc,YAMDEMODwoc);
title('Third Spectrum of the AM Demodulated Signal(Changing Carrier Frequency)');

%   4th Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
Fswod = 200; % Second Sampling rate
Fcwod = 20; % Second Carrier Frequency
twod = [0:2*Fswod+1]'/Fswod;
X = sin(2*pi*twod);
[numwod,denwod] = butter(10,Fcwod*2/Fswod); % Lowpass filter
YAMMODwod = ammod(X,Fcwod,Fswod); % Modulated Signal
YAMDEMODwod = amdemod(YAMMODwod,Fcwod,Fswod,0,0,numwod,denwod); % Demodulated Signal
YAMMODwod = fft(YAMMODwod); % Discrete Fourier Transform
YAMMODwod = abs(YAMMODwod(1:length(YAMMODwod)/2+1));
frqYAMMODwod = [0:length(YAMMODwod)-1]*Fswod/length(YAMMODwod)/2; 
figure;
plot(frqYAMMODwod,YAMMODwod);
title('4th Spectrum of the AM Modulated Signal(Changing Sampling rate and Carrier Frequency)');
YAMDEMODwod = fft(YAMDEMODwod); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwod = abs(YAMDEMODwod(1:length(YAMDEMODwod)/2+1));
frqYAMDEMODwod = [0:length(YAMDEMODwod)-1]*Fswod/length(YAMDEMODwod)/2;
figure;
plot(frqYAMDEMODwod,YAMDEMODwod);
title('4th Spectrum of the AM Demodulated Signal(Changing Sampling rate and Carrier Frequency)');

%%  WITH NOISE
%   First Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fswa = 300; % First Sampling rate
Fcwa = 40; % First Carrier Frequency
twa = [0:2*Fswa+1]/Fswa;
n=602;
m=1;
ra = randn(m,n,'double');
X = sin(2*pi*twa);
X = X+ra;
[numwa,denwa] = butter(10,Fcwa*2/Fswa); % Lowpass filter
YAMMODwa = ammod(X,Fcwa,Fswa); % Modulated Signal
YAMDEMODwa = amdemod(YAMMODwa,Fcwa,Fswa,0,0,numwa,denwa); % Demodulated Signal
YAMMODwa = fft(YAMMODwa); % Discrete Fourier Transform
YAMMODwa = abs(YAMMODwa(1:length(YAMMODwa)/2+1));
frqYAMMODwa = [0:length(YAMMODwa)-1]*Fswa/length(YAMMODwa)/2; 
figure;
plot(frqYAMMODwa,YAMMODwa);
title('First Spectrum of the AM Modulated Signal With Noise');
YAMDEMODwa = fft(YAMDEMODwa); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwa = abs(YAMDEMODwa(1:length(YAMDEMODwa)/2+1));
frqYAMDEMODwa = [0:length(YAMDEMODwa)-1]*Fswa/length(YAMDEMODwa)/2;
figure;
plot(frqYAMDEMODwa,YAMDEMODwa);
title('First Spectrum of the AM Demodulated Signal With Noise');

%   Second Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
Fswb = 200; % Second Sampling rate
Fcwb = 40; % First Carrier Frequency
twb = [0:2*Fswb+1]/Fswb;
n=402;
m=1;
rb = randn(m,n,'double');
X = sin(2*pi*twb);
X = X+rb;
[numwb,denwb] = butter(10,Fcwb*2/Fswb); % Lowpass filter
YAMMODwb = ammod(X,Fcwb,Fswb); % Modulated Signal
YAMDEMODwb = amdemod(YAMMODwb,Fcwb,Fswb,0,0,numwb,denwb); % Demodulated Signal
YAMMODwb = fft(YAMMODwb); % Discrete Fourier Transform
YAMMODwb = abs(YAMMODwb(1:length(YAMMODwb)/2+1));
frqYAMMODwb = [0:length(YAMMODwb)-1]*Fswb/length(YAMMODwb)/2; 
figure;
plot(frqYAMMODwb,YAMMODwb);
title('Second Spectrum of the AM Modulated Signal With Noise(Changing Sampling rate)');
YAMDEMODwb = fft(YAMDEMODwb); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwb = abs(YAMDEMODwb(1:length(YAMDEMODwb)/2+1));
frqYAMDEMODwb = [0:length(YAMDEMODwb)-1]*Fswb/length(YAMDEMODwb)/2;
figure;
plot(frqYAMDEMODwb,YAMDEMODwb);
title('Second Spectrum of the AM Demodulated Signal With Noise(Changing Sampling rate)');


%   Third Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
Fswc = 300; % First Sampling rate
Fcwc = 20; % Second Carrier Frequency
twc = [0:2*Fswc+1]/Fswc;
n=602;
m=1;
rc = randn(m,n,'double');
X = sin(2*pi*twc);
X = X+rc;
[numwc,denwc] = butter(10,Fcwc*2/Fswc); % Lowpass filter
YAMMODwc = ammod(X,Fcwc,Fswc); % Modulated Signal
YAMDEMODwc = amdemod(YAMMODwc,Fcwc,Fswc,0,0,numwc,denwc); % Demodulated Signal
YAMMODwc = fft(YAMMODwc); % Discrete Fourier Transform
YAMMODwc = abs(YAMMODwc(1:length(YAMMODwc)/2+1));
frqYAMMODwc = [0:length(YAMMODwc)-1]*Fswc/length(YAMMODwc)/2; 
figure;
plot(frqYAMMODwc,YAMMODwc);
title('Third Spectrum of the AM Modulated Signal With Noise(Changing Carrier Frequency)');
YAMDEMODwc = fft(YAMDEMODwc); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwc = abs(YAMDEMODwc(1:length(YAMDEMODwc)/2+1));
frqYAMDEMODwc = [0:length(YAMDEMODwc)-1]*Fswc/length(YAMDEMODwc)/2;
figure;
plot(frqYAMDEMODwc,YAMDEMODwc);
title('Third Spectrum of the AM Demodulated Signal With Noise(Changing Carrier Frequency)');


%   4th Amplitude Modulation
%   Sinousoidal waveform is the initial waveform
Fswd = 200; % Second Sampling rate
Fcwd = 20; % Second Carrier Frequency
twd = [0:2*Fswd+1]'/Fswd;
m=402;
n=1;
rd = randn(m,n,'double');
X = sin(2*pi*twd);
X = X+rd;
[numwd,denwd] = butter(10,Fcwd*2/Fswd); % Lowpass filter
YAMMODwd = ammod(X,Fcwd,Fswd); % Modulated Signal
YAMDEMODwd = amdemod(YAMMODwd,Fcwd,Fswd,0,0,numwd,denwd); % Demodulated Signal
YAMMODwd = fft(YAMMODwd); % Discrete Fourier Transform
YAMMODwd = abs(YAMMODwd(1:length(YAMMODwd)/2+1));
frqYAMMODwd = [0:length(YAMMODwd)-1]*Fswd/length(YAMMODwd)/2; 
figure;
plot(frqYAMMODwd,YAMMODwd);
title('4th Spectrum of the AM Modulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');
YAMDEMODwd = fft(YAMDEMODwd); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODwd = abs(YAMDEMODwd(1:length(YAMDEMODwd)/2+1));
frqYAMDEMODwd = [0:length(YAMDEMODwd)-1]*Fswd/length(YAMDEMODwd)/2;
figure;
plot(frqYAMDEMODwd,YAMDEMODwd);
title('4th Spectrum of the AM Demodulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');


%% Voice Recorded With AM MOD and AM DEMOD
% Recording voice for 5 seconds
clear all
clc
recObj = audiorecorder;
disp('start speaking')
recordblocking(recObj,5); % Recording audio
disp('End of the speaking')
play(recObj); % playing audio
myRecording = getaudiodata(recObj); % storing audio
figure;
plot(myRecording)
title('This is the Original Voice That has been Recorded')
Fsvwa = 20*40000; % First Sampling rate
Fcvwa = 40000; % First Carrier Frequency
tsvwa = [0:2*Fsvwa+1]/Fsvwa;
n=1;
m=40000;
rva = randn(m,n,'double');
myRecording = myRecording + rva;
[numvwa,denvwa] = butter(10,Fcvwa*2/Fsvwa); % Lowpass filter
YAMMODvwa = ammod(myRecording,Fcvwa,Fsvwa); % Modulated Signal
YAMDEMODvwa = amdemod(YAMMODvwa,Fcvwa,Fsvwa,0,0,numvwa,denvwa); % Demodulated Signal
YAMMODvwa = fft(YAMMODvwa); % Discrete Fourier Transform
YAMMODvwa = abs(YAMMODvwa(1:length(YAMMODvwa)/2+1));
frqYAMMODvwa = [0:length(YAMMODvwa)-1]*Fsvwa/length(YAMMODvwa)/2; 
figure;
plot(frqYAMMODvwa,YAMMODvwa);
title('This is the output voice which has becomed modulated in AM Modulation and added by noise');
YAMDEMODvwa = fft(YAMDEMODvwa); % Discrete Fourier Transform of Demodulated Signal
YAMDEMODvwa = abs(YAMDEMODvwa(1:length(YAMDEMODvwa)/2+1));
frqYAMDEMODvwa = [0:length(YAMDEMODvwa)-1]*Fsvwa/length(YAMDEMODvwa)/2;
figure;
plot(frqYAMDEMODvwa,YAMDEMODvwa);
title('This is the output voice which has becomed demodulated in AM Demodulation and added by noise');


%% WITHOUT NOISE

%   First FM Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fsfmwoa = 300; % Sampling rate of signal
Fcfmwoa = 40; % Carrier frequency
tfmwoa = [0:Fsfmwoa]'/Fsfmwoa; % Sampling times
X = sin(2*pi*tfmwoa); % initial waveform
devwoa = 10; % Frequency deviation in modulated signal
YFMMODwoa = fmmod(X,Fcfmwoa,Fsfmwoa,devwoa); % Modulated Signal
YFMDEMODwoa = fmdemod(YFMMODwoa,Fcfmwoa,Fsfmwoa,devwoa); % Demodulated Signal
YFMMODwoa = fft(YFMMODwoa); % Discrete Fourier Transform of Modulated Signal
YFMMODwoa = abs(YFMMODwoa(1:length(YFMMODwoa)/2+1));
frqYFMMODwoa = [0:length(YFMMODwoa)-1]*Fsfmwoa/length(YFMMODwoa)/2; 
figure;
plot(frqYFMMODwoa,YFMMODwoa);
title('First Spectrum of the FM Modulated Signal');
YFMDEMODwoa = fft(YFMDEMODwoa); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwoa = abs(YFMDEMODwoa(1:length(YFMDEMODwoa)/2+1));
frqYFMDEMODwoa = [0:length(YFMDEMODwoa)-1]*Fsfmwoa/length(YFMDEMODwoa)/2;
figure;
plot(frqYFMDEMODwoa,YFMDEMODwoa);
title('First Spectrum of the FM Demodulated Signal');

%   Second FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwob = 200; % Sampling rate of signal
Fcfmwob = 40; % Carrier frequency
tfmwob = [0:Fsfmwob]'/Fsfmwob; % Sampling times
X = sin(2*pi*tfmwob); % initial waveform
devwob = 10; % Frequency deviation in modulated signal
YFMMODwob = fmmod(X,Fcfmwob,Fsfmwob,devwob); % Modulated Signal
YFMDEMODwob = fmdemod(YFMMODwob,Fcfmwob,Fsfmwob,devwob); % Demodulated Signal
YFMMODwob = fft(YFMMODwob); % Discrete Fourier Transform of Modulated Signal
YFMMODwob = abs(YFMMODwob(1:length(YFMMODwob)/2+1));
frqYFMMODwob = [0:length(YFMMODwob)-1]*Fsfmwob/length(YFMMODwob)/2; 
figure;
plot(frqYFMMODwob,YFMMODwob);
title('Second Spectrum of the FM Modulated Signal(Changing Sampling rate)');
YFMDEMODwob = fft(YFMDEMODwob); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwob = abs(YFMDEMODwob(1:length(YFMDEMODwob)/2+1));
frqYFMDEMODwob = [0:length(YFMDEMODwob)-1]*Fsfmwob/length(YFMDEMODwob)/2;
figure;
plot(frqYFMDEMODwob,YFMDEMODwob);
title('Second Spectrum of the FM Demodulated Signal(Changing Sampling rate)');

%   Third FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwoc = 300; % Sampling rate of signal
Fcfmwoc = 20; % Carrier frequency
tfmwoc = [0:Fsfmwoc]'/Fsfmwoc; % Sampling times
X = sin(2*pi*tfmwoc); % initial waveform
devwoc = 10; % Frequency deviation in modulated signal
YFMMODwoc = fmmod(X,Fcfmwoc,Fsfmwoc,devwoc); % Modulated Signal
YFMDEMODwoc = fmdemod(YFMMODwoc,Fcfmwoc,Fsfmwoc,devwoc); % Demodulated Signal
YFMMODwoc = fft(YFMMODwoc); % Discrete Fourier Transform of Modulated Signal
YFMMODwoc = abs(YFMMODwoc(1:length(YFMMODwoc)/2+1));
frqYFMMODwoc = [0:length(YFMMODwoc)-1]*Fsfmwoc/length(YFMMODwoc)/2; 
figure;
plot(frqYFMMODwoc,YFMMODwoc);
title('Third Spectrum of the FM Modulated Signal(Changing Carrier frequency)');
YFMDEMODwoc = fft(YFMDEMODwoc); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwoc = abs(YFMDEMODwoc(1:length(YFMDEMODwoc)/2+1));
frqYFMDEMODwoc = [0:length(YFMDEMODwoc)-1]*Fsfmwoc/length(YFMDEMODwoc)/2;
figure;
plot(frqYFMDEMODwoc,YFMDEMODwoc);
title('Third Spectrum of the FM Demodulated Signal(Changing Carrier frequency)');

%   4th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwod = 300; % Sampling rate of signal
Fcfmwod = 40; % Carrier frequency
tfmwod = [0:Fsfmwod]'/Fsfmwod; % Sampling times
X = sin(2*pi*tfmwod); % initial waveform
devwod = 20; % Frequency deviation in modulated signal
YFMMODwod = fmmod(X,Fcfmwod,Fsfmwod,devwod); % Modulated Signal
YFMDEMODwod = fmdemod(YFMMODwod,Fcfmwod,Fsfmwod,devwod); % Demodulated Signal
YFMMODwod = fft(YFMMODwod); % Discrete Fourier Transform of Modulated Signal
YFMMODwod = abs(YFMMODwod(1:length(YFMMODwod)/2+1));
frqYFMMODwod = [0:length(YFMMODwod)-1]*Fsfmwod/length(YFMMODwod)/2; 
figure;
plot(frqYFMMODwod,YFMMODwod);
title('4th Spectrum of the FM Modulated Signal(Changing Deviation Frequency)');
YFMDEMODwod = fft(YFMDEMODwod); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwod = abs(YFMDEMODwod(1:length(YFMDEMODwod)/2+1));
frqYFMDEMODwod = [0:length(YFMDEMODwod)-1]*Fsfmwod/length(YFMDEMODwod)/2;
figure;
plot(frqYFMDEMODwod,YFMDEMODwod);
title('4th Spectrum of the FM Demodulated Signal(Changing Deviation Frequency)');

%   5th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwoe = 200; % Sampling rate of signal
Fcfmwoe = 20; % Carrier frequency
tfmwoe = [0:Fsfmwoe]'/Fsfmwoe; % Sampling times
X = sin(2*pi*tfmwoe); % initial waveform
devwoe = 10; % Frequency deviation in modulated signal
YFMMODwoe = fmmod(X,Fcfmwoe,Fsfmwoe,devwoe); % Modulated Signal
YFMDEMODwoe = fmdemod(YFMMODwoe,Fcfmwoe,Fsfmwoe,devwoe); % Demodulated Signal
YFMMODwoe = fft(YFMMODwoe); % Discrete Fourier Transform of Modulated Signal
YFMMODwoe = abs(YFMMODwoe(1:length(YFMMODwoe)/2+1));
frqYFMMODwoe = [0:length(YFMMODwoe)-1]*Fsfmwoe/length(YFMMODwoe)/2; 
figure;
plot(frqYFMMODwoe,YFMMODwoe);
title('5th Spectrum of the FM Modulated Signal(Changing Sampling rate and Carrier Frequency)');
YFMDEMODwoe = fft(YFMDEMODwoe); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwoe = abs(YFMDEMODwoe(1:length(YFMDEMODwoe)/2+1));
frqYFMDEMODwoe = [0:length(YFMDEMODwoe)-1]*Fsfmwoe/length(YFMDEMODwoe)/2;
figure;
plot(frqYFMDEMODwoe,YFMDEMODwoe);
title('5th Spectrum of the FM Demodulated Signal(Changing Sampling rate and Carrier Frequency)');

%   6th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwof = 200; % Sampling rate of signal
Fcfmwof = 40; % Carrier frequency
tfmwof = [0:Fsfmwof]'/Fsfmwof; % Sampling times
X = sin(2*pi*tfmwof); % initial waveform
devwof = 20; % Frequency deviation in modulated signal
YFMMODwof = fmmod(X,Fcfmwof,Fsfmwof,devwof); % Modulated Signal
YFMDEMODwof = fmdemod(YFMMODwof,Fcfmwof,Fsfmwof,devwof); % Demodulated Signal
YFMMODwof = fft(YFMMODwof); % Discrete Fourier Transform of Modulated Signal
YFMMODwof = abs(YFMMODwof(1:length(YFMMODwof)/2+1));
frqYFMMODwof = [0:length(YFMMODwof)-1]*Fsfmwof/length(YFMMODwof)/2; 
figure;
plot(frqYFMMODwof,YFMMODwof);
title('6th Spectrum of the FM Modulated Signal(Changing Sampling rate and Deviation Frequency)');
YFMDEMODwof = fft(YFMDEMODwof); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwof = abs(YFMDEMODwof(1:length(YFMDEMODwof)/2+1));
frqYFMDEMODwof = [0:length(YFMDEMODwof)-1]*Fsfmwof/length(YFMDEMODwof)/2;
figure;
plot(frqYFMDEMODwof,YFMDEMODwof);
title('6th Spectrum of the FM Demodulated Signal(Changing Sampling rate and Deviation Frequency)');

%   7th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwog = 300; % Sampling rate of signal
Fcfmwog = 20; % Carrier frequency
tfmwog = [0:Fsfmwog]'/Fsfmwog; % Sampling times
X = sin(2*pi*tfmwog); % initial waveform
devwog = 20; % Frequency deviation in modulated signal
YFMMODwog = fmmod(X,Fcfmwog,Fsfmwog,devwog); % Modulated Signal
YFMDEMODwog = fmdemod(YFMMODwog,Fcfmwog,Fsfmwog,devwog); % Demodulated Signal
YFMMODwog = fft(YFMMODwog); % Discrete Fourier Transform of Modulated Signal
YFMMODwog = abs(YFMMODwog(1:length(YFMMODwog)/2+1));
frqYFMMODwog = [0:length(YFMMODwog)-1]*Fsfmwog/length(YFMMODwog)/2; 
figure;
plot(frqYFMMODwog,YFMMODwog);
title('7th Spectrum of the FM Modulated Signal(Changing Carrier Frequency and Deviation Frequency)');
YFMDEMODwog = fft(YFMDEMODwog); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwog = abs(YFMDEMODwog(1:length(YFMDEMODwog)/2+1));
frqYFMDEMODwog = [0:length(YFMDEMODwog)-1]*Fsfmwog/length(YFMDEMODwog)/2;
figure;
plot(frqYFMDEMODwog,YFMDEMODwog);
title('7th Spectrum of the FM Demodulated Signal(Changing Carrier frequency and Deviation Frequency)');

%   8th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwoh = 200; % Sampling rate of signal
Fcfmwoh = 20; % Carrier frequency
tfmwoh = [0:Fsfmwoh]'/Fsfmwoh; % Sampling times
X = sin(2*pi*tfmwoh); % initial waveform
devwoh = 20; % Frequency deviation in modulated signal
YFMMODwoh = fmmod(X,Fcfmwoh,Fsfmwoh,devwoh); % Modulated Signal
YFMDEMODwoh = fmdemod(YFMMODwoh,Fcfmwoh,Fsfmwoh,devwoh); % Demodulated Signal
YFMMODwoh = fft(YFMMODwoh); % Discrete Fourier Transform of Modulated Signal
YFMMODwoh = abs(YFMMODwoh(1:length(YFMMODwoh)/2+1));
frqYFMMODwoh = [0:length(YFMMODwoh)-1]*Fsfmwoh/length(YFMMODwoh)/2; 
figure;
plot(frqYFMMODwoh,YFMMODwoh);
title('8th Spectrum of the FM Modulated Signal(Changing Sampling rate and Carrier Frequency and Deviation Frequency)');
YFMDEMODwoh = fft(YFMDEMODwoh); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwoh = abs(YFMDEMODwoh(1:length(YFMDEMODwoh)/2+1));
frqYFMDEMODwoh = [0:length(YFMDEMODwoh)-1]*Fsfmwoh/length(YFMDEMODwoh)/2;
figure;
plot(frqYFMDEMODwoh,YFMDEMODwoh);
title('8th Spectrum of the FM Demodulated Signal(Changing Sampling rate and Carrier Frequency and Deviation Frequency)');

%%  WITH NOISE

%   First FM Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fsfmwa = 300; % Sampling rate of signal
Fcfmwa = 40; % Carrier frequency
tfmwa = [0:Fsfmwa]'/Fsfmwa; % Sampling times
m=301;
n=1;
rfma = randn(m,n,'double');
X = sin(2*pi*tfmwa);
X = X+rfma;
devwa = 10; % Frequency deviation in modulated signal
YFMMODwa = fmmod(X,Fcfmwa,Fsfmwa,devwa); % Modulated Signal
YFMDEMODwa = fmdemod(YFMMODwa,Fcfmwa,Fsfmwa,devwa); % Demodulated Signal
YFMMODwa = fft(YFMMODwa); % Discrete Fourier Transform of Modulated Signal
YFMMODwa = abs(YFMMODwa(1:length(YFMMODwa)/2+1));
frqYFMMODwa = [0:length(YFMMODwa)-1]*Fsfmwa/length(YFMMODwa)/2; 
figure;
plot(frqYFMMODwa,YFMMODwa);
title('First Spectrum of the FM Modulated Signal With Noise');
YFMDEMODwa = fft(YFMDEMODwa); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwa = abs(YFMDEMODwa(1:length(YFMDEMODwa)/2+1));
frqYFMDEMODwa = [0:length(YFMDEMODwa)-1]*Fsfmwa/length(YFMDEMODwa)/2;
figure;
plot(frqYFMDEMODwa,YFMDEMODwa);
title('First Spectrum of the FM Demodulated Signal With Noise');

%   Second FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwb = 200; % Sampling rate of signal
Fcfmwb = 40; % Carrier frequency
tfmwb = [0:Fsfmwb]'/Fsfmwb; % Sampling times
m=201;
n=1;
rfmb = randn(m,n,'double');
X = sin(2*pi*tfmwb);
X = X+rfmb;
devwb = 10; % Frequency deviation in modulated signal
YFMMODwb = fmmod(X,Fcfmwb,Fsfmwb,devwb); % Modulated Signal
YFMDEMODwb = fmdemod(YFMMODwb,Fcfmwb,Fsfmwb,devwb); % Demodulated Signal
YFMMODwb = fft(YFMMODwb); % Discrete Fourier Transform of Modulated Signal
YFMMODwb = abs(YFMMODwb(1:length(YFMMODwb)/2+1));
frqYFMMODwb = [0:length(YFMMODwb)-1]*Fsfmwb/length(YFMMODwb)/2; 
figure;
plot(frqYFMMODwb,YFMMODwb);
title('Second Spectrum of the FM Modulated Signal With Noise(Changing Sampling rate)');
YFMDEMODwb = fft(YFMDEMODwb); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwb = abs(YFMDEMODwb(1:length(YFMDEMODwb)/2+1));
frqYFMDEMODwb = [0:length(YFMDEMODwb)-1]*Fsfmwb/length(YFMDEMODwb)/2;
figure;
plot(frqYFMDEMODwb,YFMDEMODwb);
title('Second Spectrum of the FM Demodulated Signal With Noise(Changing Sampling rate)');

%   Third FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwc = 300; % Sampling rate of signal
Fcfmwc = 20; % Carrier frequency
tfmwc = [0:Fsfmwc]'/Fsfmwc; % Sampling times
m=301;
n=1;
rfmc = randn(m,n,'double');
X = sin(2*pi*tfmwc);
X = X+rfmc;
devwc = 10; % Frequency deviation in modulated signal
YFMMODwc = fmmod(X,Fcfmwc,Fsfmwc,devwc); % Modulated Signal
YFMDEMODwc = fmdemod(YFMMODwc,Fcfmwc,Fsfmwc,devwc); % Demodulated Signal
YFMMODwc = fft(YFMMODwc); % Discrete Fourier Transform of Modulated Signal
YFMMODwc = abs(YFMMODwc(1:length(YFMMODwc)/2+1));
frqYFMMODwc = [0:length(YFMMODwc)-1]*Fsfmwc/length(YFMMODwc)/2; 
figure;
plot(frqYFMMODwc,YFMMODwc);
title('Third Spectrum of the FM Modulated Signal With Noise(Changing Carrier Frequency)');
YFMDEMODwc = fft(YFMDEMODwc); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwc = abs(YFMDEMODwc(1:length(YFMDEMODwc)/2+1));
frqYFMDEMODwc = [0:length(YFMDEMODwc)-1]*Fsfmwc/length(YFMDEMODwc)/2;
figure;
plot(frqYFMDEMODwc,YFMDEMODwc);
title('Third Spectrum of the FM Demodulated Signal With Noise(Changing Carrier Frequency)');


%   4th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwd = 300; % Sampling rate of signal
Fcfmwd = 40; % Carrier frequency
tfmwd = [0:Fsfmwd]'/Fsfmwd; % Sampling times
m=301;
n=1;
rfmd = randn(m,n,'double');
X = sin(2*pi*tfmwd);
X = X+rfmd;
devwd = 20; % Frequency deviation in modulated signal
YFMMODwd = fmmod(X,Fcfmwd,Fsfmwd,devwd); % Modulated Signal
YFMDEMODwd = fmdemod(YFMMODwd,Fcfmwd,Fsfmwd,devwd); % Demodulated Signal
YFMMODwd = fft(YFMMODwd); % Discrete Fourier Transform of Modulated Signal
YFMMODwd = abs(YFMMODwd(1:length(YFMMODwd)/2+1));
frqYFMMODwd = [0:length(YFMMODwd)-1]*Fsfmwd/length(YFMMODwd)/2; 
figure;
plot(frqYFMMODwd,YFMMODwd);
title('4th Spectrum of the FM Modulated Signal With Noise(Changing Deviation Frequency)');
YFMDEMODwd = fft(YFMDEMODwd); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwd = abs(YFMDEMODwd(1:length(YFMDEMODwd)/2+1));
frqYFMDEMODwd = [0:length(YFMDEMODwd)-1]*Fsfmwd/length(YFMDEMODwd)/2;
figure;
plot(frqYFMDEMODwd,YFMDEMODwd);
title('4th Spectrum of the FM Demodulated Signal With Noise(Changing Deviation Frequency)');

%   5th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwe = 200; % Sampling rate of signal
Fcfmwe = 20; % Carrier frequency
tfmwe = [0:Fsfmwe]'/Fsfmwe; % Sampling times
m=201;
n=1;
rfme = randn(m,n,'double');
X = sin(2*pi*tfmwe);
X = X+rfme;
devwe = 10; % Frequency deviation in modulated signal
YFMMODwe = fmmod(X,Fcfmwe,Fsfmwe,devwe); % Modulated Signal
YFMDEMODwe = fmdemod(YFMMODwe,Fcfmwe,Fsfmwe,devwe); % Demodulated Signal
YFMMODwe = fft(YFMMODwe); % Discrete Fourier Transform of Modulated Signal
YFMMODwe = abs(YFMMODwe(1:length(YFMMODwe)/2+1));
frqYFMMODwe = [0:length(YFMMODwe)-1]*Fsfmwe/length(YFMMODwe)/2; 
figure;
plot(frqYFMMODwe,YFMMODwe);
title('5th Spectrum of the FM Modulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');
YFMDEMODwe = fft(YFMDEMODwe); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwe = abs(YFMDEMODwe(1:length(YFMDEMODwe)/2+1));
frqYFMDEMODwe = [0:length(YFMDEMODwe)-1]*Fsfmwe/length(YFMDEMODwe)/2;
figure;
plot(frqYFMDEMODwe,YFMDEMODwe);
title('5th Spectrum of the FM Demodulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');

%   6th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwf = 200; % Sampling rate of signal
Fcfmwf = 40; % Carrier frequency
tfmwf = [0:Fsfmwf]'/Fsfmwf; % Sampling times
m=201;
n=1;
rfmf = randn(m,n,'double');
X = sin(2*pi*tfmwf);
X = X+rfmf;
devwf = 20; % Frequency deviation in modulated signal
YFMMODwf = fmmod(X,Fcfmwf,Fsfmwf,devwf); % Modulated Signal
YFMDEMODwf = fmdemod(YFMMODwf,Fcfmwf,Fsfmwf,devwf); % Demodulated Signal
YFMMODwf = fft(YFMMODwf); % Discrete Fourier Transform of Modulated Signal
YFMMODwf = abs(YFMMODwf(1:length(YFMMODwf)/2+1));
frqYFMMODwf = [0:length(YFMMODwf)-1]*Fsfmwf/length(YFMMODwf)/2; 
figure;
plot(frqYFMMODwf,YFMMODwf);
title('6th Spectrum of the FM Modulated Signal With Noise(Changing Sampling rate and Deviation Frequency)');
YFMDEMODwf = fft(YFMDEMODwf); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwf = abs(YFMDEMODwf(1:length(YFMDEMODwf)/2+1));
frqYFMDEMODwf = [0:length(YFMDEMODwf)-1]*Fsfmwf/length(YFMDEMODwf)/2;
figure;
plot(frqYFMDEMODwf,YFMDEMODwf);
title('6th Spectrum of the FM Demodulated Signal With Noise(Changing Sampling rate and Deviation Frequency)');

%   7th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwg = 300; % Sampling rate of signal
Fcfmwg = 20; % Carrier frequency
tfmwg = [0:Fsfmwg]'/Fsfmwg; % Sampling times
m=301;
n=1;
rfmg = randn(m,n,'double');
X = sin(2*pi*tfmwg);
X = X+rfmg;
devwg = 20; % Frequency deviation in modulated signal
YFMMODwg = fmmod(X,Fcfmwg,Fsfmwg,devwg); % Modulated Signal
YFMDEMODwg = fmdemod(YFMMODwg,Fcfmwg,Fsfmwg,devwg); % Demodulated Signal
YFMMODwg = fft(YFMMODwg); % Discrete Fourier Transform of Modulated Signal
YFMMODwg = abs(YFMMODwg(1:length(YFMMODwg)/2+1));
frqYFMMODwg = [0:length(YFMMODwg)-1]*Fsfmwg/length(YFMMODwg)/2; 
figure;
plot(frqYFMMODwg,YFMMODwg);
title('7th Spectrum of the FM Modulated Signal With Noise(Changing Carrier Frequency and Deviation Frequency)');
YFMDEMODwg = fft(YFMDEMODwg); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwg = abs(YFMDEMODwg(1:length(YFMDEMODwg)/2+1));
frqYFMDEMODwg = [0:length(YFMDEMODwg)-1]*Fsfmwg/length(YFMDEMODwg)/2;
figure;
plot(frqYFMDEMODwg,YFMDEMODwg);
title('7th Spectrum of the FM Demodulated Signal With Noise(Changing Carrier frequency and Deviation Frequency)');

%   8th FM Modulation
%   Sinousoidal waveform is the initial waveform

Fsfmwh = 200; % Sampling rate of signal
Fcfmwh = 20; % Carrier frequency
tfmwh = [0:Fsfmwh]'/Fsfmwh; % Sampling times
m=201;
n=1;
rfmh = randn(m,n,'double');
X = sin(2*pi*tfmwh);
X = X+rfmh;
devwh = 20; % Frequency deviation in modulated signal
YFMMODwh = fmmod(X,Fcfmwh,Fsfmwh,devwh); % Modulated Signal
YFMDEMODwh = fmdemod(YFMMODwh,Fcfmwh,Fsfmwh,devwh); % Demodulated Signal
YFMMODwh = fft(YFMMODwh); % Discrete Fourier Transform of Modulated Signal
YFMMODwh = abs(YFMMODwh(1:length(YFMMODwh)/2+1));
frqYFMMODwh = [0:length(YFMMODwh)-1]*Fsfmwh/length(YFMMODwh)/2; 
figure;
plot(frqYFMMODwh,YFMMODwh);
title('8th Spectrum of the FM Modulated Signal With Noise(Changing Sampling rate and Carrier Frequency and Deviation Frequency)');
YFMDEMODwh = fft(YFMDEMODwh); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODwh = abs(YFMDEMODwh(1:length(YFMDEMODwh)/2+1));
frqYFMDEMODwh = [0:length(YFMDEMODwh)-1]*Fsfmwh/length(YFMDEMODwh)/2;
figure;
plot(frqYFMDEMODwh,YFMDEMODwh);
title('8th Spectrum of the FM Demodulated Signal With Noise(Changing Sampling rate and Carrier Frequency and Deviation Frequency)');

%% Voice Recorded With FM MOD and FM DEMOD
% Recording voice for 5 seconds
clear all
clc
recObj = audiorecorder;
disp('start speaking')
recordblocking(recObj,5); % Recording audio
disp('End of the speaking')
play(recObj); % playing audio
myRecording = getaudiodata(recObj); % storing audio
figure;
plot(myRecording)
title('This is the Original Voice That has been Recorded')
Fsfmvwa = 300; % Sampling rate of signal
Fcfmvwa = 40; % Carrier frequency
tfmvwa = [0:Fsfmvwa]'/Fsfmvwa; % Sampling times
m=40000;
n=1;
rfmva = randn(m,n,'double');
myRecording = myRecording+rfmva;
devvwa = 10; % Frequency deviation in modulated signal
YFMMODvwa = fmmod(myRecording,Fcfmvwa,Fsfmvwa,devvwa); % Modulated Signal
YFMDEMODvwa = fmdemod(YFMMODvwa,Fcfmvwa,Fsfmvwa,devvwa); % Demodulated Signal
YFMMODvwa = fft(YFMMODvwa); % Discrete Fourier Transform of Modulated Signal
YFMMODvwa = abs(YFMMODvwa(1:length(YFMMODvwa)/2+1));
frqYFMMODvwa = [0:length(YFMMODvwa)-1]*Fsfmvwa/length(YFMMODvwa)/2; 
figure;
plot(frqYFMMODvwa,YFMMODvwa);
title('This is the output voice which has becomed modulated in FM Modulation and added by noise');
YFMDEMODvwa = fft(YFMDEMODvwa); % Discrete Fourier Transform of Demodulated Signal
YFMDEMODvwa = abs(YFMDEMODvwa(1:length(YFMDEMODvwa)/2+1));
frqYFMDEMODvwa = [0:length(YFMDEMODvwa)-1]*Fsfmvwa/length(YFMDEMODvwa)/2;
figure;
plot(frqYFMDEMODvwa,YFMDEMODvwa);
title('This is the output voice which has becomed Demodulated in FM Demodulation and added by noise');

%% WITHOUT NOISE

%   First PM Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fspmwoa = 300; % Sampling rate of signal
Fcpmwoa = 40; % Carrier frequency
tpmwoa = [0:Fspmwoa]'/Fspmwoa; % Sampling times
X = sin(2*pi*tpmwoa); % initial waveform
devwoa = 10; % Phase deviation in modulated signal
YPMMODwoa = pmmod(X,Fcpmwoa,Fspmwoa,devwoa); % Modulated Signal
YPMDEMODwoa = pmdemod(YPMMODwoa,Fcpmwoa,Fspmwoa,devwoa); % Demodulated Signal
YPMMODwoa = fft(YPMMODwoa); % Discrete Fourier Transform of Modulated Signal
YPMMODwoa = abs(YPMMODwoa(1:length(YPMMODwoa)/2+1));
frqYPMMODwoa = [0:length(YPMMODwoa)-1]*Fspmwoa/length(YPMMODwoa)/2; 
figure;
plot(frqYPMMODwoa,YPMMODwoa);
title('First Spectrum of the PM Modulated Signal');
YPMDEMODwoa = fft(YPMDEMODwoa); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwoa = abs(YPMDEMODwoa(1:length(YPMDEMODwoa)/2+1));
frqYPMDEMODwoa = [0:length(YPMDEMODwoa)-1]*Fspmwoa/length(YPMDEMODwoa)/2;
figure;
plot(frqYPMDEMODwoa,YPMDEMODwoa);
title('First Spectrum of the PM Demodulated Signal');

%   Second PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwob = 200; % Sampling rate of signal
Fcpmwob = 40; % Carrier frequency
tpmwob = [0:Fspmwob]'/Fspmwob; % Sampling times
X = sin(2*pi*tpmwob); % initial waveform
devwob = 10; % Phase deviation in modulated signal
YPMMODwob = pmmod(X,Fcpmwob,Fspmwob,devwob); % Modulated Signal
YPMDEMODwob = pmdemod(YPMMODwob,Fcpmwob,Fspmwob,devwob); % Demodulated Signal
YPMMODwob = fft(YPMMODwob); % Discrete Fourier Transform of Modulated Signal
YPMMODwob = abs(YPMMODwob(1:length(YPMMODwob)/2+1));
frqYPMMODwob = [0:length(YPMMODwob)-1]*Fspmwob/length(YPMMODwob)/2; 
figure;
plot(frqYPMMODwob,YPMMODwob);
title('Second Spectrum of the PM Modulated Signal(Changing Sampling rate)');
YPMDEMODwob = fft(YPMDEMODwob); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwob = abs(YPMDEMODwob(1:length(YPMDEMODwob)/2+1));
frqYPMDEMODwob = [0:length(YPMDEMODwob)-1]*Fspmwob/length(YPMDEMODwob)/2;
figure;
plot(frqYPMDEMODwob,YPMDEMODwob);
title('Second Spectrum of the PM Demodulated Signal(Changing Sampling rate)');

%   Third PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwoc = 300; % Sampling rate of signal
Fcpmwoc = 20; % Carrier frequency
tpmwoc = [0:Fspmwoc]'/Fspmwoc; % Sampling times
X = sin(2*pi*tpmwoc); % initial waveform
devwoc = 10; % Phase deviation in modulated signal
YPMMODwoc = pmmod(X,Fcpmwoc,Fspmwoc,devwoc); % Modulated Signal
YPMDEMODwoc = pmdemod(YPMMODwoc,Fcpmwoc,Fspmwoc,devwoc); % Demodulated Signal
YPMMODwoc = fft(YPMMODwoc); % Discrete Fourier Transform of Modulated Signal
YPMMODwoc = abs(YPMMODwoc(1:length(YPMMODwoc)/2+1));
frqYPMMODwoc = [0:length(YPMMODwoc)-1]*Fspmwoc/length(YPMMODwoc)/2; 
figure;
plot(frqYPMMODwoc,YPMMODwoc);
title('Third Spectrum of the PM Modulated Signal(Changing Carrier frequency)');
YPMDEMODwoc = fft(YPMDEMODwoc); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwoc = abs(YPMDEMODwoc(1:length(YPMDEMODwoc)/2+1));
frqYPMDEMODwoc = [0:length(YPMDEMODwoc)-1]*Fspmwoc/length(YPMDEMODwoc)/2;
figure;
plot(frqYPMDEMODwoc,YPMDEMODwoc);
title('Third Spectrum of the PM Demodulated Signal(Changing Carrier frequency)');

%   4th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwod = 300; % Sampling rate of signal
Fcpmwod = 40; % Carrier frequency
tpmwod = [0:Fspmwod]'/Fspmwod; % Sampling times
X = sin(2*pi*tpmwod); % initial waveform
devwod = 20; % Phase deviation in modulated signal
YPMMODwod = pmmod(X,Fcpmwod,Fspmwod,devwod); % Modulated Signal
YPMDEMODwod = pmdemod(YPMMODwod,Fcpmwod,Fspmwod,devwod); % Demodulated Signal
YPMMODwod = fft(YPMMODwod); % Discrete Fourier Transform of Modulated Signal
YPMMODwod = abs(YPMMODwod(1:length(YPMMODwod)/2+1));
frqYPMMODwod = [0:length(YPMMODwod)-1]*Fspmwod/length(YPMMODwod)/2; 
figure;
plot(frqYPMMODwod,YPMMODwod);
title('4th Spectrum of the PM Modulated Signal(Changing Deviation Phase)');
YPMDEMODwod = fft(YPMDEMODwod); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwod = abs(YPMDEMODwod(1:length(YPMDEMODwod)/2+1));
frqYPMDEMODwod = [0:length(YPMDEMODwod)-1]*Fspmwod/length(YPMDEMODwod)/2;
figure;
plot(frqYPMDEMODwod,YPMDEMODwod);
title('4th Spectrum of the PM Demodulated Signal(Changing Deviation Phase)');

%   5th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwoe = 200; % Sampling rate of signal
Fcpmwoe = 20; % Carrier frequency
tpmwoe = [0:Fspmwoe]'/Fspmwoe; % Sampling times
X = sin(2*pi*tpmwoe); % initial waveform
devwoe = 10; % Phase deviation in modulated signal
YPMMODwoe = pmmod(X,Fcpmwoe,Fspmwoe,devwoe); % Modulated Signal
YPMDEMODwoe = pmdemod(YPMMODwoe,Fcpmwoe,Fspmwoe,devwoe); % Demodulated Signal
YPMMODwoe = fft(YPMMODwoe); % Discrete Fourier Transform of Modulated Signal
YPMMODwoe = abs(YPMMODwoe(1:length(YPMMODwoe)/2+1));
frqYPMMODwoe = [0:length(YPMMODwoe)-1]*Fspmwoe/length(YPMMODwoe)/2; 
figure;
plot(frqYPMMODwoe,YPMMODwoe);
title('5th Spectrum of the PM Modulated Signal(Changing Sampling rate and Carrier Frequency)');
YPMDEMODwoe = fft(YPMDEMODwoe); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwoe = abs(YPMDEMODwoe(1:length(YPMDEMODwoe)/2+1));
frqYPMDEMODwoe = [0:length(YPMDEMODwoe)-1]*Fspmwoe/length(YPMDEMODwoe)/2;
figure;
plot(frqYPMDEMODwoe,YPMDEMODwoe);
title('5th Spectrum of the PM Demodulated Signal(Changing Sampling rate and Carrier Frequency)');

%   6th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwof = 200; % Sampling rate of signal
Fcpmwof = 40; % Carrier frequency
tpmwof = [0:Fspmwof]'/Fspmwof; % Sampling times
X = sin(2*pi*tpmwof); % initial waveform
devwof = 20; % Phase deviation in modulated signal
YPMMODwof = pmmod(X,Fcpmwof,Fspmwof,devwof); % Modulated Signal
YPMDEMODwof = pmdemod(YPMMODwof,Fcpmwof,Fspmwof,devwof); % Demodulated Signal
YPMMODwof = fft(YPMMODwof); % Discrete Fourier Transform of Modulated Signal
YPMMODwof = abs(YPMMODwof(1:length(YPMMODwof)/2+1));
frqYPMMODwof = [0:length(YPMMODwof)-1]*Fspmwof/length(YPMMODwof)/2; 
figure;
plot(frqYPMMODwof,YPMMODwof);
title('6th Spectrum of the PM Modulated Signal(Changing Sampling rate and Deviation Phase)');
YPMDEMODwof = fft(YPMDEMODwof); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwof = abs(YPMDEMODwof(1:length(YPMDEMODwof)/2+1));
frqYPMDEMODwof = [0:length(YPMDEMODwof)-1]*Fspmwof/length(YPMDEMODwof)/2;
figure;
plot(frqYPMDEMODwof,YPMDEMODwof);
title('6th Spectrum of the PM Demodulated Signal(Changing Sampling rate and Deviation Phase)');

%   7th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwog = 300; % Sampling rate of signal
Fcpmwog = 20; % Carrier frequency
tpmwog = [0:Fspmwog]'/Fspmwog; % Sampling times
X = sin(2*pi*tpmwog); % initial waveform
devwog = 20; % Phase deviation in modulated signal
YPMMODwog = pmmod(X,Fcpmwog,Fspmwog,devwog); % Modulated Signal
YPMDEMODwog = pmdemod(YPMMODwog,Fcpmwog,Fspmwog,devwog); % Demodulated Signal
YPMMODwog = fft(YPMMODwog); % Discrete Fourier Transform of Modulated Signal
YPMMODwog = abs(YPMMODwog(1:length(YPMMODwog)/2+1));
frqYPMMODwog = [0:length(YPMMODwog)-1]*Fspmwog/length(YPMMODwog)/2; 
figure;
plot(frqYPMMODwog,YPMMODwog);
title('7th Spectrum of the PM Modulated Signal(Changing Carrier Frequency and Deviation Phase)');
YPMDEMODwog = fft(YPMDEMODwog); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwog = abs(YPMDEMODwog(1:length(YPMDEMODwog)/2+1));
frqYPMDEMODwog = [0:length(YPMDEMODwog)-1]*Fspmwog/length(YPMDEMODwog)/2;
figure;
plot(frqYPMDEMODwog,YPMDEMODwog);
title('7th Spectrum of the PM Demodulated Signal(Changing Carrier frequency and Deviation Phase)');

%   8th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwoh = 200; % Sampling rate of signal
Fcpmwoh = 20; % Carrier frequency
tpmwoh = [0:Fspmwoh]'/Fspmwoh; % Sampling times
X = sin(2*pi*tpmwoh); % initial waveform
devwoh = 20; % Phase deviation in modulated signal
YPMMODwoh = pmmod(X,Fcpmwoh,Fspmwoh,devwoh); % Modulated Signal
YPMDEMODwoh = pmdemod(YPMMODwoh,Fcpmwoh,Fspmwoh,devwoh); % Demodulated Signal
YPMMODwoh = fft(YPMMODwoh); % Discrete Fourier Transform of Modulated Signal
YPMMODwoh = abs(YPMMODwoh(1:length(YPMMODwoh)/2+1));
frqYPMMODwoh = [0:length(YPMMODwoh)-1]*Fspmwoh/length(YPMMODwoh)/2; 
figure;
plot(frqYPMMODwoh,YPMMODwoh);
title('8th Spectrum of the PM Modulated Signal(Changing Sampling rate and Carrier Frequency and Deviation Phase)');
YPMDEMODwoh = fft(YPMDEMODwoh); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwoh = abs(YPMDEMODwoh(1:length(YPMDEMODwoh)/2+1));
frqYPMDEMODwoh = [0:length(YPMDEMODwoh)-1]*Fspmwoh/length(YPMDEMODwoh)/2;
figure;
plot(frqYPMDEMODwoh,YPMDEMODwoh);
title('8th Spectrum of the PM Demodulated Signal(Changing Sampling rate and Carrier Frequency and Deviation Phase)');

%%  WITH NOISE

%   First PM Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fspmwa = 300; % Sampling rate of signal
Fcpmwa = 40; % Carrier frequency
tpmwa = [0:Fspmwa]'/Fspmwa; % Sampling times
m=301;
n=1;
rpma = randn(m,n,'double');
X = sin(2*pi*tpmwa);
X = X+rpma;
devwa = 10; % Phase deviation in modulated signal
YPMMODwa = pmmod(X,Fcpmwa,Fspmwa,devwa); % Modulated Signal
YPMDEMODwa = pmdemod(YPMMODwa,Fcpmwa,Fspmwa,devwa); % Demodulated Signal
YPMMODwa = fft(YPMMODwa); % Discrete Fourier Transform of Modulated Signal
YPMMODwa = abs(YPMMODwa(1:length(YPMMODwa)/2+1));
frqYPMMODwa = [0:length(YPMMODwa)-1]*Fspmwa/length(YPMMODwa)/2; 
figure;
plot(frqYPMMODwa,YPMMODwa);
title('First Spectrum of the PM Modulated Signal With Noise');
YPMDEMODwa = fft(YPMDEMODwa); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwa = abs(YPMDEMODwa(1:length(YPMDEMODwa)/2+1));
frqYPMDEMODwa = [0:length(YPMDEMODwa)-1]*Fspmwa/length(YPMDEMODwa)/2;
figure;
plot(frqYPMDEMODwa,YPMDEMODwa);
title('First Spectrum of the PM Demodulated Signal With Noise');

%   Second PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwb = 200; % Sampling rate of signal
Fcpmwb = 40; % Carrier frequency
tpmwb = [0:Fspmwb]'/Fspmwb; % Sampling times
m=201;
n=1;
rpmb = randn(m,n,'double');
X = sin(2*pi*tpmwb);
X = X+rpmb;
devwb = 10; % Phase deviation in modulated signal
YPMMODwb = pmmod(X,Fcpmwb,Fspmwb,devwb); % Modulated Signal
YPMDEMODwb = pmdemod(YPMMODwb,Fcpmwb,Fspmwb,devwb); % Demodulated Signal
YPMMODwb = fft(YPMMODwb); % Discrete Fourier Transform of Modulated Signal
YPMMODwb = abs(YPMMODwb(1:length(YPMMODwb)/2+1));
frqYPMMODwb = [0:length(YPMMODwb)-1]*Fspmwb/length(YPMMODwb)/2; 
figure;
plot(frqYPMMODwb,YPMMODwb);
title('Second Spectrum of the PM Modulated Signal With Noise(Changing Sampling rate)');
YPMDEMODwb = fft(YPMDEMODwb); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwb = abs(YPMDEMODwb(1:length(YPMDEMODwb)/2+1));
frqYPMDEMODwb = [0:length(YPMDEMODwb)-1]*Fspmwb/length(YPMDEMODwb)/2;
figure;
plot(frqYPMDEMODwb,YPMDEMODwb);
title('Second Spectrum of the PM Demodulated Signal With Noise(Changing Sampling rate)');

%   Third PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwc = 300; % Sampling rate of signal
Fcpmwc = 20; % Carrier frequency
tpmwc = [0:Fspmwc]'/Fspmwc; % Sampling times
m=301;
n=1;
rpmc = randn(m,n,'double');
X = sin(2*pi*tpmwc);
X = X+rpmc;
devwc = 10; % Phase deviation in modulated signal
YPMMODwc = pmmod(X,Fcpmwc,Fspmwc,devwc); % Modulated Signal
YPMDEMODwc = pmdemod(YPMMODwc,Fcpmwc,Fspmwc,devwc); % Demodulated Signal
YPMMODwc = fft(YPMMODwc); % Discrete Fourier Transform of Modulated Signal
YPMMODwc = abs(YPMMODwc(1:length(YPMMODwc)/2+1));
frqYPMMODwc = [0:length(YPMMODwc)-1]*Fspmwc/length(YPMMODwc)/2; 
figure;
plot(frqYPMMODwc,YPMMODwc);
title('Third Spectrum of the PM Modulated Signal With Noise(Changing Carrier Frequency)');
YPMDEMODwc = fft(YPMDEMODwc); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwc = abs(YPMDEMODwc(1:length(YPMDEMODwc)/2+1));
frqYPMDEMODwc = [0:length(YPMDEMODwc)-1]*Fspmwc/length(YPMDEMODwc)/2;
figure;
plot(frqYPMDEMODwc,YPMDEMODwc);
title('Third Spectrum of the PM Demodulated Signal With Noise(Changing Carrier Frequency)');


%   4th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwd = 300; % Sampling rate of signal
Fcpmwd = 40; % Carrier frequency
tpmwd = [0:Fspmwd]'/Fspmwd; % Sampling times
m=301;
n=1;
rpmd = randn(m,n,'double');
X = sin(2*pi*tpmwd);
X = X+rpmd;
devwd = 20; % Phase deviation in modulated signal
YPMMODwd = pmmod(X,Fcpmwd,Fspmwd,devwd); % Modulated Signal
YPMDEMODwd = pmdemod(YPMMODwd,Fcpmwd,Fspmwd,devwd); % Demodulated Signal
YPMMODwd = fft(YPMMODwd); % Discrete Fourier Transform of Modulated Signal
YPMMODwd = abs(YPMMODwd(1:length(YPMMODwd)/2+1));
frqYPMMODwd = [0:length(YPMMODwd)-1]*Fspmwd/length(YPMMODwd)/2; 
figure;
plot(frqYPMMODwd,YPMMODwd);
title('4th Spectrum of the PM Modulated Signal With Noise(Changing Deviation Phase)');
YPMDEMODwd = fft(YPMDEMODwd); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwd = abs(YPMDEMODwd(1:length(YPMDEMODwd)/2+1));
frqYPMDEMODwd = [0:length(YPMDEMODwd)-1]*Fspmwd/length(YPMDEMODwd)/2;
figure;
plot(frqYPMDEMODwd,YPMDEMODwd);
title('4th Spectrum of the PM Demodulated Signal With Noise(Changing Deviation Phase)');

%   5th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwe = 200; % Sampling rate of signal
Fcpmwe = 20; % Carrier frequency
tpmwe = [0:Fspmwe]'/Fspmwe; % Sampling times
m=201;
n=1;
rpme = randn(m,n,'double');
X = sin(2*pi*tpmwe);
X = X+rpme;
devwe = 10; % Frequency deviation in modulated signal
YPMMODwe = pmmod(X,Fcpmwe,Fspmwe,devwe); % Modulated Signal
YPMDEMODwe = pmdemod(YPMMODwe,Fcpmwe,Fspmwe,devwe); % Demodulated Signal
YPMMODwe = fft(YPMMODwe); % Discrete Fourier Transform of Modulated Signal
YPMMODwe = abs(YPMMODwe(1:length(YPMMODwe)/2+1));
frqYPMMODwe = [0:length(YPMMODwe)-1]*Fspmwe/length(YPMMODwe)/2; 
figure;
plot(frqYPMMODwe,YPMMODwe);
title('5th Spectrum of the PM Modulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');
YPMDEMODwe = fft(YPMDEMODwe); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwe = abs(YPMDEMODwe(1:length(YPMDEMODwe)/2+1));
frqYPMDEMODwe = [0:length(YPMDEMODwe)-1]*Fspmwe/length(YPMDEMODwe)/2;
figure;
plot(frqYPMDEMODwe,YPMDEMODwe);
title('5th Spectrum of the PM Demodulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');

%   6th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwf = 200; % Sampling rate of signal
Fcpmwf = 40; % Carrier frequency
tpmwf = [0:Fspmwf]'/Fspmwf; % Sampling times
m=201;
n=1;
rpmf = randn(m,n,'double');
X = sin(2*pi*tpmwf);
X = X+rpmf;
devwf = 20; % Frequency deviation in modulated signal
YPMMODwf = pmmod(X,Fcpmwf,Fspmwf,devwf); % Modulated Signal
YPMDEMODwf = pmdemod(YPMMODwf,Fcpmwf,Fspmwf,devwf); % Demodulated Signal
YPMMODwf = fft(YPMMODwf); % Discrete Fourier Transform of Modulated Signal
YPMMODwf = abs(YPMMODwf(1:length(YPMMODwf)/2+1));
frqYPMMODwf = [0:length(YPMMODwf)-1]*Fspmwf/length(YPMMODwf)/2; 
figure;
plot(frqYPMMODwf,YPMMODwf);
title('6th Spectrum of the PM Modulated Signal With Noise(Changing Sampling rate and Deviation Frequency)');
YPMDEMODwf = fft(YPMDEMODwf); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwf = abs(YPMDEMODwf(1:length(YPMDEMODwf)/2+1));
frqYPMDEMODwf = [0:length(YPMDEMODwf)-1]*Fspmwf/length(YPMDEMODwf)/2;
figure;
plot(frqYPMDEMODwf,YPMDEMODwf);
title('6th Spectrum of the PM Demodulated Signal With Noise(Changing Sampling rate and Deviation Frequency)');

%   7th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwg = 300; % Sampling rate of signal
Fcpmwg = 20; % Carrier frequency
tpmwg = [0:Fspmwg]'/Fspmwg; % Sampling times
m=301;
n=1;
rpmg = randn(m,n,'double');
X = sin(2*pi*tpmwg);
X = X+rpmg;
devwg = 20; % Frequency deviation in modulated signal
YPMMODwg = pmmod(X,Fcpmwg,Fspmwg,devwg); % Modulated Signal
YPMDEMODwg = pmdemod(YPMMODwg,Fcpmwg,Fspmwg,devwg); % Demodulated Signal
YPMMODwg = fft(YPMMODwg); % Discrete Fourier Transform of Modulated Signal
YPMMODwg = abs(YPMMODwg(1:length(YPMMODwg)/2+1));
frqYPMMODwg = [0:length(YPMMODwg)-1]*Fspmwg/length(YPMMODwg)/2; 
figure;
plot(frqYPMMODwg,YPMMODwg);
title('7th Spectrum of the PM Modulated Signal With Noise(Changing Carrier Frequency and Deviation Frequency)');
YPMDEMODwg = fft(YPMDEMODwg); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwg = abs(YPMDEMODwg(1:length(YPMDEMODwg)/2+1));
frqYPMDEMODwg = [0:length(YPMDEMODwg)-1]*Fspmwg/length(YPMDEMODwg)/2;
figure;
plot(frqYPMDEMODwg,YPMDEMODwg);
title('7th Spectrum of the PM Demodulated Signal With Noise(Changing Carrier frequency and Deviation Frequency)');

%   8th PM Modulation
%   Sinousoidal waveform is the initial waveform

Fspmwh = 200; % Sampling rate of signal
Fcpmwh = 20; % Carrier frequency
tpmwh = [0:Fspmwh]'/Fspmwh; % Sampling times
m=201;
n=1;
rpmh = randn(m,n,'double');
X = sin(2*pi*tpmwh);
X = X+rpmh;
devwh = 20; % Frequency deviation in modulated signal
YPMMODwh = pmmod(X,Fcpmwh,Fspmwh,devwh); % Modulated Signal
YPMDEMODwh = pmdemod(YPMMODwh,Fcpmwh,Fspmwh,devwh); % Demodulated Signal
YPMMODwh = fft(YPMMODwh); % Discrete Fourier Transform of Modulated Signal
YPMMODwh = abs(YPMMODwh(1:length(YPMMODwh)/2+1));
frqYPMMODwh = [0:length(YPMMODwh)-1]*Fspmwh/length(YPMMODwh)/2; 
figure;
plot(frqYPMMODwh,YPMMODwh);
title('8th Spectrum of the PM Modulated Signal With Noise(Changing Sampling rate and Carrier Frequency and Deviation Frequency)');
YPMDEMODwh = fft(YPMDEMODwh); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODwh = abs(YPMDEMODwh(1:length(YPMDEMODwh)/2+1));
frqYPMDEMODwh = [0:length(YPMDEMODwh)-1]*Fspmwh/length(YPMDEMODwh)/2;
figure;
plot(frqYPMDEMODwh,YPMDEMODwh);
title('8th Spectrum of the PM Demodulated Signal With Noise(Changing Sampling rate and Carrier Frequency and Deviation Frequency)');

%% Voice Recorded With PM MOD and PM DEMOD
% Recording voice for 5 seconds
clear all
clc
recObj = audiorecorder;
disp('start speaking')
recordblocking(recObj,5); % Recording audio
disp('End of the speaking')
play(recObj); % playing audio
myRecording = getaudiodata(recObj); % storing audio
figure;
plot(myRecording)
title('This is the Original Voice That has been Recorded')
Fspmvwa = 300; % Sampling rate of signal
Fcpmvwa = 40; % Carrier frequency
tpmvwa = [0:Fspmvwa]'/Fspmvwa; % Sampling times
m=40000;
n=1;
rpmva = randn(m,n,'double');
myRecording = myRecording+rpmva;
devvwa = 10; % Frequency deviation in modulated signal
YPMMODvwa = pmmod(myRecording,Fcpmvwa,Fspmvwa,devvwa); % Modulated Signal
YPMDEMODvwa = pmdemod(YPMMODvwa,Fcpmvwa,Fspmvwa,devvwa); % Demodulated Signal
YPMMODvwa = fft(YPMMODvwa); % Discrete Fourier Transform of Modulated Signal
YPMMODvwa = abs(YPMMODvwa(1:length(YPMMODvwa)/2+1));
frqYPMMODvwa = [0:length(YPMMODvwa)-1]*Fspmvwa/length(YPMMODvwa)/2; 
figure;
plot(frqYPMMODvwa,YPMMODvwa);
title('This is the output voice which has becomed modulated in PM Modulation and added by noise');
YPMDEMODvwa = fft(YPMDEMODvwa); % Discrete Fourier Transform of Demodulated Signal
YPMDEMODvwa = abs(YPMDEMODvwa(1:length(YPMDEMODvwa)/2+1));
frqYPMDEMODvwa = [0:length(YPMDEMODvwa)-1]*Fspmvwa/length(YPMDEMODvwa)/2;
figure;
plot(frqYPMDEMODvwa,YPMDEMODvwa);
title('This is the output voice which has becomed Demodulated in PM Demodulation and added by noise');

%%  WITHOUT NOISE

%   First SSB Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fswoa = 300; % First Sampling rate
Fcwoa = 40; % First Carrier Frequency
twoa = [0:2*Fswoa+1]/Fswoa;
X = sin(2*pi*twoa);
[numwoa,denwoa] = butter(10,Fcwoa*2/Fswoa); % Lowpass filter
YSSBMODwoa = ssbmod(X,Fcwoa,Fswoa,0); % Modulated Signal
YSSBDEMODwoa = ssbdemod(YSSBMODwoa,Fcwoa,Fswoa); % Demodulated Signal
YSSBMODwoa = fft(YSSBMODwoa); % Discrete Fourier Transform of Modulated Signal
YSSBMODwoa = abs(YSSBMODwoa(1:length(YSSBMODwoa)/2+1));
frqYSSBMODwoa = [0:length(YSSBMODwoa)-1]*Fswoa/length(YSSBMODwoa)/2; 
figure;
plot(frqYSSBMODwoa,YSSBMODwoa);
title('First Spectrum of the SSB Modulated Signal');
YSSBDEMODwoa = fft(YSSBDEMODwoa); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwoa = abs(YSSBDEMODwoa(1:length(YSSBDEMODwoa)/2+1));
frqYSSBDEMODwoa = [0:length(YSSBDEMODwoa)-1]*Fswoa/length(YSSBDEMODwoa)/2;
figure;
plot(frqYSSBDEMODwoa,YSSBDEMODwoa);
title('First Spectrum of the SSB Demodulated Signal');

%   Second SSB Modulation
%   Sinousoidal waveform is the initial waveform
Fswob = 200; % Second Sampling rate
Fcwob = 40; % First Carrier Frequency
twob = [0:2*Fswob+1]/Fswob;
X = sin(2*pi*twob);
[numwob,denwob] = butter(10,Fcwob*2/Fswob); % Lowpass filter
YSSBMODwob = ssbmod(X,Fcwob,Fswob,0); % Modulated Signal
YSSBDEMODwob = ssbdemod(YSSBMODwob,Fcwob,Fswob); % Demodulated Signal
YSSBMODwob = fft(YSSBMODwob); % Discrete Fourier Transform
YSSBMODwob = abs(YSSBMODwob(1:length(YSSBMODwob)/2+1));
frqYSSBMODwob = [0:length(YSSBMODwob)-1]*Fswob/length(YSSBMODwob)/2; 
figure;
plot(frqYSSBMODwob,YSSBMODwob);
title('Second Spectrum of the SSB Modulated Signal(Changing Sampling rate)');
YSSBDEMODwob = fft(YSSBDEMODwob); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwob = abs(YSSBDEMODwob(1:length(YSSBDEMODwob)/2+1));
frqYSSBDEMODwob = [0:length(YSSBDEMODwob)-1]*Fswob/length(YSSBDEMODwob)/2;
figure;
plot(frqYSSBDEMODwob,YSSBDEMODwob);
title('Second Spectrum of the SSB Demodulated Signal(Changing Sampling rate)');


%   Third SSB Modulation
%   Sinousoidal waveform is the initial waveform
Fswoc = 300; % First Sampling rate
Fcwoc = 20; % Second Carrier Frequency
twoc = [0:2*Fswoc+1]/Fswoc;
X = sin(2*pi*twoc);
[numwoc,denwoc] = butter(10,Fcwoc*2/Fswoc); % Lowpass filter
YSSBMODwoc = ssbmod(X,Fcwoc,Fswoc,0); % Modulated Signal
YSSBDEMODwoc = ssbdemod(YSSBMODwoc,Fcwoc,Fswoc); % Demodulated Signal
YSSBMODwoc = fft(YSSBMODwoc); % Discrete Fourier Transform
YSSBMODwoc = abs(YSSBMODwoc(1:length(YSSBMODwoc)/2+1));
frqYSSBMODwoc = [0:length(YSSBMODwoc)-1]*Fswoc/length(YSSBMODwoc)/2; 
figure;
plot(frqYSSBMODwoc,YSSBMODwoc);
title('Third Spectrum of the SSB Modulated Signal(Changing Carrier Frequency)');
YSSBDEMODwoc = fft(YSSBDEMODwoc); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwoc = abs(YSSBDEMODwoc(1:length(YSSBDEMODwoc)/2+1));
frqYSSBDEMODwoc = [0:length(YSSBDEMODwoc)-1]*Fswoc/length(YSSBDEMODwoc)/2;
figure;
plot(frqYSSBDEMODwoc,YSSBDEMODwoc);
title('Third Spectrum of the SSB Demodulated Signal(Changing Carrier Frequency)');

%   4th SSB Modulation
%   Sinousoidal waveform is the initial waveform
Fswod = 200; % Second Sampling rate
Fcwod = 20; % Second Carrier Frequency
twod = [0:2*Fswod+1]'/Fswod;
X = sin(2*pi*twod);
[numwod,denwod] = butter(10,Fcwod*2/Fswod); % Lowpass filter
YSSBMODwod = ssbmod(X,Fcwod,Fswod,0); % Modulated Signal
YSSBDEMODwod = ssbdemod(YSSBMODwod,Fcwod,Fswod); % Demodulated Signal
YSSBMODwod = fft(YSSBMODwod); % Discrete Fourier Transform
YSSBMODwod = abs(YSSBMODwod(1:length(YSSBMODwod)/2+1));
frqYSSBMODwod = [0:length(YSSBMODwod)-1]*Fswod/length(YSSBMODwod)/2; 
figure;
plot(frqYSSBMODwod,YSSBMODwod);
title('4th Spectrum of the SSB Modulated Signal(Changing Sampling rate and Carrier Frequency)');
YSSBDEMODwod = fft(YSSBDEMODwod); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwod = abs(YSSBDEMODwod(1:length(YSSBDEMODwod)/2+1));
frqYSSBDEMODwod = [0:length(YSSBDEMODwod)-1]*Fswod/length(YSSBDEMODwod)/2;
figure;
plot(frqYSSBDEMODwod,YSSBDEMODwod);
title('4th Spectrum of the SSB Demodulated Signal(Changing Sampling rate and Carrier Frequency)');

%%  WITH NOISE
%   First SSB Modulation
%   Sinousoidal waveform is the initial waveform
clear all
clc
Fswa = 300; % First Sampling rate
Fcwa = 40; % First Carrier Frequency
twa = [0:2*Fswa+1]/Fswa;
n=602;
m=1;
ra = randn(m,n,'double');
X = sin(2*pi*twa);
X = X+ra;
[numwa,denwa] = butter(10,Fcwa*2/Fswa); % Lowpass filter
YSSBMODwa = ssbmod(X,Fcwa,Fswa,0); % Modulated Signal
YSSBDEMODwa = ssbdemod(YSSBMODwa,Fcwa,Fswa); % Demodulated Signal
YSSBMODwa = fft(YSSBMODwa); % Discrete Fourier Transform
YSSBMODwa = abs(YSSBMODwa(1:length(YSSBMODwa)/2+1));
frqYSSBMODwa = [0:length(YSSBMODwa)-1]*Fswa/length(YSSBMODwa)/2; 
figure;
plot(frqYSSBMODwa,YSSBMODwa);
title('First Spectrum of the SSB Modulated Signal With Noise');
YSSBDEMODwa = fft(YSSBDEMODwa); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwa = abs(YSSBDEMODwa(1:length(YSSBDEMODwa)/2+1));
frqYSSBDEMODwa = [0:length(YSSBDEMODwa)-1]*Fswa/length(YSSBDEMODwa)/2;
figure;
plot(frqYSSBDEMODwa,YSSBDEMODwa);
title('First Spectrum of the SSB Demodulated Signal With Noise');

%   Second SSB Modulation
%   Sinousoidal waveform is the initial waveform
Fswb = 200; % Second Sampling rate
Fcwb = 40; % First Carrier Frequency
twb = [0:2*Fswb+1]/Fswb;
n=402;
m=1;
rb = randn(m,n,'double');
X = sin(2*pi*twb);
X = X+rb;
[numwb,denwb] = butter(10,Fcwb*2/Fswb); % Lowpass filter
YSSBMODwb = ssbmod(X,Fcwb,Fswb,0); % Modulated Signal
YSSBDEMODwb = ssbdemod(YSSBMODwb,Fcwb,Fswb); % Demodulated Signal
YSSBMODwb = fft(YSSBMODwb); % Discrete Fourier Transform
YSSBMODwb = abs(YSSBMODwb(1:length(YSSBMODwb)/2+1));
frqYSSBMODwb = [0:length(YSSBMODwb)-1]*Fswb/length(YSSBMODwb)/2; 
figure;
plot(frqYSSBMODwb,YSSBMODwb);
title('Second Spectrum of the SSB Modulated Signal With Noise(Changing Sampling rate)');
YSSBDEMODwb = fft(YSSBDEMODwb); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwb = abs(YSSBDEMODwb(1:length(YSSBDEMODwb)/2+1));
frqYSSBDEMODwb = [0:length(YSSBDEMODwb)-1]*Fswb/length(YSSBDEMODwb)/2;
figure;
plot(frqYSSBDEMODwb,YSSBDEMODwb);
title('Second Spectrum of the SSB Demodulated Signal With Noise(Changing Sampling rate)');


%   Third SSB Modulation
%   Sinousoidal waveform is the initial waveform
Fswc = 300; % First Sampling rate
Fcwc = 20; % Second Carrier Frequency
twc = [0:2*Fswc+1]/Fswc;
n=602;
m=1;
rc = randn(m,n,'double');
X = sin(2*pi*twc);
X = X+rc;
[numwc,denwc] = butter(10,Fcwc*2/Fswc); % Lowpass filter
YSSBMODwc = ssbmod(X,Fcwc,Fswc,0); % Modulated Signal
YSSBDEMODwc = ssbdemod(YSSBMODwc,Fcwc,Fswc); % Demodulated Signal
YSSBMODwc = fft(YSSBMODwc); % Discrete Fourier Transform
YSSBMODwc = abs(YSSBMODwc(1:length(YSSBMODwc)/2+1));
frqYSSBMODwc = [0:length(YSSBMODwc)-1]*Fswc/length(YSSBMODwc)/2; 
figure;
plot(frqYSSBMODwc,YSSBMODwc);
title('Third Spectrum of the SSB Modulated Signal With Noise(Changing Carrier Frequency)');
YSSBDEMODwc = fft(YSSBDEMODwc); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwc = abs(YSSBDEMODwc(1:length(YSSBDEMODwc)/2+1));
frqYSSBDEMODwc = [0:length(YSSBDEMODwc)-1]*Fswc/length(YSSBDEMODwc)/2;
figure;
plot(frqYSSBDEMODwc,YSSBDEMODwc);
title('Third Spectrum of the SSB Demodulated Signal With Noise(Changing Carrier Frequency)');


%   4th SSB Modulation
%   Sinousoidal waveform is the initial waveform
Fswd = 200; % Second Sampling rate
Fcwd = 20; % Second Carrier Frequency
twd = [0:2*Fswd+1]'/Fswd;
m=402;
n=1;
rd = randn(m,n,'double');
X = sin(2*pi*twd);
X = X+rd;
[numwd,denwd] = butter(10,Fcwd*2/Fswd); % Lowpass filter
YSSBMODwd = ssbmod(X,Fcwd,Fswd,0); % Modulated Signal
YSSBDEMODwd = ssbdemod(YSSBMODwd,Fcwd,Fswd); % Demodulated Signal
YSSBMODwd = fft(YSSBMODwd); % Discrete Fourier Transform
YSSBMODwd = abs(YSSBMODwd(1:length(YSSBMODwd)/2+1));
frqYSSBMODwd = [0:length(YSSBMODwd)-1]*Fswd/length(YSSBMODwd)/2; 
figure;
plot(frqYSSBMODwd,YSSBMODwd);
title('4th Spectrum of the SSB Modulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');
YSSBDEMODwd = fft(YSSBDEMODwd); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODwd = abs(YSSBDEMODwd(1:length(YSSBDEMODwd)/2+1));
frqYSSBDEMODwd = [0:length(YSSBDEMODwd)-1]*Fswd/length(YSSBDEMODwd)/2;
figure;
plot(frqYSSBDEMODwd,YSSBDEMODwd);
title('4th Spectrum of the SSB Demodulated Signal With Noise(Changing Sampling rate and Carrier Frequency)');


%% Voice Recorded With AM MOD and AM DEMOD
% Recording voice for 5 seconds
clear all
clc
recObj = audiorecorder;
disp('start speaking')
recordblocking(recObj,5); % Recording audio
disp('End of the speaking')
play(recObj); % playing audio
myRecording = getaudiodata(recObj); % storing audio
figure;
plot(myRecording)
title('This is the Original Voice That has been Recorded')
Fsvwa = 20*40000; % First Sampling rate
Fcvwa = 40000; % First Carrier Frequency
tsvwa = [0:2*Fsvwa+1]/Fsvwa;
n=1;
m=40000;
rva = randn(m,n,'double');
myRecording = myRecording + rva;
[numvwa,denvwa] = butter(10,Fcvwa*2/Fsvwa); % Lowpass filter
YSSBMODvwa = ssbmod(myRecording,Fcvwa,Fsvwa,0); % Modulated Signal
YSSBDEMODvwa = ssbdemod(YSSBMODvwa,Fcvwa,Fsvwa); % Demodulated Signal
YSSBMODvwa = fft(YSSBMODvwa); % Discrete Fourier Transform
YSSBMODvwa = abs(YSSBMODvwa(1:length(YSSBMODvwa)/2+1));
frqYSSBMODvwa = [0:length(YSSBMODvwa)-1]*Fsvwa/length(YSSBMODvwa)/2; 
figure;
plot(frqYSSBMODvwa,YSSBMODvwa);
title('This is the output voice which has becomed modulated in SSB Modulation and added by noise');
YSSBDEMODvwa = fft(YSSBDEMODvwa); % Discrete Fourier Transform of Demodulated Signal
YSSBDEMODvwa = abs(YSSBDEMODvwa(1:length(YSSBDEMODvwa)/2+1));
frqYSSBDEMODvwa = [0:length(YSSBDEMODvwa)-1]*Fsvwa/length(YSSBDEMODvwa)/2;
figure;
plot(frqYSSBDEMODvwa,YSSBDEMODvwa);
title('This is the output voice which has becomed demodulated in SSB Demodulation and added by noise');


