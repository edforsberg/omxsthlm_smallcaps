function [tics, date, open, high, low, close, adj, vol] = get_stock_mat(start_date, end_date, tics)

stocks = hist_stock_data(start_date,end_date,tics);
date = cell2mat(stocks(1).Date);
open = [];
high = [];
low = [];
close = [];
adj = [];
vol = [];

for i = 1:numel(stocks)
    open = [open stocks(i).Open];
    high = [high stocks(i).High];
    low = [low stocks(i).Low];
    close = [close stocks(i).Close];
    adj = [adj stocks(i).AdjClose];
    vol = [vol stocks(i).Volume];
end
end