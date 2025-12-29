% Monte Carlo Pi Estimation
% IE221 - TeamWork 3
% Task 4

clc;
clear;

N = 10000;                 % Total number of random points
inside = 0;                % Counter for points inside the quarter circle
pi_estimates = zeros(N,1); % Store pi estimates

for i = 1:N
    x = rand;              % Random x in [0,1]
    y = rand;              % Random y in [0,1]
    
    if x^2 + y^2 <= 1
        inside = inside + 1;
    end
    
    pi_estimates(i) = 4 * inside / i;
end

figure;
plot(1:N, pi_estimates, 'b');
yline(pi, 'r--', 'LineWidth', 2);
xlabel('Number of points (n)');
ylabel('Estimated \pi');
title('Monte Carlo Estimation of \pi');
grid on;

% Save figure
mkdir ../results
mkdir ../results/figures
saveas(gcf, '../results/figures/pi_estimation.png');






