%EXPERIMENT 5
%Sebin Sebastian
%ECE B,22

clc;
clear all;
close all;
%1(a) y(n)=x(n)-x(n-1)
b=[-1,1];
a= [1];
w=0:0.01:pi;
H=freqz(b,a,w);
figure (1)
subplot(2,2,1)
plot(w/pi,abs(H))
xlabel("normalized frequency")
ylabel("magnitude")
title("magnitude response")
subplot(2,2,2)
plot(w/pi,20*log(abs(H)))
xlabel("normalised frequency")
ylabel("magnitude")
title("magnitude response in db")
subplot(2,2,3)
plot(w/pi,angle(H))
xlabel("normalised frequency")
ylabel("phase angle in radians")
title("phase response")
subplot(2,2,4)
h=impz(b,a,20);
stem(h);
xlabel("n")
ylabel("amplitude")
title("impluse response")

%(b) y(n)=0.2x(n)+0.2x(n-1)+0.6y(n-1)
b=[1,-0.6];
a= [0.2,0.2];
w=0:0.01:pi;
H=freqz(b,a,w);
figure (2)
subplot(2,2,1)
plot(w/pi,abs(H))
xlabel("normalized frequency")
ylabel("magnitude")
title("magnitude response")
subplot(2,2,2)
plot(w/pi,20*log(abs(H)))
xlabel("normalised frequency")
ylabel("magnitude")
title("magnitude response in db")
subplot(2,2,3)
plot(w/pi,angle(H))
xlabel("normalised frequency")
ylabel("phase angle in radians")
title("phase response")
subplot(2,2,4)
h=impz(b,a,20);
stem(h);
xlabel("n")
ylabel("amplitude")
title("impluse response")

% 2(a) y(n)=0.5x(n)+x(n-1)+0.5x(n-2)
b=[1];
a= [0.5,1,0.5];
w=0:0.01:pi;
H=freqz(b,a,w);
figure (3)
subplot(2,2,1)
plot(w/pi,abs(H))
xlabel("normalized frequency")
ylabel("magnitude")
title("magnitude response")
subplot(2,2,2)
plot(w/pi,20*log(abs(H)))
xlabel("normalised frequency")
ylabel("magnitude")
title("magnitude response in db")
subplot(2,2,3)
plot(w/pi,angle(H))
xlabel("normalised frequency")
ylabel("phase angle in radians")
title("phase response")
subplot(2,2,4)
h=impz(b,a,20);
stem(h);
xlabel("n")
ylabel("amplitude")
title("impluse response")

% (b) y(n)=x(n)+0.9x(n-2)+0.4y(n-2)
b=[1,0,0.4];
a= [1,0,0.9];
w=0:0.01:pi;
H=freqz(b,a,w);
figure (4)
subplot(2,2,1)
plot(w/pi,abs(H))
xlabel("normalized frequency")
ylabel("magnitude")
title("magnitude response")
subplot(2,2,2)
plot(w/pi,20*log(abs(H)))
xlabel("normalised frequency")
ylabel("magnitude")
title("magnitude response in db")
subplot(2,2,3)
plot(w/pi,angle(H))
xlabel("normalised frequency")
ylabel("phase angle in radians")
title("phase response")
subplot(2,2,4)
h=impz(b,a,20);
stem(h);
xlabel("n")
ylabel("amplitude")
title("impluse response")
