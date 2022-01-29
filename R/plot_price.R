#' Plot the price of cryptocurrency
#'
#' @param df data frame with time and price data.
#'
#' @return ggplot object
#' @export
#'
#' @examples
#' price_df <- data.frame('Symbol'=c('BTC-USDT','BTC-USDT'),
#' 'Date'=c('2022-01-15', '2022-01-16'),
#' 'Close'=c(1.5, 2.5))
#' {plot_price(df = price_df)}

plot_price <- function(df = price_df){

    #check input
    if(!is.data.frame(df)) {
    stop("Input is not a dataframe")
    }

    #get symbol name
    crypto <- df$Symbol[1]

    price_plot <- ggplot2::ggplot(data = df,
                                  ggplot2::aes(x = Date,
                                               y = Close)) +
    ggplot2::geom_line() +
    ggplot2::labs(title = paste("Close price of", crypto),
         y = "Close price") +
    ggplot2::theme_classic() +
    ggplot2::theme(axis.text.y = ggplot2::element_text(size = 10),
         axis.text.x = ggplot2::element_text(size = 10),
         axis.title = ggplot2::element_text(size=14),
         plot.title = ggplot2::element_text(size = 20,
                                  face = "bold"))

    return(price_plot)
    }
