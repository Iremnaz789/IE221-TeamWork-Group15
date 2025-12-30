%% CLT Simulation - IE221 Team Work 3
% This script experimentally verifies the Central Limit Theorem (CLT)
% using sums of independent Uniform(0,1) random variables.

clear; clc; close all;

% Parameters
mu = 0.5;
sigma = sqrt(1/12);
n_values = [2 5 10 30 50];
m = 1000;

%% Histogram Plots
figure;
for i = 1:length(n_values)
    n = n_values(i);

    % Generate sums
    sums = sum(rand(m, n), 2);

    % Standardize
    Z = (sums - n * mu) / (sigma * sqrt(n));

    % Histogram
    subplot(1, length(n_values), i)
    histogram(Z, 'Normalization', 'pdf')
    hold on
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

    sums = sum(rand(m, n), 2);
    Z = (sums - n * mu) / (sigma * sqrt(n));

    subplot(1, length(n_values), i)
    qqplot(Z)
    title(['n = ', num2str(n)])
end

sgtitle('CLT: Normal Q-Q Plots')

% Save QQ plot figure
saveas(gcf, '../results/figures/clt_qqplots.png')

