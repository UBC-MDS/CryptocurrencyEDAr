
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CryptocurrencyEDAr

<!-- badges: start -->

[![R-CMD-check](https://github.com/UBC-MDS/CryptocurrencyEDAr/workflows/R-CMD-check/badge.svg)](https://github.com/UBC-MDS/CryptocurrencyEDAr/actions)
[![Codecov test
coverage](https://codecov.io/gh/UBC-MDS/CryptocurrencyEDAr/branch/main/graph/badge.svg)](https://codecov.io/gh/UBC-MDS/CryptocurrencyEDAr?branch=main)
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

-   `retrieve_data`: downloads historical data using an an http request
    from a cryptocurrency exchange.

-   `plot_price`: generates and visualizes a plot of the price of the
    cryptocurrenty inputted over a period of time.

-   `daily_growth_rate`: performs calculation of daily growth rate of
    the price of the cryptocurrency inputted over a period of time.

-   `avg_daily_return`: performs calculation of the average daily return
    of the inputted cryptocurrency price.

## Installation

You can install the development version of `CryptocurrencyEDAr` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/CryptocurrencyEDAr", quiet = TRUE)
#> Downloading GitHub repo UBC-MDS/CryptocurrencyEDAr@HEAD
#> Installing 23 packages: rlang, digest, crayon, cli, pillar, magrittr, fansi, lifecycle, withr, tibble, glue, stringi, xfun, yaml, jsonlite, backports, knitr, Rcpp, viridis, htmlTable, data.table, openssl, mime
#> Installing packages into 'C:/Users/alexx/R/win-library/4.1'
#> (as 'lib' is unspecified)
#> Warning: cannot remove prior installation of package 'rlang'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\rlang\libs\x64\rlang.dll to C:
#> \Users\alexx\R\win-library\4.1\rlang\libs\x64\rlang.dll: Permission denied
#> Warning: restored 'rlang'
#> Warning: cannot remove prior installation of package 'digest'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\digest\libs\x64\digest.dll to C:
#> \Users\alexx\R\win-library\4.1\digest\libs\x64\digest.dll: Permission denied
#> Warning: restored 'digest'
#> Warning: cannot remove prior installation of package 'cli'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\alexx\R\win-library\4.1\00LOCK\cli\libs\x64\cli.dll to C:
#> \Users\alexx\R\win-library\4.1\cli\libs\x64\cli.dll: Permission denied
#> Warning: restored 'cli'
#> Warning: cannot remove prior installation of package 'magrittr'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\magrittr\libs\x64\magrittr.dll to C:
#> \Users\alexx\R\win-library\4.1\magrittr\libs\x64\magrittr.dll: Permission denied
#> Warning: restored 'magrittr'
#> Warning: cannot remove prior installation of package 'fansi'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\fansi\libs\x64\fansi.dll to C:
#> \Users\alexx\R\win-library\4.1\fansi\libs\x64\fansi.dll: Permission denied
#> Warning: restored 'fansi'
#> Warning: cannot remove prior installation of package 'tibble'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\tibble\libs\x64\tibble.dll to C:
#> \Users\alexx\R\win-library\4.1\tibble\libs\x64\tibble.dll: Permission denied
#> Warning: restored 'tibble'
#> Warning: cannot remove prior installation of package 'glue'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\alexx\R\win-library\4.1\00LOCK\glue\libs\x64\glue.dll to C:
#> \Users\alexx\R\win-library\4.1\glue\libs\x64\glue.dll: Permission denied
#> Warning: restored 'glue'
#> Warning: cannot remove prior installation of package 'stringi'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\stringi\libs\icudt69l.dat to C:
#> \Users\alexx\R\win-library\4.1\stringi\libs\icudt69l.dat: Invalid argument
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\stringi\libs\x64\stringi.dll to C:
#> \Users\alexx\R\win-library\4.1\stringi\libs\x64\stringi.dll: Permission denied
#> Warning: restored 'stringi'
#> Warning: cannot remove prior installation of package 'xfun'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\alexx\R\win-library\4.1\00LOCK\xfun\libs\x64\xfun.dll to C:
#> \Users\alexx\R\win-library\4.1\xfun\libs\x64\xfun.dll: Permission denied
#> Warning: restored 'xfun'
#> Warning: cannot remove prior installation of package 'yaml'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\alexx\R\win-library\4.1\00LOCK\yaml\libs\x64\yaml.dll to C:
#> \Users\alexx\R\win-library\4.1\yaml\libs\x64\yaml.dll: Permission denied
#> Warning: restored 'yaml'
#> Warning: cannot remove prior installation of package 'jsonlite'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\jsonlite\libs\x64\jsonlite.dll to C:
#> \Users\alexx\R\win-library\4.1\jsonlite\libs\x64\jsonlite.dll: Permission denied
#> Warning: restored 'jsonlite'
#> Warning: cannot remove prior installation of package 'openssl'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\alexx\R\win-library\4.1\00LOCK\openssl\libs\x64\openssl.dll to C:
#> \Users\alexx\R\win-library\4.1\openssl\libs\x64\openssl.dll: Permission denied
#> Warning: restored 'openssl'
#> Installing package into 'C:/Users/alexx/R/win-library/4.1'
#> (as 'lib' is unspecified)
#> Warning in i.p(...): installation of package 'C:/Users/alexx/AppData/Local/Temp/
#> RtmpeG6i6G/file634c2e3350c/CryptocurrencyEDAr_0.0.0.9000.tar.gz' had non-zero
#> exit status
```

## Usage

After installation, firstly load the functions from the package:

``` r
devtools::load_all()
#> i Loading CryptocurrencyEDAr
```

Now the functions are ready to use as follows:

``` r
price_df <- retrieve_data("BTC-USDT", "1day", "2021-01-01", "2021-12-31")
plot_price(df = price_df)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

``` r
new_price_df <- daily_growth_rate(price_df, "Close")
head(new_price_df)
#>     Symbol       Date   Close daily_growth_rate
#> 1 BTC-USDT 2021-12-30 46216.4                NA
#> 2 BTC-USDT 2021-12-29 47122.4         1.9603431
#> 3 BTC-USDT 2021-12-28 46466.4        -1.3921192
#> 4 BTC-USDT 2021-12-27 47543.8         2.3186647
#> 5 BTC-USDT 2021-12-26 50715.7         6.6715324
#> 6 BTC-USDT 2021-12-25 50771.5         0.1100251
avg_daily_return(price_df$Close)
#> [1] -38.65289
```

## Documentation

-   Vignette homepage
-   Introduction to CryptocurrencyEDAr package

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
