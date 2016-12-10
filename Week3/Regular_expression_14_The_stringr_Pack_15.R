library(swirl)

1: R Programming
2: The R Programming Environment
3: Take me to the swirl course repository!

Selection: 2

| Please choose a lesson, or type 0 to return to course menu.

 1: Setting Up Swirl              2: Basic Building Blocks         3: Sequences of Numbers       
 4: Vectors                       5: Missing Values                6: Subsetting Vectors         
 7: Matrices and Data Frames      8: Logic                         9: Workspace and Files        
10: Reading Tabular Data         11: Looking at Data              12: Data Manipulation          
13: Text Manipulation Functions  14: Regular Expressions          15: The stringr Package        


Selection: 14
  |                                                                                                    |   0%

| Now that we’ve covered the basics of string manipulation in R, let’s discuss the more advanced topic of
| regular expressions. A regular expression is a string that defines a pattern that could be contained within
| another string. A regular expression can be used for searching for a string, searching within a string, or
| replacing one part of a string with another string. In this lesson I might refer to a regular expression as
| a regex, just know that they’re the same thing.

...
  |==                                                                                                  |   2%
| Regular expressions use characters to define patterns of other characters. Although that approach may seem
| problematic at first, we’ll discuss meta-characters (characters that describe other characters) and how you
| can use them to create powerful regular expressions.

...
  |====                                                                                                |   4%
| One of the most basic functions in R that uses regular expressions is the grepl() function, which takes two
| arguments - a regular expression and a string to be searched. If the string contains the specified regular
| expression then grepl() will return TRUE, otherwise it will return FALSE.

...
  |======                                                                                              |   6%
| Let’s contruct an example using grepl() with a string and a regex. First assign the regex "a" to a variable
| called regular_expression.

> regular_expression <- "a"

| Great job!
  |========                                                                                            |   8%
| Next assign the string "Maryland" to a variable called string_to_search.

> string_to_search <- "Maryland"

| Keep up the great work!
  |==========                                                                                          |  10%
| Now use grepl() to see whether regular_expression is present in string_to_search.

> grepl(regular_expression, string_to_search)
[1] TRUE

| You are doing so well!
  |============                                                                                        |  12%
| In the previous example we specify the regular expression "a" and store it in a variable called
| regular_expression. Remember that regular expressions are just strings! We also store the string "Maryland"
| in a variable called string_to_search. The regular expression "a" represents a single occurrence of the
| character "a". Since "a" is contained within "Maryland", grepl() returns the value TRUE.

...
  |==============                                                                                      |  14%
| Which of the following expressions would return the value FALSE?

1: grepl("M", "Maryland")
2: grepl("u", "Maryland")
3: grepl("a", "Maryland")

Selection: 2

| Excellent job!
  |================                                                                                    |  16%
| Let's try a few more examples. Before you enter each comming into the R console, try to guess what the
| result will be (either TRUE or FALSE). Type grepl("ryla", "Maryland") into the R console.

> grepl("ryla", "Maryland")
[1] TRUE

| You got it!
  |==================                                                                                  |  18%
| Now try typing grepl("Marly", "Maryland") into the R console.

> grepl("Marly", "Maryland")
[1] FALSE

| Great job!
  |====================                                                                                |  20%
| Since "ryla" is a sub-string of "Maryland", grepl() returns TRUE, however when a regular expression like
| "Marly" is searched grepl() returns FALSE because it is not a sub-string of "Maryland".

...
  |======================                                                                              |  22%
| There’s a dataset that comes with R called state.name which is a vector of strings, one for each state in
| the United States of America. We’re going to use this vector in several of the following examples. Let's
| take a look at this vector by entering head(state.name)

> head(state.name)
[1] "Alabama"    "Alaska"     "Arizona"    "Arkansas"   "California" "Colorado"  

| Excellent work!
  |========================                                                                            |  24%
| Let’s build a regular expression for identifying several strings in this vector, specifically a regular
| expression that will match names of states that both start and end with a vowel. The state name could start
| and end with any vowel, so we won’t be able to match exact sub-strings like in the previous examples.
| Thankfully we can use metacharacters to look for vowels and other parts of strings.

