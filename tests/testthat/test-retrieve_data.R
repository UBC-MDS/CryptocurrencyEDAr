
helper_df <- data.frame(Symbol = c("BTC-USDT", "BTC-USDT", "BTC-USDT"),
                        Date = c(2021-12-25, 2021-12-26, 2021-12-27),
                        Close = c(50771.5, 50715.7, 47543.8)
)

dataframe_test <- retrieve_data(symbol="BTC-USDT",
                                time_period="1day",
                                start_date="2021-01-01",
                                end_date="2021-01-09")


test_that('Column name should be matching', {
  expect_true("Symbol"== colnames(dataframe_test)[1])
})

test_that('Number of columns should be 3', {
  expect_true(3 == length(dataframe_test))
})

test_that('Number of rows should be 8', {
  expect_true(8 == nrow(dataframe_test))
})
