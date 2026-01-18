%% IE221 - TeamWork 5
% Uniform(0,1) - SLLN & CLT
clear; clc; close all;

outDir = "TW5_uniform_outputs";
if ~exist(outDir,"dir")
    mkdir(outDir);
end

rng(42);

mu = 0.5;
sigma = sqrt(1/12);

%% -------- SLLN --------
nSLLN = 10000;
X = rand(nSLLN,1);
cumMean = cumsum(X)./(1:nSLLN)';

figure;
plot(cumMean,'LineWidth',1);
hold on;
yline(mu,'--','Mean = 0.5');
hold off;
xlabel('n');
ylabel('Cumulative Mean');
title('SLLN - Uniform(0,1)');
grid on;

saveas(gcf, fullfile(outDir,'slln_cummean.png'));

%% -------- CLT --------
nList = [2 5 10 30 50 100];
m = 1000;

for n = nList
    Xm = rand(m,n);
    Xbar = mean(Xm,2);
    Z = (Xbar - mu)./(sigma/sqrt(n));

    % Histogram
    figure;
    histogram(Z,'Normalization','pdf');
    hold on;
    x = linspace(min(Z),max(Z),300);
    plot(x, normpdf(x,0,1),'LineWidth',1.5);
    hold off;
    title(['CLT Histogram - n = ',num2str(n)]);
    xlabel('Z');
    ylabel('Density');
    grid on;

    saveas(gcf, fullfile(outDir,['clt_hist_n',num2str(n),'.png']));

    % Q-Q plot
    figure;
    qqplot(Z);
    title(['CLT Q-Q Plot - n = ',num2str(n)]);
    grid on;

    saveas(gcf, fullfile(outDir,['clt_qq_n',num2str(n),'.png']));
end

disp("Uniform TW5 finished successfully");
