# interestFunctions.R
# A collection of functions to work with interest rates
# peter.gruber@usi.ch, 2019-03-13

ccinterest <- function(r,T=1) {
  # ccinterest calculates the return on continuously compounded interest
  # INPUT    r ... 1x1 ... interest rate [fraction]
  #          T ... 1x1 ... time [yr]
  # OUTPUT   ..... 1x1 ... payoff of 1 unit of currency
  return( exp(r*T) )
}

dcinterest <- function(r,T=1) {
  # dcinterest calculates the return on discretely compounded interest
  # INPUT    r ... 1x1 ... interest rate [fraction]
  #          T ... 1x1 ... time [yr]
  # OUTPUT   ..... 1x1 ... payoff of 1 unit of currency
  return( (1+r)^T )
}

ccdiscount <- function(r,T=1) {
  # ccdiscount calculates the return on continuously discounted interest
  # INPUT    r ... 1x1 ... interest rate [fraction]
  #          T ... 1x1 ... time [yr]
  # OUTPUT   ..... 1x1 ... price of the zero-coupon bond
  return( exp(-r*T) )
}

dcdiscount <- function(r,T=1) {
  # dcdiscount calculates the return on discretely discounted interest
  # INPUT    r ... 1x1 ... interest rate [fraction]
  #          T ... 1x1 ... time [yr]
  # OUTPUT   ..... 1x1 ... price of the zero-coupon bond
  return( (1+r)^-T )
}

realequality <- function(a,b,tol=1e-12){
  # realequality checks wheter 2 numbers are equal within precision limits
  # INPUT    a,b . 1x1 ... two scalars to be compared
  # OUTPUT   ..... LOGICAL true if a==b (within limits) and false if a!=b
  if ( abs(a-b)/abs(a+b) < tol ) {return(TRUE)} else {return(FALSE)}
}