%Please Read data
data=q;
fc=2.11*10000;
fs=48*1000;
Wn_bandpass =[0.90 0.95];
B=fir1(100,Wn_bandpass,'bandpass');
for i=1:5
    data=filter(B,1,data);
end
%Envelope Detection
envelope_voice=envelope(data);          
a=1;
x=zeros(length(data),1);
%Synchronous Detection
for t=1/fs:1/fs:length(data)/fs         
    x(a)=cos(2*pi*fc*t);
    a=a+1;
end
synch_data=data.*x;
Wn_lowpass = 0.08;
B=fir1(100,Wn_lowpass);
for i=1:5
    synch_data=filter(B,1,synch_data);
end
synch_voice=synch_data;
psd(synch_voice,4096,fs);
sound(100*synch_voice,fs)
audiowrite('synch_voice.m4a',100*synch_voice,fs);
audiowrite('envelope_voice.m4a',100*envelope_voice,fs);
%Now you can hear Envelope voice or synch