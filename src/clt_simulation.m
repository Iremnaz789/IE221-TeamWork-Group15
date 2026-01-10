%% CLT Simulation - IE221 Team Work 3
% This script experimentally verifies the Central Limit Theorem (CLT)
% using Monte Carlo simulations.
%
% The script generates sums of independent Uniform(0,1) random variables
% for different sample sizes and demonstrates convergence in distribution
% to the standard normal distribution using histograms and Q-Q plots.
%
% INPUTS (script parameters):
%   n_values - vector of sample sizes used in the simulation
%   m        - number of Monte Carlo replications
%
% OUTPUTS:
%   - Histograms of standardized sums
%   - Normal Q-Q plots
%
% This script is documented to satisfy Task 1: Code Documentation.

clear; clc; close all;

%% Parameters
mu = 0.5;                 % True mean of Uniform(0,1)
sigma = sqrt(1/12);       % Standard deviation of Uniform(0,1)

n_values = [2 5 10 30 50];  % Different sample sizes (INPUT)
m = 1000;                  % Number of Monte Carlo replications (INPUT)

%% Histogram Plots
figure;
for i = 1:length(n_values)
    n = n_values(i);

    % Generate sums of Uniform(0,1) random variables
    sums = sum(rand(m, n), 2);

    % Standardize sums according to the CLT
    Z = (sums - n * mu) / (sigma * sqrt(n));

    % Plot histogram of standardized sums
    subplot(1, length(n_values), i)
    histogram(Z, 'Normalization', 'pdf')
    hold on

    % Plot standard normal density for comparison
    x = linspace(-4, 4, 200);
    plot(x, normpdf(x, 0, 1), 'LineWidth', 2)

    title(['n = ', num2str(n)])
    xlabel('Z')
    ylabel('Density')
end

sgtitle('CLT: Histograms of Standardized Sums')

% Save histogram figure
saveas(gcf, '../results/figures/clt_histograms.png')

%% Q-Q Plots
figure;
for i = 1:length(n_values)
    n = n_values(i);

    % Generate sums and standardize again for Q-Q analysis
    sums = sum(rand(m, n), 2);
    Z = (sums - n * mu) / (sigma * sqrt(n));

    % Normal Q-Q plot
    subplot(1, length(n_values), i)
    qqplot(Z)
    title(['n = ', num2str(n)])
end

sgtitle('CLT: Normal Q-Q Plots')

% Save Q-Q plot figure
saveas(gcf, '../results/figures/clt_qqplots.png')
