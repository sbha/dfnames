# dfnames
### Overview
Functions for working with data frame names. 
  
* Convert data frame name formats to `snake_case`, `PascalCase`, `camelCase`, or `Title Case`. 
* Print data frame names in the console in an easy to copy and paste format. 

### Installation
``` r
# install.packages("devtools")
devtools::install_github("sbha/dfnames")
```

### Usage
```r
library(dfnames)

# review raw column names:
head(iris, 2)
#>   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#> 1          5.1         3.5          1.4         0.2  setosa
#> 2          4.9         3.0          1.4         0.2  setosa

# convert to snake_case:
names(iris) <- to_snake_case(names(iris))
head(iris, 2)
#>    sepal_length sepal_width petal_length petal_width species
#> 1          5.1         3.5          1.4         0.2  setosa
#> 2          4.9         3.0          1.4         0.2  setosa

# convert as a part of a dplyr chain:
library(dplyr)

iris %>% 
  rename_all(~to_pascal_case(.)) %>% 
  head(2)
#>    SepalLength SepalWidth PetalLength PetalWidth Species
#> 1         5.1        3.5         1.4        0.2  setosa
#> 2         4.9        3.0         1.4        0.2  setosa


# to_title_case should only be used for exporting data, otherwise the 
# data frame could have spaces in its column names:
iris %>% 
  rename_all(~to_title_case(.)) %>% 
  write.csv('~/directory/path/export_file.csv', row.names = FALSE)


# print column names:
print_df_names(iris)
#> sepal_length
#> sepal_width
#> petal_length
#> petal_width
#> species

# print column names separated by commas:
print_df_names(iris, comma = TRUE)
#> sepal_length,
#> sepal_width,
#> petal_length,
#> petal_width,
#> species

# print column names matching a regular expression pattern:
print_df_names(iris, regex_pattern = '^s', comma = TRUE)
#> sepal_length,
#> sepal_width,
#> species

```
