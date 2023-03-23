clc;
clear all;
close all;
am=input('Enter the message signal amplitude= ');
ac=input('Enter the carrier signal amplitude= ');
fm=input('Enter the message signal frequency= ');
fc=input('Enter the carrier signal frequency= ');
t=input('Enter the time period= ');
m=input('Enter the modulating index= ');
tt=linspace(0,t,1000);
y1=am*sin(2*pi*fm*tt);
y2=ac*sin(2*pi*fc*tt);
pm=ac*sin(2*pi*fc*tt+m*sin(2*pi*fm*tt));

subplot(311);
plot(tt,y1);
title('message signal');

subplot(312);
plot(tt,y2);
title('carrier signal');

subplot(313);
plot(tt,pm);
title('PM signal');

