
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
tail(policeshootings, 4)
#> # A tibble: 4 × 17
#>      id name     date       manne…¹ armed   age gender race  city  state signs…²
#>   <dbl> <chr>    <date>     <chr>   <chr> <dbl> <chr>  <chr> <chr> <chr> <lgl>  
#> 1  8399 <NA>     2022-09-07 shot    gun      NA M      W     Spri… AL    FALSE  
#> 2  8401 <NA>     2022-09-07 shot    knife    61 M      B     St. … MO    FALSE  
#> 3  8402 Tyler M… 2022-09-07 shot    gun      27 M      <NA>  Wash… TN    FALSE  
#> 4  8406 Reginal… 2022-09-07 shot    gun      30 M      <NA>  Colu… GA    FALSE  
#> # … with 6 more variables: threat_level <chr>, flee <chr>, body_camera <lgl>,
#> #   longitude <dbl>, latitude <dbl>, is_geocoding_exact <lgl>, and abbreviated
#> #   variable names ¹​manner_of_death, ²​signs_of_mental_illness
```

``` r
glimpse(policeshootings)
#> Rows: 7,729
#> Columns: 17
#> $ id                      <dbl> 3, 4, 5, 8, 9, 11, 13, 15, 16, 17, 19, 21, 22,…
#> $ name                    <chr> "Tim Elliot", "Lewis Lee Lembke", "John Paul Q…
#> $ date                    <date> 2015-01-02, 2015-01-02, 2015-01-03, 2015-01-0…
#> $ manner_of_death         <chr> "shot", "shot", "shot and tasered", "shot", "s…
#> $ armed                   <chr> "gun", "gun", "unarmed", "toy weapon", "nail g…
#> $ age                     <dbl> 53, 47, 23, 32, 39, 18, 22, 35, 34, 47, 25, 31…
#> $ gender                  <chr> "M", "M", "M", "M", "M", "M", "M", "M", "F", "…
#> $ race                    <chr> "A", "W", "H", "W", "H", "W", "H", "W", "W", "…
#> $ city                    <chr> "Shelton", "Aloha", "Wichita", "San Francisco"…
#> $ state                   <chr> "WA", "OR", "KS", "CA", "CO", "OK", "AZ", "KS"…
#> $ signs_of_mental_illness <lgl> TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE,…
#> $ threat_level            <chr> "attack", "attack", "other", "attack", "attack…
#> $ flee                    <chr> "Not fleeing", "Not fleeing", "Not fleeing", "…
#> $ body_camera             <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALS…
#> $ longitude               <dbl> -123.122, -122.892, -97.281, -122.422, -104.69…
#> $ latitude                <dbl> 47.247, 45.487, 37.695, 37.763, 40.384, 35.877…
#> $ is_geocoding_exact      <lgl> TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE…
```

You can use `latest_data()` to get the latest dataset from the
Washington Post [Github
repo](https://github.com/washingtonpost/data-police-shootings).

``` r
# get latest data
latest <- latest_data()
#> [1] "Update available. Returning latest dataset."
tail(latest, 4)
#> # A tibble: 4 × 17
#>      id name     date       manne…¹ armed   age gender race  city  state signs…²
#>   <dbl> <chr>    <date>     <chr>   <chr> <dbl> <chr>  <chr> <chr> <chr> <lgl>  
#> 1  8411 <NA>     2022-09-11 shot    tire…    NA M      <NA>  Hous… TX    FALSE  
#> 2  8414 <NA>     2022-09-11 shot    gun      NA M      <NA>  Los … CA    FALSE  
#> 3  8420 Igor La… 2022-09-11 shot    gun      53 M      <NA>  Wall… MI    FALSE  
#> 4  8413 Cody Ki… 2022-09-12 shot    gun      31 M      <NA>  St. … FL    FALSE  
#> # … with 6 more variables: threat_level <chr>, flee <chr>, body_camera <lgl>,
#> #   longitude <dbl>, latitude <dbl>, is_geocoding_exact <lgl>, and abbreviated
#> #   variable names ¹​manner_of_death, ²​signs_of_mental_illness
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

The data was originally published under an
Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)
license.

## Code of Conduct

Please note that the wapoposh project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
