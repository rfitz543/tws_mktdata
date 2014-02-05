# function to retrieve daily prices from daily folders using FI
get_daily <- function(ticker)
{
  dir <- substr(ticker, 1, 2)
  daily <- getSymbols.FI(ticker, from=as.Date('2000-01-01'),
                      dir=dir, split_method='days', verbose=FALSE)
  get(daily)
}

#get_daily('CLZ4')
