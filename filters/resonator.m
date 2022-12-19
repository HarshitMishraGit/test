clc;clear;close;
f=input('enter the frequency in hz');
fs=input('enter the sampling rate');
r=input('enter the radius of the pole in the z-plane');

w=2*pi*f/fs;
p1=exp(i*w);
p2=exp(-i*w);
%case 1:
z=1;
%case 2:
%z1=r*exp(i*w);z2=r*exp(-i*w);
p=[p1;p2];
%z=[z1:z2];
b=poly(z);
a=poly(p);
freq_rad=-pi:pi/101:pi;
figure(1);zplane(z,p);
figure(2);
H=freqz(b,a,freq_rad);
freq_Hz=(freq_rad*fs)/(2*pi);
plot(freq_Hz,abs(H));
xlabel('freq.(Hz)');
ylabel('Magnitude');
