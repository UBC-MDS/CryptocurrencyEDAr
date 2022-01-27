#' Plot the price of cryptocurrency
#'
#' @param price_df data frame with time and price data.
#' @param name character name of the cryptocurrency of interest
#' @param window vector of two dates in character 
#'
#' @return ggplot object
#' @export
#'
#' @examples
#' price_df <- retrieve_data("BTC-USDT", "1day", "2021-01-01", "2021-12-31")
#' plot_price(price_df)

plot_price <- function(df = price_df){
    
    #check input
    if(!is.data.frame(df)) {
    stop("Input is not a dataframe")
    }
    
    #get symbol name
    crypto <- df$Symbol[1]

    price_plot <- ggplot(data = df,
                         aes(x = Date,
                             y = Close)) +
    geom_line() +
    labs(title = paste("Close price of", crypto),
         y = "Close price") +
    theme_classic() +
    theme(axis.text.y = element_text(size = 10),
         axis.text.x = element_text(size = 10),
         axis.title = element_text(size=14),
         plot.title = element_text(size = 20, 
                                  face = "bold"))

    return(price_plot)
    }
