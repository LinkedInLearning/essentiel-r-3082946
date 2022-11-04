# install.packages("ngram")
# install.packages("tm")

library(ngram)
library(tm)

# read txt file
url <- "https://raw.githubusercontent.com/voltek62/RsparkleR-examples/master/examples/advs.txt"
txt <- readLines(url)
data.sentence <- concatenate(txt)

# remove punctuations & numbers, fix spacing
data.sentence.staging <- preprocess(data.sentence
                                    ,case='lower'
                                    ,remove.punct = TRUE 
                                    ,remove.numbers = TRUE
                                    ,fix.spacing = TRUE
                                    )

# remove stopwords
stopwords_regex = paste(c(stopwords('en'),'holmes'), collapse = '\\b|\\b')
stopwords_regex = paste0('\\b', stopwords_regex, '\\b')
data.sentence.prepared = stringr::str_replace_all(data.sentence.staging, stopwords_regex, '')

# bigram only
ng <- ngram(data.sentence.prepared, n=2)

print(head(get.phrasetable(ng)))
