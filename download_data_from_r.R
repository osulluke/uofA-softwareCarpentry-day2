dir.create("data")
data_file <- "data/gapminder.csv"
# help("download.file")
# file.remove("data/gapminder.csv")
if (!file.exists(data_file)) {download.file(url="https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = data_file)}
help(file.exists)

dat <- read.csv("data/gapminder.csv", header = TRUE)
help(read.csv)
# dat2 <- read.csv("data/")  ## you can use 'tab completion' to access files in a directory.
head(dat)
summary(dat)
str(dat)


help("subset")
uganda <- subset(dat, dat$country == "Uganda")
summary(uganda)
str(uganda)
uganda

analyze <- function(cName) {
  my_country <- subset(dat, dat$country == cName)
  print(mean(my_country$lifeExp))
  print(min(my_country$lifeExp))
  print(max(my_country$lifeExp))
  plot(my_country$year, my_country$lifeExp, xlab="Year", ylab="Age (yrs)",main=c(cName),sub="Life Expectancy")
}
help("plot")

analyze("Algeria")
analyze("Afghanistan")
analyze("Uganda")
analyze("United States")
analyze("France")
analyze("Japan")
analyze("Canada")

for (w in dat) {
  print(dat$country)
}

##IMPORTANT!!! THE SINGLE | IS AN ELEMENT-WISE COMPARATOR, NOT THE || THAT I'M USED TO!!!

gapminder_52_97 <- subset(dat, dat$year == 1952 | dat$year == 1997)
gapminder_67_07 <- subset(dat, dat$year == 1967 | dat$year == 2007)

##IMPORTANT!!! CRITICAL TO INCLUDE THE row.names argument, as well as the quote arg!!!
write.csv(file="data/gapminder_52_97.csv", gapminder_52_97, row.names = FALSE, quote = FALSE)
write.csv(file="data/gapminder_67_07.csv", gapminder_67_07, row.names = FALSE, quote = FALSE)
summary(dat)
str(dat)
for (year in dat$year)
