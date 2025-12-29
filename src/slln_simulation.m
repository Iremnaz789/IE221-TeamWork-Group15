% Task 2 - SLLN Simulation (Uniform[0,1])

clear; clc; close all;

% Parameters
n = 10000;
mu = 0.5;

% Generate samples
samples = rand(n,1);

% Cumulative mean
cumulative_mean = cumsum(samples) ./ (1:n)';

% Plot
figure;
plot(cumulative_mean, 'b', 'LineWidth', 1.2);
hold on;
yline(mu, 'r--', 'LineWidth', 1.5);
grid on;

xlabel('Number of observations (n)');
ylabel('Cumulative Mean');
title('SLLN: Convergence of Sample Mean to Expected Value');
legend('Cumulative Mean', 'True Mean (0.5)');

% Create folders safely
if ~exist('../results', 'dir')
    mkdir('../results');
end
if ~exist('../results/figures', 'dir')
    mkdir('../results/figures');
end

% Save figure
saveas(gcf, '../results/figures/slln_convergence.png');