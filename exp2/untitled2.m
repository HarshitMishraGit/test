clc;clear all;close all;

x=input('enter the input sequence values x(n)=');
N=input('enter the size of DFT=');
X=fft(x,N)
Xa=abs(X);
Xp=angle(X)
k=0:N-1;
%w=([0:(N-1)]*2*pi)/N;
figure(1);
subplot(411),stem(x),xlabel('n'),ylabel('x(n)'),title('input sequence');
subplot(412),stem(k,Xa),xlabel('k'),ylabel('|X(k)|'),title('magnitude response');
subplot(413),stem(k,Xp),xlabel('k'),ylabel('phase of X(k)'),title('phase response');
x_cap=ifft(X);
subplot(414),stem(abs(x_cap)),xlabel('n'),ylabel('IDFT of X(k)'),title('Reconstructed sequence');