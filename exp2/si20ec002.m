clc;
clear;
close;
fm=input('fequency');
fs=input('sampling frequency');
m=input('number of the cycle');
t=0.0001:1/fs:m/fm;
x=3*cos(2*pi*fm*t);
N=(m*fs/fm);
k=0:N-1;
f=k*fs/N;
figure(1);stem(f,abs(X1));xlabel('fre in hz');ylabel('Mag');