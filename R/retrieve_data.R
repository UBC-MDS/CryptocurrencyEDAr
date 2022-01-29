library(httr)
library(jsonlite)
library(stringr)
library(anytime)

#' Retrieve the historical price of cryptocurrency
#'
#' @param symbol string of symbol for cryptocurrency
#' @param time_period string of time period
#' @param start_date string of start date in character
#' @param end_date string of end date in character
#'
#' @return dataframe with time and price data.
#' @export
#'
#' @examples
#' \dontrun{retrieve_data("BTC-USDT", "1day", "2021-01-01", "2021-12-31")}
retrieve_data <- function(symbol="BTC-USDT", time_period="1day",
                          start_date="2021-01-01", end_date="2021-01-09"){

  start_date_unix <- as.numeric(as.POSIXct(start_date, format="%Y-%m-%d"))
  end_date_unix <- as.numeric(as.POSIXct(end_date, format="%Y-%m-%d"))

  apiurl <- str_glue('https://api.kucoin.com/api/v1/market/candles?type={time_period}&symbol={symbol}&startAt={start_date_unix}&endAt={end_date_unix}')

  # Get Raw Data in Json Format
  res = GET(apiurl)
  rawdata <- fromJSON(rawToChar(res$content))$data

  # DataFrame Fix
  data <- as.data.frame(rawdata)
  colnames(data) <- c("Date", "Open", "Close", "High",  "Low", "Volume", "Turnover")
  data["Symbol"] <-  symbol
  data <- data[c("Symbol","Date","Close")]

  # Data Format Conversion
  data$Close <- as.numeric(data$Close)
  data$Date <- anydate(as.numeric(data$Date))

  return(data)
}
