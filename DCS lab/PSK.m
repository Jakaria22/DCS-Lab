clc;
close all;
clear all;
fp=input('Enter the freq of SPeriodic Binary pulse:');
fc=input('Enter the freq of carrier:');
amp=input('Enter the amplitude (For Carrier & Binary Pulse Message):');
t=0:0.001:1; % For setting the sampling interval

%carrier signal
carr=amp.*sin(2*pi*fc*t);

%message signal
message=amp.*square(2*pi*fp*t);

%ask signal
ask=message.*carr;

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
title('PSK signal');
