stocks = readtable('tickers_st.txt'); 
stocks = table2array(stocks); 

stocks = stocks(1:100); 


%%
startDate = '01042018'; 
endDate = '01042019'; 
stocks = stocks(1:100); 
stocks = hist_stock_data(startDate,endDate,stocks);

for i = 1:numel(stocks)
    
end

net = network(