
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wapoposh <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/parmsam/wapoposh/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/parmsam/wapoposh/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Use R to access **Wa**shington **Po**st **Po**lice **Sh**ootings
dataset. Provides convenient functions to spend less time data wrangling
and more time generating findings.

## Installation

You can install the development version of wapoposh from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("parmsam/wapoposh")
```

## Example

This is a basic example which shows you how to interact with the
dataset:

``` r
library(wapoposh)
library(dplyr)
# basic example code
tail(policeshootings_v2, 4)
#> # A tibble: 4 × 19
#>      id date       threat_t…¹ flee_…² armed…³ city  county state latit…⁴ longi…⁵
#>   <dbl> <date>     <chr>      <chr>   <chr>   <chr> <chr>  <chr>   <dbl>   <dbl>
#> 1  8706 2022-12-02 shoot      not     gun     Sali… Rowan  NC       35.6   -80.4
#> 2  8697 2022-12-03 shoot      foot    gun     John… Washi… TN       36.4   -82.4
#> 3  8703 2022-12-03 threat     not     knife   Norc… Gwinn… GA       33.9   -84.2
#> 4  8702 2022-12-04 <NA>       <NA>    undete… Tucs… Pima   AZ       32.2  -111. 
#> # … with 9 more variables: location_precision <chr>, name <chr>, age <dbl>,
#> #   gender <chr>, race <chr>, race_source <chr>,
#> #   was_mental_illness_related <lgl>, body_camera <lgl>, agency_ids <chr>, and
#> #   abbreviated variable names ¹​threat_type, ²​flee_status, ³​armed_with,
#> #   ⁴​latitude, ⁵​longitude
```

``` r
glimpse(policeshootings_v2)
#> Rows: 7,999
#> Columns: 19
#> $ id                         <dbl> 3, 4, 5, 8, 9, 11, 13, 15, 16, 17, 19, 21, …
#> $ date                       <date> 2015-01-02, 2015-01-02, 2015-01-03, 2015-0…
#> $ threat_type                <chr> "point", "point", "move", "point", "point",…
#> $ flee_status                <chr> "not", "not", "not", "not", "not", "not", "…
#> $ armed_with                 <chr> "gun", "gun", "unarmed", "replica", "other"…
#> $ city                       <chr> "Shelton", "Aloha", "Wichita", "San Francis…
#> $ county                     <chr> "Mason", "Washington", "Sedgwick", "San Fra…
#> $ state                      <chr> "WA", "OR", "KS", "CA", "CO", "OK", "AZ", "…
#> $ latitude                   <dbl> 47.24683, 45.48742, 37.69477, 37.76291, 40.…
#> $ longitude                  <dbl> -123.12159, -122.89170, -97.28055, -122.422…
#> $ location_precision         <chr> "not_available", "not_available", "not_avai…
#> $ name                       <chr> "Tim Elliot", "Lewis Lee Lembke", "John Pau…
#> $ age                        <dbl> 53, 47, 23, 32, 39, 18, 22, 35, 34, 47, 25,…
#> $ gender                     <chr> "male", "male", "male", "male", "male", "ma…
#> $ race                       <chr> "A", "W", "H", "W", "H", "W", "H", "W", "W"…
#> $ race_source                <chr> "not_available", "not_available", "not_avai…
#> $ was_mental_illness_related <lgl> TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, FAL…
#> $ body_camera                <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, F…
#> $ agency_ids                 <chr> "73", "70", "238", "196", "473", "101", "19…
```

You can use `latest_data()` to get the latest dataset from the
Washington Post [Github
repo](https://github.com/washingtonpost/data-police-shootings).

``` r
# get latest data
latest <- latest_data()[[1]]
tail(latest, 4)
#> # A tibble: 4 × 19
#>      id date       threat_t…¹ flee_…² armed…³ city  county state latit…⁴ longi…⁵
#>   <dbl> <date>     <chr>      <chr>   <chr>   <chr> <chr>  <chr>   <dbl>   <dbl>
#> 1  8711 2022-12-05 shoot      foot    gun     Memp… Shelby TN       35.1   -89.9
#> 2  8712 2022-12-05 attack     <NA>    blunt_… Seel… Imper… CA       32.8  -116. 
#> 3  8713 2022-12-06 shoot      <NA>    gun     Wood… Refug… TX       28.2   -97.3
#> 4  8714 2022-12-06 flee       foot    undete… Fres… Fresno CA       36.8  -120. 
#> # … with 9 more variables: location_precision <chr>, name <chr>, age <dbl>,
#> #   gender <chr>, race <chr>, race_source <chr>,
#> #   was_mental_illness_related <lgl>, body_camera <lgl>, agency_ids <chr>, and
#> #   abbreviated variable names ¹​threat_type, ²​flee_status, ³​armed_with,
#> #   ⁴​latitude, ⁵​longitude
```

## Update Frequency

Note that the repo is scheduled to update the package data on a weekly
basis. However, it will require a reinstall to pull the latest processed
data (.rda) file. As an alternative, the `latest_data()` function will
pull most current public dataset from the Washington Post.

## Credit

Credit goes to the Washington Post and their research and
reporting/database development team for compiling and sharing the
dataset on their [Github
repo](https://github.com/washingtonpost/data-police-shootings).

Hex icon created using the [hexmake
app](https://connect.thinkr.fr/hexmake/) from
[ColinFay](https://github.com/ColinFay/hexmake).

<a href="https://www.flaticon.com/free-icons/police" title="police icons">Police
icons created by surang - Flaticon</a>

### Note

The dataset was originally and is still published under an
[Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA
4.0) license](https://creativecommons.org/licenses/by-nc-sa/4.0/). The
dataset in the package has been slightly cleaned and provided in an R
data file format.

## Code of Conduct

Please note that the wapoposh project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
