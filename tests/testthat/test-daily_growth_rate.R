get_df <- function(){
  data.frame (Date  = c('2022-01-15', '2022-01-16', '2022-01-17', '2022-01-18'),
              Close = as.double(c(100.00, 40.00, 10.00, 5.00)))
}

test_that("Input data is not a dataframe", {
  df <- "Hello"
  expect_error(daily_growth_rate(df,"Close"))
})

test_that("Input data is not a string", {
  df <- get_df()
  expect_error(daily_growth_rate(df, 5))
})

test_that("The type of input data is not float", {
  df <- get_df
  expect_error(daily_growth_rate(df, "Date"))
})

test_that("Correct output when price decreases", {
  df <- get_df()
  expect_df <- df
  expect_df$daily_growth_rate <- c(NA, -60, -75, -50)
  expect_equal(daily_growth_rate(df, "Close"), expect_df)
})

test_that("Correct output when price increases", {
  df <- data.frame(Date  = c('2022-01-15', '2022-01-16', '2022-01-17', '2022-01-18'),
                    Close = as.double(c(5.00, 10.00, 20.00, 50.00)))
  expect_df <- df
  expect_df$daily_growth_rate <- c(NA, 100, 100, 150)
  expect_equal(daily_growth_rate(df, "Close"), expect_df)
})

test_that("Correct output when price unchanges", {
  df <- data.frame(Date  = c('2022-01-15', '2022-01-16', '2022-01-17', '2022-01-18'),
                   Close = as.double(c(5.00, 5.00, 5.00, 5.00)))
  expect_df <- df
  expect_df$daily_growth_rate <- c(NA, 0, 0, 0)
  expect_equal(daily_growth_rate(df, "Close"), expect_df)
})
