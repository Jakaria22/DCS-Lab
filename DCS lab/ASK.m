clc;
close all;
clear all;
fc=input('Enter the freq of Sine Wave carrier:');
fp=input('Enter the freq of Periodic Binary pulse (Message):');
amp=input('Enter the amplitude (For Carrier & Binary Pulse Message):');
t=0:0.001:1; % For setting the sampling interval

%carrier signal
carr=amp.*sin(2*pi*fc*t);

%message signal
message=amp/2.*square(2*pi*fp*t)+(amp/2);

%ask signal
ask=carr.*message;

%plot message signal
subplot(311);
plot(t,message);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message Pulses');

%plot carrier signal
subplot(312);
plot(t,carr);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');

%plot modulated signal
subplot(313);
plot(t,ask);
xlabel('Time');
ylabel('Amplitude');
title('ASK signal');
