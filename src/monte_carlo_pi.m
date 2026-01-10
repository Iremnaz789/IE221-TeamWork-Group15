%% Monte Carlo Pi Estimation - IE221 Team Work 3
% This script estimates the value of pi using the Monte Carlo method.
%
% Random points are generated uniformly in the unit square [0,1] x [0,1].
% The ratio of points that fall inside the quarter unit circle is used
% to approximate the value of pi.
%
% INPUTS (script parameters):
%   N - total number of random points generated
%
% OUTPUTS:
%   - Convergence plot of Monte Carlo estimation of pi
%
% This script is documented to satisfy Task 1: Code Documentation.

clear; clc;

%% Parameters
N = 10000;                 % Total number of random points (INPUT)
inside = 0;                % Counter for points inside the quarter circle
pi_estimates = zeros(N,1); % Store pi estimates at each iteration

%% Monte Carlo Simulation
for i = 1:N
    % Generate random point in the unit square
    x = rand;              % Random x-coordinate in [0,1]
    y = rand;              % Random y-coordinate in [0,1]
    
    % Check if the point lies inside the quarter unit circle
    if x^2 + y^2 <= 1
        inside = inside + 1;
    end
    
    % Update pi estimate using current ratio
    pi_estimates(i) = 4 * inside / i;
end

%% Plot convergence of pi estimation
figure;
plot(1:N, pi_estimates, 'b', 'LineWidth', 1.2);
hold on;
yline(pi, 'r--', 'LineWidth', 2);
grid on;

xlabel('Number of points (n)');
ylabel('Estimated \pi');
title('Monte Carlo Estimation of \pi');
legend('Monte Carlo Estimate', 'True Value of \pi');

%% Create folders safely
if ~exist('../results', 'dir')
    mkdir('../results');
end
if ~exist('../results/figures', 'dir')
    mkdir('../results/figures');
end

%% Save figure
saveas(gcf, '../results/figures/pi_estimation.png');
