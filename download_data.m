tics = readtable('tickers_st.txt'); 
tics_arr = table2array(tics); 

start_date = '01042018'; 
end_date = '01042019'; 
tics = tics_arr(1:100);
stocks = hist_stock_data(start_date,end_date,tics);
%%

[tics, date, open, high, low, close, adj, vol] = get_stock_mat(stocks);