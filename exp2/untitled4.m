a=[1 2 3 4 ];
b=[1 2 3 4 1 2 3 4];
A=abs(fft(a));
B=abs(fft(b));
figure(4);subplot(221),stem(a),xlabel('n'),ylabel('x[n'),subplot(223),
stem(b),xlabel('n'),ylabel('x1[n]'),subplot(222),stem(A),xlabel('k'),
ylabel('X[k'),subplot(224),stem(B),
xlabel('k'),ylabel('X1[k]');