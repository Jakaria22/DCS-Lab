clc;
clear all;
close all;

%take inputs
Am=input("Enter amplitude of message signal(V): ");
Ac=input("Enter amplitude of carrier signal (V): ");
fm=input("Enter frequency of message signal (Hz): ");
fc=input("Enter frequency of message signal (Hz): ");
m=input("Modulation index: ");


fs=10000;
%time interval
t=(0:0.1*fs)/fs;


%message signal
message=Am*cos(2*pi*fm*t);

%carrier signal
carrier=Ac*cos(2*pi*fc*t);

%modulated signal
fm=Ac*cos((2*pi*fc*t)+ m*sin(2*pi*fm*t));

%plot message signal
subplot(311);
plot(t,message);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');

%plot carrier signal
subplot(312);
plot(t,carrier);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');

%plot modulated signal
subplot(313);
plot(t,fm);
xlabel('Time');
ylabel('Amplitude');
title('FM signal');
