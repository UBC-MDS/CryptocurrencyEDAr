library(testthat)
library(rlang)
library(ggplot2)

helper_df <- data.frame(Symbol = c("BTC-USDT", "BTC-USDT", "BTC-USDT"),
Date = c(2021-12-25, 2021-12-26, 2021-12-27),
Close = c(50771.5, 50715.7, 47543.8)
)

plot <- plot_price(helper_df)

test_that('Plot should use geom_line and map Date to x-axis, Close to y-axis and
title is not empty.', {

    expect_true("GeomLine" %in% c(class(plot$layers[[1]]$geom)))

    expect_true("Date"  == rlang::get_expr(plot$mapping$x))

    expect_true("Close" == rlang::get_expr(plot$mapping$y))

    expect_true(rlang::get_expr(plot$labels$title) != "")

})
