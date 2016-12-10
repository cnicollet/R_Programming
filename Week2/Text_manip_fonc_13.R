13: Text Manipulation Functions  14: Regular Expressions          15: The stringr Package        


Selection: 13
  |                                                                                                    |   0%

| Most common types of data are encoded in text, even if that text is representing numerical values, so being
| able to manipulate text as a software developer is essential. R provides several built-in tools for
| manipulating text, and there is a rich ecosystem of packages for R for text based analysis. First let’s
| concentrate on some basic text manipulation functions.

...
  |=====                                                                                               |   5%
| Text in R is represented as a string object, which looks like a phrase surrounded by quotation marks in the
| R console. For example "Hello!" and 'Strings are fun!' are both strings. You can tell whether an object is
| a string using the is.character() function. Strings are also known as characters in R.

...
  |===========                                                                                         |  11%
| Assign the string "Hello World!" to a variable called x.

> x <- "Hello World!"

| Keep up the great work!
  |================                                                                                    |  16%
| Now look at the value of that variable by entering x into the R console.

> x
[1] "Hello World!"

| You are really on a roll!
  |=====================                                                                               |  21%
| You can combine several strings using the paste() function. Provide the arguments "Square" "Circle" and
| "Triangle" to paste() to see how it works.

> paste("Square", "Circle", "Triangle")
[1] "Square Circle Triangle"

| You nailed it! Good job!
  |==========================                                                                          |  26%
| By default the paste() function inserts a space between each word. You can insert a different string
| between each word by specifying the sep argument. Paste together the same three words as before, but this
| time specify sep = "+"

> paste("Square", "Circle", "Triangle", sep = "+")
[1] "Square+Circle+Triangle"

| Excellent work!
  |================================                                                                    |  32%
| Which of the following expressions evaluates to "Yes_No"

1: paste("Yes", "No", "_")
2: paste("Yes", "No", sep = "_")
3: paste(c("Yes", "No"), sep = "_")

Selection: 2

| You nailed it! Good job!
  |=====================================                                                               |  37%
| A shortcut for combining all of the string arguments without any characters in between each of them is to
| use the paste0() function. Use paste0() to paste together "Square" "Circle" and "Triangle"

> paste0("Square", "Circle", "Triangle")
[1] "SquareCircleTriangle"

| All that hard work is paying off!
  |==========================================                                                          |  42%
| You can also provide a vector of strings as an argument to paste().

...
  |===============================================                                                     |  47%
| First assign a string vector containing "Square" "Circle" and "Triangle" to a variable called shapes.

> shapes <- c("Square", "Circle", "Triangle")

| You got it!
  |=====================================================                                               |  53%
| Now enter paste("My favorite shape is a", shapes) into the R console.

> paste("My favorite shape is a", shapes)
[1] "My favorite shape is a Square"   "My favorite shape is a Circle"   "My favorite shape is a Triangle"

| That's the answer I was looking for.
  |==========================================================                                          |  58%
| As you can see, all of the possible string combinations are produced when you provide a vector of strings
| as an argument to paste().

...
  |===============================================================                                     |  63%
| You can also collapse all of the elements of a vector of strings into a single string by specifying the
| collapse argument. Enter paste(shapes, collapse = " ") into the R console to see how this works.

> paste(shapes, collapse = " ")
[1] "Square Circle Triangle"

| That's a job well done!
  |====================================================================                                |  68%
| Besides pasting strings together, there are a few other basic string manipulation functions you should be
| made aware of.

...
  |==========================================================================                          |  74%
| The nchar() function counts the number of characters in a string. Enter nchar("Count Me!") into the R
| console to try this out.

> nchar("Count Me!")
[1] 9

| That's the answer I was looking for.
  |===============================================================================                     |  79%
| The toupper() and tolower() functions make strings all uppercase or lowercase respectively. First create a
| string vector called cases which contains the strings "CAPS" "low" and "Title"

> cases <- c("CAPS", "low", "Title")

| All that practice is paying off!
  |====================================================================================                |  84%
| Now enter toupper(cases) into the R console.

> toupper(cases)
[1] "CAPS"  "LOW"   "TITLE"

| You're the best!
  |=========================================================================================           |  89%
| Now try entering tolower(cases) into the R console.

> tolower(cases)
[1] "caps"  "low"   "title"

| All that hard work is paying off!
  |===============================================================================================     |  95%
| In this lesson we only covered the basics of manipulating strings in R, the real fun material is in the
| regular expressions lesson!

...
  |====================================================================================================| 100%