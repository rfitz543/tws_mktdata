
ticker <- 'CLH4'
dir <- substr(ticker, 1, 2)
data <- reqHistoricalData(tws, getContract(ticker), useRTH='0', barSize='1 day',
                          duration='1 Y')
assign(ticker, data)
saveSymbols.common(ticker, base_dir=dir)
