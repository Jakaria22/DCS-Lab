clc;
clear all;
close all;

%take inputs
Em=input("Enter amplitude of message signal(V): ");
Ec=input("Enter amplitude of carrier signal (V): ");
fm=input("Enter frequency of message signal (Hz): ");
fc=input("Enter frequency of message signal (Hz): ");
%t1=input("Enter time period (s): ");


%time interval
%t=linspace(0,t1,1000);
fs=2000;
T=1/fs;
t=0:T:1;


%modulation index
m=Em/Ec;

%message signal
es=Em*cos(2*pi*fm*t);

%carrier signal
ec=Ec*cos(2*pi*fc*t);

%AM signal
am=Ec*cos(2*pi*fc*t)+((m*Ec)/2)*cos(2*pi*fc*t+2*pi*fm*t)+((m*Ec)/2)*cos(2*pi*fc*t-2*pi*fm*t)


%plot message signal
subplot(3,1,1)
plot(t,es);
xlabel('Time');
ylabel('Amplitude');
title('Message signal')

%plot carrier signal
subplot(3,1,2)
plot(t,ec);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal')

%plot AM signal
subplot(3,1,3)
plot(t,am);
xlabel('Time');
ylabel('Amplitude');
title('Amplitude Modulated signal')
