from pandas_datareader import data as pdr

import yfinance as yf
yf.pdr_override() # <== that's all it takes :-)

# download dataframe
data = pdr.get_data_yahoo("SPY", start="2017-01-01", end="2017-04-30")

print(data)

# msft = yf.Ticker("MSFT")

# # get stock info
# msft.info

# # get historical market data
# hist = msft.history(period="max")

# # show actions (dividends, splits)
# msft.actions

# # show dividends
# msft.dividends

# # show splits
# msft.splits

# # show financials
# msft.financials
# msft.quarterly_financials

# # show major holders
# stock.major_holders

# # show institutional holders
# stock.institutional_holders

# # show balance heet
# msft.balance_sheet
# msft.quarterly_balance_sheet

# # show cashflow
# msft.cashflow
# msft.quarterly_cashflow

# # show earnings
# msft.earnings
# msft.quarterly_earnings

# # show sustainability
# msft.sustainability

# # show analysts recommendations
# msft.recommendations

# # show next event (earnings, etc)
# msft.calendar

# # show ISIN code - *experimental*
# # ISIN = International Securities Identification Number
# msft.isin

# # show options expirations
# msft.options

# # get option chain for specific expiration
# opt = msft.option_chain('2000-09-01')
# # data available via: opt.calls, opt.puts