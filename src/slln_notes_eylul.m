% =========================================================
% Strong Law of Large Numbers (SLLN) – Teamwork 5
%
% Responsible: Eylul Sena Altunsaray
%
% This file documents the SLLN simulation results obtained
% in MATLAB for the following distributions:
%   - Uniform(0,1)
%   - Exponential(lambda = 1)
%   - Pareto(alpha = 3)
%
% Method:
%   For n = 10,000 i.i.d. samples, cumulative means were
%   computed and plotted to observe convergence behavior.
%
% Conclusion:
%   Sample means converge to the theoretical expected value
%   when E[X] exists, confirming the Strong Law of Large
%   Numbers.
% =========================================================

clc;
clear;
close all;

n = 10000;

%% Uniform(0,1)
X = rand(1,n);
cumMean = cumsum(X)./(1:n);
figure;
plot(cumMean,'b');
yline(0.5,'r--');
title('SLLN - Uniform(0,1)');
xlabel('n');
ylabel('Cumulative Mean');

%% Exponential(lambda = 1)
X = exprnd(1,1,n);
cumMean = cumsum(X)./(1:n);
figure;
plot(cumMean,'b');
yline(1,'r--');
title('SLLN - Exponential(1)');
xlabel('n');
ylabel('Cumulative Mean');

%% Pareto(alpha = 3)
alpha = 3;
X = (rand(1,n).^(-1/alpha));
cumMean = cumsum(X)./(1:n);
figure;
plot(cumMean,'b');
yline(1.5,'r--');
title('SLLN - Pareto(\alpha = 3)');
xlabel('n');
ylabel('Cumulative Mean');
Add SLLN analysis notes for Teamwork 5

