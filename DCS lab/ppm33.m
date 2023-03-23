% Define the frequency of the PWM signal
pwm_frequency = 100; % Hz

% Define the duty cycle of the PWM signal
pwm_duty_cycle = 50; % percent

% Define the pulse width of the PPM signal
ppm_pulse_width = 2; % milliseconds

% Define the number of channels in the PPM signal
ppm_num_channels = 4;

% Define the values for each channel in the PPM signal
ppm_values = [1000, 1500, 2000, 2500]; % microseconds

% Define the duration of the PPM signal
ppm_duration = (ppm_pulse_width * ppm_num_channels) / 1000; % seconds

% Create the time vector for both signals
t = 0:1/(pwm_frequency*1000):ppm_duration;

% Generate the PWM signal
pwm_signal = pwm_duty_cycle/100 * square(2*pi*pwm_frequency*t) + 0.5;

% Generate the PPM signal
ppm_signal = zeros(size(t));
for i = 1:ppm_num_channels
    ppm_signal((i-1)*length(t)/ppm_num_channels+1:i*length(t)/ppm_num_channels) = ppm_values(i)/ppm_pulse_width;
end

% Plot the signals
figure;
subplot(2,1,1);
plot(t, pwm_signal);
ylim([-0.1 1.1]);
title('PWM Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,1,2);
plot(t, ppm_signal);
ylim([-0.1 max(ppm_values)/ppm_pulse_width+0.1]);
title('PPM Signal');
xlabel('Time (s)');
ylabel('Amplitude');

