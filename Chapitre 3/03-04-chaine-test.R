# Découverte des fonctions disponibles avec le package stringr et mise en pratique sur des données réelles

library(stringr)

str_length("Dr Watson")


x <- c("Sherlock Holmes", "Dr Watson")
str_sub(x, 4, 6)


# str_pad() 
x <- c("Elementaire", "Elementaire, mon cher Watson")
str_pad(x, 20) # default pads on left

str_pad(x, 20, "both")

#######

# str_trim()
  
x <- c("  indice1   ", "indice2   ",  "   indice3")
str_trim(x)

str_trim(x, "left")


# str_wrap() 

quote <- str_c(
  "`Lorsque vous avez éliminé l'impossible,   ",
  "ce qui reste, ",
  "si improbable soit-il, ",
  "est nécessairement la vérité. "
)

cat(str_wrap(quote, width = 20))


x <- "Nos idées doivent être aussi vastes que la nature pour pouvoir en rendre compte."
str_to_upper(x)

str_to_title(x)

str_to_lower(x)


# str_order
x <- c("y", "i", "k")
str_order(x)

str_sort(x)


#Pattern matching
strings <- c(
    "apple", 
    "219 733 8965", 
    "329-293-8753", 
    "Travail: 579-499-7527; Maison: 543.355.3679"
  )
phone <- "([2-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"

str_detect(strings, phone)

str_subset(strings, phone)

str_count(strings, phone)


# str_extract()
str_extract(strings, phone)

str_extract_all(strings, phone)


# str_replace()
str_replace(strings, phone, "XXX-XXX-XXXX")

str_replace_all(strings, phone, "XXX-XXX-XXXX")


# str_split_fixed()
str_split("a-b-c", "-")


