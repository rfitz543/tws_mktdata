# function to retrieve daily prices from daily folders using FI
get_daily <- function(ticker)
{
  require(FinancialInstrument)
  
  dir <- paste('C:/Users/rfitz_000/Documents/R_Projects/TWS/tws_mktdata', 
               substr(ticker, 1, 2), sep='/')
  daily <- getSymbols.FI(ticker, from=as.Date('2000-01-01'),
                      dir=dir, split_method='days', verbose=FALSE)
  get(daily)
}

#get_daily('CLZ4')
