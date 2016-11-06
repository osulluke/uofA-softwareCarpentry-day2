ls()
x<- 4
ls ()
x<-c("AZ","CA","NZ")
ls()
list

# Ctrl + "L" clears the console

#functions
?mean
date
date()
?date
help("function")
my_sum <- function(in_1,in_2) {
  tot = in_1 + in_2
  return(tot)
}
my_sum(1,2)
# Literate programming example; function arguments should be assigned within the 
# function call itself to make the program more readable - this is a best practice.
my_sum(in_1 = 4, in_2 = 3)

## THESE LINES ARE COMMENTED OUT TO SHOW HOW THE 'source' syntax works.
# fah_to_kelvin <- function(temp) {
#   kelvin <- (temp-32) * (5/9) + 273.15
#   return(kelvin)
# }
# 
# kel_to_cel <- function(temp) {
#   celsius <- temp - 273.15
#   return(celsius)
# }
# 
# fah_to_celsius <- function(temp) {
#   celsius <- (temp - 32) * (5/9)
#   return(celsius)
# }

# How to 'source' a function file using best practices.
source(file = "temp_conversions.R")
help("source")

fah_to_celsius(temp=32) == 0
fah_to_celsius(temp=212) == 100
fah_to_kelvin(32)
fah_to_kelvin(temp=32)
kel_to_cel(temp=0)

best_practice <- c("write","programs","for","people","not","computers")
asterisk <- "***"
fence <- function(best_prac, asterisk) {
  return(c(asterisk, best_prac, asterisk))
}

fence(best_prac = best_practice, asterisk = asterisk)
best_practice
fence(best_prac = "This is a short string", asterisk = "*")
fence(best_prac = "Test", asterisk = "***********")

for (w in best_practice) {
  print(w)
}


help("file.create")


