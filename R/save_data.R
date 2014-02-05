save_daily <- function(ticker)
{
dir <- paste('R/', substr(ticker, 1, 2), sep='')
data <- reqHistoricalData(tws, getContract(ticker), useRTH='0', barSize='1 day',
                          duration='1 Y')
assign(ticker, data, envir=.GlobalEnv)
saveSymbols.days(ticker, base_dir=dir)
}

save_daily('CLZ4')
