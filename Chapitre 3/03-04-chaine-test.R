# Introduction sur les chaines de caractères et leurs utilisations en R
# Dans le package base

# 1 is.character() and as.character()
perso <- 1
is.character(perso)

perso2 <- as.character(perso)
is.character(perso2)

# 2 tolower() and toupper()
perso3 <- "sherlock holmes"
toupper(perso3)

# 3 nchar()
nchar(perso3)

# 4 grep()
grep('s', perso3)

# 5 paste() et paste0()
paste0('sherlock','holmes')
paste('sherlock','holmes', sep="-")

# 6 sub() and gsub()
sub('e','u',perso3)
gsub('e','u',perso3)

# 7 substr()
substr(perso3,1,5)