...
  |=========================                                                                           |  25%
| I'm opening up a table of metacharacters that I'll be refering to for the rest of the lesson.

...
  |===========================                                                                         |  27%
| The first metacharacter that we’ll discuss is ".". The metacharacter that only consists of a period
| represents any character other than a new line (we’ll discuss new lines soon).

...
  |=============================                                                                       |  29%
| Let's try using this metacharacter. Enter grepl(".", "Maryland") into the R console to see if there is one
| instance of any character present.

> grepl(".", "Maryland")
[1] TRUE

| You are really on a roll!
  |===============================                                                                     |  31%
| Let's try one more time using this metacharacter. Enter grepl(".", "") into the R console.

> grepl(".", "")
[1] FALSE

| All that practice is paying off!
  |=================================                                                                   |  33%
| There aren't any characters in an empty string, there this expression is evaluated to FALSE.

...
  |===================================                                                                 |  35%
| As you can see the period metacharacter is very liberal. This metacharacter is most userful when you don’t
| care about a set of characters in a regular expression. Enter grepl("a.b", c("aaa", "aab", "abb", "acadb"))
| into the R console to see what happens.

> grepl("a.b", c("aaa", "aab", "abb", "acadb"))
[1] FALSE  TRUE  TRUE  TRUE

| You got it!
  |=====================================                                                               |  37%
| In the previos case grepl() returns TRUE for all strings that contain an "a" followed by any other
| character followed by a "b".

...
  |=======================================                                                             |  39%
| You can specify a regular expression that contains a certain number of characters or metacharacters using
| the enumeration metacharacters.

...
  |=========================================                                                           |  41%
| The "+" metacharacter indicates that one or more of the preceding expression should be present and "*"
| indicates that zero or more of the preceding expression is present. Use grepl() to see if the string
| "Maryland" contains one for more of "a"

> grepl("a+", "Maryland")
[1] TRUE

| Great job!
  |===========================================                                                         |  43%
| Now use grepl() to see if the string "Maryland" contains zero for more of "x"

> grepl("x*", "Maryland")
[1] TRUE

| You are really on a roll!
  |=============================================                                                       |  45%
| You can also specify exact numbers of expressions using curly brackets {}. For example "a{5}" specifies "a
| exactly five times," "a{2,5}" specifies "a between 2 and 5 times," and "a{2,}" specifies "a at least 2
| times."

...
  |===============================================                                                     |  47%
| Use grepl() to see if the string "Mississippi" contains exactly two adjacent "s" (using curly brackets).

> grepl("s{2}", "Mississippi")
[1] TRUE

| Excellent job!
  |=================================================                                                   |  49%
| Use grepl() to see if the string "Mississippi" contains two or three adjacent "i" (using curly brackets).

> grepl("i{2,3}", "Mississippi")
[1] FALSE

| You're the best!
  |===================================================                                                 |  51%
| In addition to curly brackets you can use parentheses "()" to create a capturing group. A capturing group
| allows you to use quantifiers on other regular expressions. Let's use a capturing group to see if the
| string "Mississippi" contains the substring "iss" twice.

...
  |=====================================================                                               |  53%
| Type grepl("(iss){2}", "Mississippi") into the R console to see if the substring "iss" exists twice
| adjacently in the string "Mississippi"

> grepl("(iss){2}", "Mississippi")
[1] TRUE

| Excellent job!
  |=======================================================                                             |  55%
| Notice that the regular expression in the previous example is essentially the same as "ississ"

...
  |=========================================================                                           |  57%
| Which of the following expressions will evaluate to TRUE? This is tough! Take a minute to think about it.

1: grepl("(i.{2}){4}", "Mississippi")
2: grepl("(i.{3}){3}", "Mississippi")
3: grepl("(i.{2}){3}", "Mississippi")

Selection: 3

| You got it!
  |===========================================================                                         |  59%
| You can specify sets of characters with regular expressions, some of which come built in, but you can build
| your own character sets too. It will be a good idea to reference the metachacter table I brought up before.

...
  |=============================================================                                       |  61%
