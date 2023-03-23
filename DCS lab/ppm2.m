fm = input('Enter message frequency (in Hz): ');
fc = input('Enter carrier frequency (in Hz): ');
fs = input('Enter sampling frequency (in Hz): ');
bits = input('Enter number of bits per message: ');

t = 0:1/fs:bits/fm; % time vector
msg = round(rand(1,bits)); % generate random binary message
ppm = zeros(1,length(t)); % initialize PPM waveform

% generate PPM waveform
for i = 1:bits
    if msg(i) == 1
        ppm((i-1)*fs/fm+1:i*fs/fm) = cos(2*pi*fc*t((i-1)*fs/fm+1:i*fs/fm));
    end
end

% plot PPM waveform and message
subplot(2,1,1);
plot(t,ppm);
xlabel('Time (s)');
ylabel('Amplitude');
title('PPM Waveform');
ylim([-1.2 1.2]);

subplot(2,1,2);
stem(msg);
xlabel('Bit Index');
ylabel('Amplitude');
title('Binary Message');


