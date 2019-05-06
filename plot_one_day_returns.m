function plt = plot_one_day_returns(closing_prices)
for i = 1:size(closing_prices,2)
    returns = [returns; one_day_returns(closing_prices(:,i))];
end
plt = histogram(returns); 
end
