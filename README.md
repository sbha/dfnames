# dfnames
## Overview
Functions for working with data frame names. 
  
* Convert data frame name formats to snake_case, PaschalCase, camelCase, or Title Case. 
* Print data frame names in the console in an easy to copy and paste format. 

## Installation
``` r
# install.packages("devtools")
devtools::install_github("sbha/dfnames")
```

## Usage
```r
library(dfnames)

head(iris, 2)
#>   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#> 1          5.1         3.5          1.4         0.2  setosa
#> 2          4.9         3.0          1.4         0.2  setosa

names(iris) <- snake_caser(names(iris))
head(iris, 2)
#>    sepal_length sepal_width petal_length petal_width species
#> 1          5.1         3.5          1.4         0.2  setosa
#> 2          4.9         3.0          1.4         0.2  setosa

# or as a part of a dplyr chain:
library(dplyr)

iris %>% 
  rename_all(~paschal_caser(.)) %>% 
  head(2)
#>    SepalLength SepalWidth PetalLength PetalWidth Species
#> 1         5.1        3.5         1.4        0.2  setosa
#> 2         4.9        3.0         1.4        0.2  setosa


# printing column names:
df_names(iris)
#> sepal_length
#> sepal_width
#> petal_length
#> petal_width
#> species

# printing column names separated by commas:
df_names(iris, comma = TRUE)
#> sepal_length,
#> sepal_width,
#> petal_length,
#> petal_width,
#> species

# printing column names matching a regular expression pattern:
df_names(iris, regex = '^s', comma = TRUE)
#> sepal_length,
#> sepal_width,
#> species

```