| First we'll discuss the built in character sets words ("\\w"), digits ("\\d"), and whitespace characters
| ("\\s"). Words specify any letter, digit, or a underscore, digits specify the digits 0 through 9, and
| whitespace specifies line breaks, tabs, or spaces. Each of these character sets have their own compliments
| - not words ("\\W"), not digits ("\\D"), and not whitespace characters ("\\S"). Each specifies all of the
| characters not included in their corresponding character sets.

...
  |===============================================================                                     |  63%
| Let's try out a few of these character sets. Type grepl("\\d", "0123456789") into the R console to see if
| the string "0123456789" contains a digit.

> grepl("\\d", "0123456789")
[1] TRUE

| You're the best!
  |=================================================================                                   |  65%
| Now let's try using the compliment of the "\\d" set. Enter grepl("\\D", "0123456789") into the R console to
| see if there are any non-digits in the string "0123456789"

> grepl("\\D", "0123456789")
[1] FALSE

| Your dedication is inspiring!
  |===================================================================                                 |  67%
| Which of the following evaluates to FALSE?

1: grepl("\\w", "abcdefghijklmnopqrstuvwxyz0123456789")
2: grepl("\\s", "abcdefghijklmnopqrstuvwxyz0123456789")
3: grepl("\\d", "abcdefghijklmnopqrstuvwxyz0123456789")

Selection: 2

| That's correct!
  |=====================================================================                               |  69%
| You can also specify specific character sets using straight brackets []. For example a character set of
| just the vowels would look like - "[aeiou]". You can find the complement to a specific character by putting
| a carrot ^ after the first bracket. For example "[^aeiou]" matches all characters except the lowercase
| vowels. You can also specify ranges of characters using a hyphen - inside of the brackets. For example
| "[a-m]" matches all of the lowercase characters between a and m, while "[5-8]" matches any digit between 5
| and 8 inclusive.

...
  |=======================================================================                             |  71%
| Time to take some of the training wheels off! Use grepl() to see if there is a vowel in the string
| "rhythms"

> grepl("[aeiou]", "rhythms")
[1] FALSE

| Great job!
  |=========================================================================                           |  73%
| Which of the following expressions evaluates to TRUE?

1: grepl("[a-m]", "ABC")
2: grepl("[^AEIOU]", "rhythms")
3: grepl("[a-mA-M]", "ABC")

Selection: 3

| Excellent work!
  |===========================================================================                         |  75%
| You might be wondering how you can use regular expressions to match a particular punctuation mark since
| many punctuation marks are used as metacharacters! Putting two backslashes before a punctuation mark that
| is also a metacharacter indicates that you are looking for the symbol and not the metacharacter meaning.
| For example "\\." indicates you are trying to match a period in a string.

...
  |============================================================================                        |  76%
| Use grepl() to see whether or not a peroid exists in the string "http://www.jhsph.edu/"

> grepl("\\.", "http://www.jhsph.edu/")
[1] TRUE

| You nailed it! Good job!
  |==============================================================================                      |  78%
| Which of the following expressions evaluates to TRUE?

1: grepl("\\+", "tragedy + time = humor")
2: grepl("\\*", "tragedy + time = humor")
3: grepl("\\.", "tragedy + time = humor")

Selection: 1

| Great job!
  |================================================================================                    |  80%
| There are also metacharacters for matching the beginning and the end of a string which are "^" and "$"
| respectively.

...
  |==================================================================================                  |  82%
| Let's test these operators out. Enter grepl("^a", c("bab", "aab")) into the R console in order to see if
| either string begins with "a"

> grepl("^a", c("bab", "aab"))
[1] FALSE  TRUE

| Nice work!
  |====================================================================================                |  84%
| Now use grepl() to see if the two strings from the last question end with the letter "b"

> grepl("b$", c("bab", "aab"))
[1] TRUE TRUE

| That's a job well done!
  |======================================================================================              |  86%
| The last metacharacter we’ll discuss is the OR metacharacter ("|"). The OR metacharacter matches either the
| regex on the left or the regex on the right side of this character.

...
  |========================================================================================            |  88%
| Enter grepl("a|b", c("abc", "bcd", "cde")) into the R console to see which strings contain "a" or "b"

