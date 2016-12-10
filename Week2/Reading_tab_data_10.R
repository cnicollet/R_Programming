1: The R Programming Environment Reading Tabular Data
2: No. Let me start something new.

Selection: 1

| Attempting to load lesson dependencies...

| Package ‘readr’ loaded correctly!



| How would you read this file into R using the read_csv() function in the 'readr' function and save the
| resulting data frame to an object named 'urban'? Assume that the file is in your current working directory.

> urban <- read_csv(datafile)
Parsed with column specification:
cols(
  state = col_character(),
  zcta5 = col_integer(),
  County = col_character(),
  PctUrban = col_double(),
  FIPS = col_character()
)

| You are really on a roll!
  |===============================================                                                     |  47%
| Take a look at the first few rows of the 'urban' data frame object by calling the head() function on it

> head(urban)
# A tibble: 6 × 5
  state zcta5        County PctUrban  FIPS
  <chr> <int>         <chr>    <dbl> <chr>
1    01 35004  St. Clair AL     64.0 01115
2    01 35005  Jefferson AL     79.8 01073
3    01 35006  Jefferson AL      0.0 01073
4    01 35007     Shelby AL     90.5 01117
5    01 35010 Tallapoosa AL     45.2 01123
6    01 35013     Blount AL    100.0 01009

| Excellent work!
  |=====================================================                                               |  53%
| You'll see that there are 5 columns - state, zcta5 (a 5-digit zip code identifier), County (the name of the
| county in which the zip code resides), PctUrban (the percentage of the zip code that is considered urban),
| and FIPS (a 5-digit identifier for the county).

...
  |===========================================================                                         |  59%
| Notice that the second column ("zcta5") was read in as an integer column. In most applications we will want
| this to be a character column.

...
  |=================================================================                                   |  65%
| How can we use the compact string representation of the 'col_types' argument to read_csv() to force the
| "zcta5" column to be character? Leave all of the other columns as the type that the currently are read in
| as and remember to save the output of read_csv() to an object named 'urban'.

> urban <- read_csv(datafile, col_types = "cccdc")

| You are quite good my friend!
  |=======================================================================                             |  71%
| It turns out we also don't need the last column of the data frame (the "FIPS") column. In order to save
| some space, we would like to tell read_csv() to not read that last column.

...
  |============================================================================                        |  76%
| How can we tell read_csv() to not read in the last column of the table? Note that you can use the compact
| string representation of the 'col_types' argument for this too. Remember to save the output of read_csv()
| to an object named 'urban'. You can type 'play()' to play around in R before giving your answer.

> urban <- read_csv(datafile, col_types = "cccd-")

| Nice work!
  |==================================================================================                  |  82%
| Take a look at the first few rows of the 'urban' data frame object by calling the head() function on it.
| Confirm that there are fewer columns now.

> head(urban)
# A tibble: 6 × 4
  state zcta5        County PctUrban
  <chr> <chr>         <chr>    <dbl>
1    01 35004  St. Clair AL     64.0
2    01 35005  Jefferson AL     79.8
3    01 35006  Jefferson AL      0.0
4    01 35007     Shelby AL     90.5
5    01 35010 Tallapoosa AL     45.2
6    01 35013     Blount AL    100.0

| You are quite good my friend!
  |========================================================================================            |  88%
| Finally, we may only need the first few rows of a table at first and so it might make sense to tell
| read_csv() to only read in a few rows rather than the entire dataset.

...
  |==============================================================================================      |  94%
| Building on what we have done before, how would you additionally tell read_csv() to only read in the first
| 100 rows? Note that we still want to force the second column to be character and we do not want to read the
| last column.

> urban <- read_csv(datafile, col_types = "cccd-", n_max = 100)

| You got it!
  |====================================================================================================| 100%