#' Calculate daily growth rate of a cryptocurrency
#'
#' @param df A Data frame with date and price data.
#' @param col_name a string indicate the column holding daily closing price data.
#'
#' @return A dataframe with a new column of daily growth rate.
#' @export
#' @importFrom Hmisc Lag
#' @examples
#' price_df = data.frame('Date'=c('2022-01-15', '2022-01-16'), 'Close'=c(1.5, 2.5))
#' daily_growth_rate(price_df, "Close")
daily_growth_rate <- function(df,col_name){
  if (!is.data.frame(df)) {
    stop("The input dataframe must be of dataframe type.")
  }
  if (!is.character(col_name)) {
    stop("The input name of column must be of string type.")
  }
  if (!is.double(df[,col_name])) {
    stop("The type of input col_name must be double.")
  }
  df_output <- df
  Diff_growth <- df[,col_name] - Hmisc::Lag(df[,col_name],1) # Difference in closing price between days
  df_output$daily_growth_rate <- Diff_growth*100/Hmisc::Lag(df[,col_name],1)  # growth rate
  df_output
}
