function [tics, date, open, high, low, close, adj, vol] = get_stock_mat(stocks)

date = cell2mat(stocks(1).Date);
tics = []; 
open = [];
high = [];
low = [];
close = [];
adj = [];
vol = [];

for i = 1:numel(stocks)
    try
   % tics = [tics; cell2mat(stocks(i).Ticker)]; 
    open = [open stocks(i).Open];
    high = [high stocks(i).High];
    low = [low stocks(i).Low];
    close = [close stocks(i).Close];
    adj = [adj stocks(i).AdjClose];
    vol = [vol stocks(i).Volume];
    catch 
    end
end
end