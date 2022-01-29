#' Outputs the average daily return of the inputted cryptocurrency price.
#'
#' @param prices A numeric vector representing the inputted cryptocurrency price.
#'
#' @return A numeric value representing the average daily return of the cryptocurrency.
#'
#' @examples
#' df = data.frame('Date'=c('2022-01-15', '2022-01-16', '2022-01-17', '2022-01-18'),
#'                 'Price'=c(1.5, 2.5, 3.5, 4.5))
#' avg_daily_return(df$Price)
avg_daily_return <- function(prices) {
  if(! is.double(prices)) {
    stop("Input must be double")
    }
  return_sum = 0
  for (i in c(2:length(prices))) {
    return_sum = return_sum + prices[i] - prices[i-1]
  }
  return(return_sum / (length(prices)-1))
}