> grepl("a|b", c("abc", "bcd", "cde"))
[1]  TRUE  TRUE FALSE

| Excellent work!
  |==========================================================================================          |  90%
| The expression grepl("North|South", c("South Dakota", "North Carolina", "West Virginia")) evaluates to
| which of the following?

1: FALSE TRUE FALSE
2: TRUE FALSE FALSE
3: TRUE TRUE FALSE

Selection: 3

| Excellent job!
  |============================================================================================        |  92%
| Finally we’ve learned enough to create a regular expression that matches all state names that both begin
| and end with a vowel! This regular expression must match the beginning of a string, then one instance of a
| capalized vowel, then any characters until one instance of a lowercase vowel followed by the end of the
| string.

...
  |==============================================================================================      |  94%
| Constructing this regular expression may be a little tough so I'll help you out! Enter start_end_vowel <-
| "^[AEIOU]{1}.+[aeiou]{1}$" into the R console to store this regex.

> start_end_vowel <- "^[AEIOU]{1}.+[aeiou]{1}$"

| You are doing so well!
  |================================================================================================    |  96%
| Now you can see which states match this regular expression. Enter vowel_state_lgl <- grepl(start_end_vowel,
| state.name) into the R console to store a logical vector which indicates which strings in state.name
| matches the regular expression.

> vowel_state_lgl <- grepl(start_end_vowel, state.name)

| You are really on a roll!
  |==================================================================================================  |  98%
| Now finally index state.name with the vector you created in the last question in order to see which state
| names start and end with a vowel!

> state.name[vowel_state_lgl]
[1] "Alabama"  "Alaska"   "Arizona"  "Idaho"    "Indiana"  "Iowa"     "Ohio"     "Oklahoma"

| All that practice is paying off!
  |====================================================================================================| 100%

1: R Programming
2: The R Programming Environment
3: Take me to the swirl course repository!

Selection: 2

| Please choose a lesson, or type 0 to return to course menu.

 1: Setting Up Swirl              2: Basic Building Blocks         3: Sequences of Numbers       
 4: Vectors                       5: Missing Values                6: Subsetting Vectors         
 7: Matrices and Data Frames      8: Logic                         9: Workspace and Files        
10: Reading Tabular Data         11: Looking at Data              12: Data Manipulation          
13: Text Manipulation Functions  14: Regular Expressions          15: The stringr Package        


Selection: 15

| Attempting to load lesson dependencies...

| Package ‘stringr’ loaded correctly!
  |                                                                                                    |   0%

| The stringr package is wonderful for working with strings in R. Most of the functions in stringr take the
| same two arguments, a string and then a regex.

...
  |=====                                                                                               |   5%
| However before we get into stringr functions let's cover some of the fundamental string functions in R that
| use regular expressions.

...
  |==========                                                                                          |  10%
| In previous lessons we’ve been using grepl() to see if a regex matches a string. grepl() stands for "grep
| logical." Try out grepl() below by entering grepl("[Ii]", c("Hawaii", "Illinois", "Kentucky")) into the R
| console.

> grepl("[Ii]", c("Hawaii", "Illinois", "Kentucky"))
[1]  TRUE  TRUE FALSE

| That's the answer I was looking for.
  |===============                                                                                     |  15%
| There’s also the old fashioned grep() which returns the indices of the vector that match the regex
| argument. Enter grep("[Ii]", c("Hawaii", "Illinois", "Kentucky")) into the R console to test it out.

> grep("[Ii]", c("Hawaii", "Illinois", "Kentucky"))
[1] 1 2

| You are really on a roll!
  |====================                                                                                |  20%
| What would the expression grep("[Aa]", c("Florida", "Alabama", "Idaho")) be evaluated to?

1: 1 2 3
2: 1 3
3: 1 2
4: 2 3

Selection: 1

| You're the best!
  |=========================                                                                           |  25%
| The sub() function takes as arguments a regex, a “replacement,” and a vector of strings. This function will
| replace the first instance of that regex found in each string. Try out sub() by entering sub("[Ii]", "1",
| c("Hawaii", "Illinois", "Kentucky")) into the R console.

