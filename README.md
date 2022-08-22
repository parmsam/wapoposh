
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wapoposh

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of wapoposh from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("parmsam/wapoposh")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(wapoposh)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
# basic example code
tail(policeshootings)
#> # A tibble: 6 × 17
#>      id name     date       manne…¹ armed   age gender race  city  state signs…²
#>   <dbl> <chr>    <date>     <chr>   <chr> <dbl> <chr>  <chr> <chr> <chr> <lgl>  
#> 1  8334 <NA>     2022-08-12 shot    gun      NA M      <NA>  Appl… WI    FALSE  
#> 2  8336 Michael… 2022-08-14 shot    Airs…    32 M      <NA>  Wate… IA    FALSE  
#> 3  8337 Jeremy … 2022-08-15 shot    gun      32 M      <NA>  Miam… FL    FALSE  
#> 4  8338 <NA>     2022-08-16 shot    gun      NA M      <NA>  Miam… FL    FALSE  
#> 5  8341 <NA>     2022-08-17 shot    mach…    NA M      <NA>  Los … CA    FALSE  
#> 6  8340 <NA>     2022-08-18 shot    unkn…    NA M      <NA>  Hous… TX    FALSE  
#> # … with 6 more variables: threat_level <chr>, flee <chr>, body_camera <lgl>,
#> #   longitude <dbl>, latitude <dbl>, is_geocoding_exact <lgl>, and abbreviated
#> #   variable names ¹​manner_of_death, ²​signs_of_mental_illness
# get latest data
latest <- latest_data()
#> [1] "No update available. Returning existing package dataset."
tail(latest)
#> # A tibble: 6 × 17
#>      id name     date       manne…¹ armed   age gender race  city  state signs…²
#>   <dbl> <chr>    <date>     <chr>   <chr> <dbl> <chr>  <chr> <chr> <chr> <lgl>  
#> 1  8334 <NA>     2022-08-12 shot    gun      NA M      <NA>  Appl… WI    FALSE  
#> 2  8336 Michael… 2022-08-14 shot    Airs…    32 M      <NA>  Wate… IA    FALSE  
#> 3  8337 Jeremy … 2022-08-15 shot    gun      32 M      <NA>  Miam… FL    FALSE  
#> 4  8338 <NA>     2022-08-16 shot    gun      NA M      <NA>  Miam… FL    FALSE  
#> 5  8341 <NA>     2022-08-17 shot    mach…    NA M      <NA>  Los … CA    FALSE  
#> 6  8340 <NA>     2022-08-18 shot    unkn…    NA M      <NA>  Hous… TX    FALSE  
#> # … with 6 more variables: threat_level <chr>, flee <chr>, body_camera <lgl>,
#> #   longitude <dbl>, latitude <dbl>, is_geocoding_exact <lgl>, and abbreviated
#> #   variable names ¹​manner_of_death, ²​signs_of_mental_illness
```

``` r
glimpse(policeshootings)
#> Rows: 7,666
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