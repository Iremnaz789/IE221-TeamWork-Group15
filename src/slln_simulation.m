%% SLLN Simulation - IE221 Team Work 3
% This script experimentally verifies the Strong Law of Large Numbers (SLLN)
% using independent Uniform(0,1) random variables.
%
% The script demonstrates almost sure convergence of the cumulative
% sample mean to the true expected value as the number of observations
% increases.
%
% INPUTS (script parameters):
%   n  - total number of observations
%
% OUTPUTS:
%   - Convergence plot of the cumulative sample mean
%
% This script is documented to satisfy Task 1: Code Documentation.

clear; clc; close all;

%% Parameters
n = 10000;     % Total number of observations (INPUT)
mu = 0.5;      % True mean of Uniform(0,1)

%% Generate samples
samples = rand(n,1);     % Generate i.i.d. Uniform(0,1) random variables

%% Compute cumulative mean
cumulative_mean = cumsum(samples) ./ (1:n)';   % Cumulative sample mean

%% Plot convergence
figure;
plot(cumulative_mean, 'b', 'LineWidth', 1.2);
hold on;
yline(mu, 'r--', 'LineWidth', 1.5);
grid on;

xlabel('Number of observations (n)');
ylabel('Cumulative Mean');
title('SLLN: Convergence of Sample Mean to Expected Value');
legend('Cumulative Mean', 'True Mean (0.5)');

%% Create folders safely
if ~exist('../results', 'dir')
    mkdir('../results');
end
if ~exist('../results/figures', 'dir')
    mkdir('../results/figures');
end

%% Save figure
saveas(gcf, '../results/figures/slln_convergence.png');