> sub("[Ii]", "1", c("Hawaii", "Illinois", "Kentucky"))
[1] "Hawa1i"   "1llinois" "Kentucky"

| Nice work!
  |==============================                                                                      |  30%
| The gsub() function is nearly the same as sub() except it will replace every instance of the regex that is
| matched in each string. Enter the exact line of code you used in the previous question, except use gsub()
| instead of sub().

> gsub("[Ii]", "1", c("Hawaii", "Illinois", "Kentucky"))
[1] "Hawa11"   "1ll1no1s" "Kentucky"

| You are really on a roll!
  |===================================                                                                 |  35%
| The expression gsub("[Aao]", "0", c("Georgia", "Minnesota", "California")) once evaluated will result in
| which of the following

1: Georgi0 Minnesot0 C0liforni0
2: Ge0rgi0 Minnes0t0 C0lif0rni0
3: Ge0rgia Minnes0ta Calif0rnia

Selection: 2

| Keep up the great work!
  |========================================                                                            |  40%
| The last functions we'll talk about before we get into stringr's functions is strsplit().

...
  |=============================================                                                       |  45%
| Store the names of all of the US states that contain two adjacent s's by entering two_s <-
| state.name[grep("ss", state.name)] into the R console.

> two_s <- state.name[grep("ss", state.name)]

| You got it!
  |==================================================                                                  |  50%
| Now take a look at the value of this variable by entering two_s into the R console.

> two_s
[1] "Massachusetts" "Mississippi"   "Missouri"      "Tennessee"    

| You got it!
  |=======================================================                                             |  55%
| In order to split each string where the s's are located enter strsplit(two_s, "ss") into the R console.

> strsplit(two_s, "ss")
[[1]]
[1] "Ma"        "achusetts"

[[2]]
[1] "Mi"   "i"    "ippi"

[[3]]
[1] "Mi"   "ouri"

[[4]]
[1] "Tenne" "ee"   


| Keep up the great work!
  |============================================================                                        |  60%
| Finally onto the stringr package! This package takes a “data first” approach to functions involving regex,
| so usually the string is the first argument and the regex is the second argument. The majority of the
| function names in stringr begin with str_.

...
  |=================================================================                                   |  65%
| The str_extract() function returns the sub-string of a string that matches the providied regular
| expression. Enter str_extract("Camaro Z28", "[0-9]+") into the R console to give this function a spin.

> str_extract("Camaro Z28", "[0-9]+")
[1] "28"

| You got it right!
  |======================================================================                              |  70%
| The str_order() function returns a numeric vector that corresponds to the alphabetical order of the strings
| in the provided vector. Enter str_order(c("p", "e", "n", "g")) into the R console.

> str_order(c("p", "e", "n", "g"))
[1] 2 4 3 1

| You got it!
  |===========================================================================                         |  75%
| The str_pad() function pads strings with other characters which is often useful when the string is going to
| be eventually printed for a person to read. Try this out by entering str_pad("Thai", width = 8, side =
| "left", pad = "-") into the R console.

> str_pad("Thai", width = 8, side = "left", pad = "-")
[1] "----Thai"

| You nailed it! Good job!
  |================================================================================                    |  80%
| The str_to_title() function acts just like tolower() and toupper() except it puts strings into Title Case.
| Enter str_to_title(c("CAPS", "low", "Title")) into the R console to see how this works.

> str_to_title(c("CAPS", "low", "Title"))
[1] "Caps"  "Low"   "Title"

| Nice work!
  |=====================================================================================               |  85%
| The str_trim() function deletes whitespace from both sides of a string. Enter str_trim(" trim me ") into
| the R console.

> str_trim(" trim me ")
[1] "trim me"

| Keep up the great work!
  |==========================================================================================          |  90%
| Lastly the word() function allows you to index each word in a string as if it were a vector. Enter
| word("See Spot run.", 2) into the R console to test this out.

> word("See Spot run.", 2)
[1] "Spot"

| That's a job well done!
  |===============================================================================================     |  95%
| That's the end of our tour of stringr!

...
  |====================================================================================================| 100%