library(testthat)
library(rlang)

test_that('Plot should use geom_line and map Date to x-axis, Close to y-axis and
title is not empty.', {

    expect_true("GeomLine" %in% c(class(plot$layers[[1]]$geom)))

    expect_true("Date"  == rlang::get_expr(plot$mapping$x))

    expect_true("Close" == rlang::get_expr(plot$mapping$y))

    expect_true(rlang::get_expr(plot$labels$title) != "")

})
