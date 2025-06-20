
fs = 1e3;             % Sampling freq
T = 10;               % Total simulation time 
dt = 1/fs;
t = 0:dt:T-dt;

f0 = 50;              % Transmitted signal frequency 
v_target = 30;        % Target speed 
x0 = 0;               % target position
c = 300;              % Wave propagation speed 


x_target = x0 + v_target * t;

tau = 2 * x_target / c;

rx_signal = cos(2*pi*f0*(t - tau));

rx_signal_noisy = rx_signal + 0.5 * randn(size(rx_signal));

window = cos(2*pi*f0*t); 
distance_estimates = zeros(size(t));

for i = 1:length(t)
    shift = finddelay(window, rx_signal_noisy(1:i));
    time_delay = shift * dt;
    distance_estimates(i) = c * time_delay / 2;
end

figure;
plot(t, rx_signal_noisy);
xlabel('Time (s)');
ylabel('Received Signal');
title('Simulated Radar Return Signal');
grid on;


figure;
plot(t, x_target, 'b', 'LineWidth', 1.5); hold on;
plot(t, distance_estimates, 'r--');
xlabel('Time (s)');
ylabel('Distance (m)');
title('Target Tracking');
legend('True Position', 'Estimated');
grid on;
