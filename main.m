%% setting up tickers

tics = readtable('tickers_st.txt'); 
tics_arr = table2array(tics); 

tics_arr = tics_arr(1:100); 


%% downloading stock data
startDate = '01042018'; 
endDate = '01042019'; 
tics_arr = tics_arr(1:5); 
stocks = hist_stock_data(startDate,endDate,tics_arr);


%% rearanging data strcture to matrices 

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
