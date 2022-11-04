# Découverte des fonctions disponibles avec le package stringr et mise en pratique sur des données réelles


# str_length("abc")

# This is now equivalent to the base R function nchar(). Previously it was needed to work around issues with nchar() such as the fact that it returned 2 for nchar(NA). This has been fixed as of R 3.3.0, so it is no longer so important.
# You can access individual character using str_sub(). It takes three arguments: a character vector, a start position and an end position. Either position can either be a positive integer, which counts from the left, or a negative integer which counts from the right. The positions are inclusive, and if longer than the string, will be silently truncated.

x <- c("abcdef", "ghifjk")

# The 3rd letter
str_sub(x, 3, 3)

#To duplicate individual strings, you can use str_dup():
str_dup(x, c(2, 3))

# Three functions add, remove, or modify whitespace:
# str_pad() pads a string to a fixed length by adding extra whitespace on the left, right, or both sides.

x <- c("abc", "defghi")
str_pad(x, 10) # default pads on left

str_pad(x, 10, "both")

#######

x <- c("Short", "This is a long string")

x %>% 
  str_trunc(10) %>% 
  str_pad(10, "right")


# The opposite of str_pad() is str_trim(), which removes leading and trailing whitespace:
  
x <- c("  a   ", "b   ",  "   c")
str_trim(x)
#> [1] "a" "b" "c"
str_trim(x, "left")
#> [1] "a   " "b   " "c"

# You can use str_wrap() to modify existing whitespace in order to wrap a paragraph of text, such that the length of each line is as similar as possible.

jabberwocky <- str_c(
  "`Twas brillig, and the slithy toves ",
  "did gyre and gimble in the wabe: ",
  "All mimsy were the borogoves, ",
  "and the mome raths outgrabe. "
)

cat(str_wrap(jabberwocky, width = 40))
#> `Twas brillig, and the slithy toves did
#> gyre and gimble in the wabe: All mimsy
#> were the borogoves, and the mome raths
#> outgrabe.

# Locale sensitive
# A handful of stringr functions are locale-sensitive: they will perform differently in different regions of the world. These functions are case transformation functions:
  
x <- "I like horses."
str_to_upper(x)

str_to_title(x)

str_to_lower(x)

str_to_lower(x, "tr")


# String ordering and sorting:
  
x <- c("y", "i", "k")
str_order(x)

str_sort(x)

str_sort(x, locale = "lt")


#The locale always defaults to English to ensure that the default behaviour is identical across systems. Locales always include a two letter ISO-639-1 language code (like “en” for English or “zh” for Chinese), and optionally a ISO-3166 country code (like “en_UK” vs “en_US”). You can see a complete list of available locales by running stringi::stri_locale_list().

#Pattern matching
#The vast majority of stringr functions work with patterns. These are parameterised by the task they perform and the types of patterns they match.

#Tasks
#Each pattern matching function has the same first two arguments, a character vector of strings to process and a single pattern to match. stringr provides pattern matching functions to detect, locate, extract, match, replace, and split strings. I’ll illustrate how they work with some strings and a regular expression designed to match (US) phone numbers:
  
strings <- c(
    "apple", 
    "219 733 8965", 
    "329-293-8753", 
    "Work: 579-499-7527; Home: 543.355.3679"
  )
phone <- "([2-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"

# str_detect() detects the presence or absence of a pattern and returns a logical vector (similar to grepl()). str_subset() returns the elements of a character vector that match a regular expression (similar to grep() with value = TRUE)`.

# Which strings contain phone numbers?
str_detect(strings, phone)

str_subset(strings, phone)

#str_count() counts the number of matches:
  
# How many phone numbers in each string?
str_count(strings, phone)


# str_locate() locates the first position of a pattern and returns a numeric matrix with columns start and end. str_locate_all() locates all matches, returning a list of numeric matrices. Similar to regexpr() and gregexpr().

# Where in the string is the phone number located?
(loc <- str_locate(strings, phone))

str_locate_all(strings, phone)

# str_extract() extracts text corresponding to the first match, returning a character vector. str_extract_all() extracts all matches and returns a list of character vectors.

# What are the phone numbers?
str_extract(strings, phone)

str_extract_all(strings, phone)

str_extract_all(strings, phone, simplify = TRUE)

# str_match() extracts capture groups formed by () from the first match. It returns a character matrix with one column for the complete match and one column for each group. str_match_all() extracts capture groups from all matches and returns a list of character matrices. Similar to regmatches().

# Pull out the three components of the match
str_match(strings, phone)

str_match_all(strings, phone)

# str_replace() replaces the first matched pattern and returns a character vector. str_replace_all() replaces all matches. Similar to sub() and gsub().

str_replace(strings, phone, "XXX-XXX-XXXX")

str_replace_all(strings, phone, "XXX-XXX-XXXX")

# str_split_fixed() splits a string into a fixed number of pieces based on a pattern and returns a character matrix. str_split() splits a string into a variable number of pieces and returns a list of character vectors.

str_split("a-b-c", "-")

str_split_fixed("a-b-c", "-", n = 2)
