#' Outputs the average daily return of the inputted cryptocurrency price.
#'
#' @param prices A numeric vector representing the inputted cryptocurrency price.
#'
#' @return A numeric value representing the average daily return of the cryptocurrency.
#'
#' @examples
#' BTCBitcoin <- c(52254.2, 53981.5, 52112.9)
#' avg_daily_return(BTCBitcoin)
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
