function r1 = one_day_returns(closing_prices)
closing_prices_shift = circshift(closing_prices,-1); 
r1 = closing_prices_shift-closing_prices;
r1 = r1(1:end-1); 
