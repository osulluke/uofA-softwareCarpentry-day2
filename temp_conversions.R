#Here is a small library of functions that convert temperatures.

fah_to_kelvin <- function(temp) {
  kelvin <- (temp-32) * (5/9) + 273.15
  return(kelvin)
}

kel_to_cel <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fah_to_celsius <- function(temp) {
  celsius <- (temp - 32) * (5/9)
  return(celsius)
}
