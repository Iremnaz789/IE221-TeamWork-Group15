% CLT analysis for heavy-tailed distributions
% Pareto (alpha = 1.5) and Cauchy
% IE221 - Team Work 5
% Responsible: Irem
n_values = [2 5 10 30 50 100];
m = 1000;
alpha = 1.5;
xm = 1;

for n = n_values
    Zvals = zeros(m,1);

    for i = 1:m
        % Generate Pareto(alpha=1.5) sample
        X = xm ./ (rand(n,1).^(1/alpha));

        % Empirical normalization (variance is infinite)
        Zvals(i) = (sum(X) - mean(X)*n) / std(X);
    end

    % Histogram
    figure;
    histogram(Zvals,'Normalization','pdf');
    title(['Pareto \alpha=1.5, n=', num2str(n)]);
    saveas(gcf, ['../results/clt/pareto_alpha_1_5/hist_n', num2str(n), '.png']);

    % Q-Q Plot
    figure;
    qqplot(Zvals);
    title(['Pareto \alpha=1.5 QQ, n=', num2str(n)]);
    saveas(gcf, ['../results/clt/pareto_alpha_1_5/qq_n', num2str(n), '.png']);
end
%% Cauchy Distribution - CLT Analysis

for n = n_values
    Zvals = zeros(m,1);

    for i = 1:m
        % Generate Cauchy sample (mean and variance do not exist)
        X = trnd(1,n,1);

        % Sample mean does not converge for Cauchy
        Zvals(i) = sum(X) / n;
    end

    % Histogram
    figure;
    histogram(Zvals,'Normalization','pdf');
    title(['Cauchy, n=', num2str(n)]);
    saveas(gcf, ['../results/clt/cauchy/hist_n', num2str(n), '.png']);

    % Q-Q Plot
    figure;
    qqplot(Zvals);
    title(['Cauchy QQ, n=', num2str(n)]);
    saveas(gcf, ['../results/clt/cauchy/qq_n', num2str(n), '.png']);
end