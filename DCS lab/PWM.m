fm=input('Message frequency:');
fs=input('Carrier Sawtooth frequency:');

a=input('Enter Amplitude of Message:');
b=input('Enter Amplitude of carrier:');

t=0:0.0001:1; %sampling rate of 10kHz

stooth=b.*sawtooth(2*pi*fs*t); %generating a sawtooth wave
%to make the two non zero lobes of pwm not to overlap the amplitude of
%sawtooth wave must be atleast more than a bit to the message amplitude

subplot(3,1,1);
plot(t,stooth); % plotting the sawtooth wave
title('Comparator Wave');

msg=a.*sin(2*pi*fm*t); %generating message wave
subplot(3,1,2);
plot(t,msg); %plotting the sine message wave
title('Message Signal');


for i=1:length(stooth)
if (msg(i)>=stooth(i))
    pwm(i)=1; %is message signal amplitude at i th sample is greater than
    %sawtooth wave amplitude at i th sample
else
    pwm(i)=0;
end
end

subplot(3,1,3);
plot(t,pwm);
title('PWM');
axis([0 1 0 1.3]); %to keep the pwm visible during plotting.
