
<!-- README.md is generated from README.Rmd. Please edit that file -->

# regexcite

<!-- badges: start -->

[![R-CMD-check](https://github.com/UBC-MDS/CryptocurrencyEDAr/workflows/R-CMD-check/badge.svg)](https://github.com/UBC-MDS/CryptocurrencyEDAr/actions)
[![Codecov test
coverage](https://codecov.io/gh/UBC-MDS/CryptocurrencyEDAr/branch/main/graph/badge.svg)](https://codecov.io/gh/UBC-MDS/CryptocurrencyEDAr?branch=main)
[![codecov](https://codecov.io/gh/UBC-MDS/CryptocurrencyEDAr/branch/master/graph/badge.svg?token=XdyLDqlh91)](https://codecov.io/gh/UBC-MDS/CryptocurrencyEDAr)
<!-- badges: end -->

This is a R package to analyze historical cryptocurrency prices and
performance through simple exploratory data analysis including
calculations and plotting. Data is sourced from the KuCoin API. There
are four functions that are included in this R package which are
described in more detail below. Cryptocurrency investors and enthusiasts
can use this package to analyze cryptocurrencies of interest.

There are existing R packages that support users to access information
of cryptocurrency such as `crypto`, `crypto2` and `coinmarketcapr`.
Among these 3 packages, only `coinmarketcapr` provides visualization of
top currency. Indeed , there is no integrated R package for retrieving,
analyzing, and visualizing cryptocurrency data altogether. Therefore, we
want to build a simple tool that can facilitate simple cryptocurrency
data analysis all at once.

## Function list

The package contains the following four functions:

-   `retrieve_data`: downloads historical data from a cryptocurrency
    exchange using an an http request from a cryptocurrency exchange.

-   `plot_price`: generates and visualizes a plot of the price of the
    cryptocurrenty inputted over a period of time.

-   `daily_growth_rate`: performs calculation of daily growth rate of
    the price of the cryptocurrenty inputted over a period of time.

-   `avg_daily_return`: performs calculation of the average daily return
    of the inputted cryptocurrency price.

## Installation

You can install the development version of regexcite from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/CryptocurrencyEDAr")
```

## Usage

TO DO

## Contributors

We welcome and recognize all contributions. The following are current
contributors. You can also see the list [here](DESCRIPTION). If you are
interested in contributing to this project, please check out our
CODE_OF_CONDUCT.md

-   Berkay Bulut
-   Cici Du
-   Alex Yinan Guo
-   Nobby Nguyen

## License

`CryptocurrencyEDAr` was created by MDS Students from Group-11 for
course 524. It is licensed under the terms of the MIT license.

## Code of Conduct

Please note that the CryptocurrencyEDAr project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.