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

analyze <- function(file_name, cName) {
  dat <- read.csv(file_name)
  my_country <- subset(dat, dat$country == cName)
  print(mean(my_country$lifeExp))
  print(min(my_country$lifeExp))
  print(max(my_country$lifeExp))
  plot(my_country$year, my_country$lifeExp, xlab="Year", ylab="Age (yrs)",main=c(cName),sub="Life Expectancy")
}
help("plot")

analyze("data/gapminder.csv","Algeria")
analyze("data/gapminder.csv","Afghanistan")
analyze("data/gapminder.csv","Uganda")
analyze("data/gapminder.csv","United States")
analyze("data/gapminder.csv","France")
analyze("data/gapminder.csv","Japan")
analyze("data/gapminder.csv","Canada")

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
for (year in dat$year) {
  
}

# list files according to a certain pattern in a directory:
help("list.files")
list.files(path = "data", pattern = ".csv", full.names = TRUE)
for (fl in list.files(path = "data", pattern = ".csv", full.names = TRUE)) {
  print(fl)
}

# PROBABLY BETTER TO ASSIGN THE FILE LIST TO A VARIABLE, LIKE THIS:

file_list <- list.files(path = "data", pattern = ".csv", full.names = TRUE)
for (fl in file_list) {
  print(fl)
}  

analyze_all <- function(countr) {
  filenames <- list.files(path = "data", pattern = ".csv", full.names = TRUE)
  for (fl in filenames) {
    print(fl)
    analyze(fl, countr)
  }
}
analyze_all("Uganda")
analyze_all("Canada")
analyze_all("United States")

