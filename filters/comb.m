clear;clc;close all
fs=500;
fundamental=50;
M=(fs/fundamental)
k=1:M;
w=2*pi*k/(M);
z=exp(i*w');
p=1;
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
