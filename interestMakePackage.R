# interestMakePackage.R
# Create a package from interestFunctions.R
# peter.gruber@usi.ch, 2019-03-20

# --> Set Working Directory !!
install.packages("devtools")

rm(list=ls())
source("interestFunctions.R")
package.skeleton("interest")

# fill in all the files

# --> Set Working Directory to location of DESCRIPTION file 
devtools::check()
devtools::build()

library(interest)

?`interest-package` # --> Click on "index" at bottom! 
?ccinterest
ccinterest(0.05,2)
