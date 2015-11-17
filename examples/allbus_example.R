#------------------------------------------------------------------------------
# Loading and describing the ALLBUS data - Example
#------------------------------------------------------------------------------
# Try to stick to formatting rules:
# - http://adv-r.had.co.nz/Style.html and/or
# - https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Load necessary packages
library(foreign) # Import "foreign" datasets, e.g. SPSS, Stata, etc.
library(Hmisc) # Various convenience functions

#------------------------------------------------------------------------------
# Define some constants (like filenames, paths, etc.) for consistent use

# Warning! R does not work with the usual Windows-style backslashes 
#   use ordinary slashes instead! 
datafile <- "N:/Ablagen/D01700-Projekte/D01700-MaleGenderRoleUnemp/allbus/dta/2012.dta"


#------------------------------------------------------------------------------
# Load data (ALLBUS 2012, V1.1.1, doi:10.4232/1.11753)
# Please always use correct and precise citations for datasets
# E.g. ALLBUS 2012 info were retrieved here:
# - https://dbk.gesis.org/DBKSearch/SDESC2.asp?no=4614&tab=3&db=D&dab=0
data <- read.dta(datafile)


#------------------------------------------------------------------------------
# Some descriptions

describe(data) # Describe the complete dataset
attach(data) # Attach dataset so we can do away with the "data$ ..."


#--------
# Gender - V217
describe(v217)

# Barplot
qplot(v217, fill = v217, data = data, geom = "bar")


#--------
# Age - V220
describe(v220)

# Histogram without missing category
qplot(v220, data = data[data$v220 != 999,], geom = "histogram")

# Box plot by gender without missing category
qplot(x = v217, y = v220, data = data[data$v220 != 999,], geom = "boxplot")


#--------
# Gender role attitudes 
# V633 - "Eine berufstätige Mutter kann ein genauso herzliches und  
#   vertrauensvolles Verhältnis zu ihren Kindern finden wie eine Mutter, die  
#   nicht berufstätigist"
describe(v633)

# Show categories
levels(v633) 

# Crosstab of v633 and gender
table(v633, v217)

# Row percentages of v633 and gender
round(prop.table(table(v633, v217), 1) * 100, 2)

# Column percentages of v633 and gender
round(prop.table(table(v633, v217), 2) * 100, 2)

# Bar chart without missing categories
qplot(v633, fill = v633, data = data[v633 %in% levels(v633)[1:5],], 
      geom = "bar") 

# Bar chart grouped by gender without missing categories
qplot(v633, fill = v217, data = data[v633 %in% levels(v633)[1:5],], 
      geom = "bar", position = position_dodge()) 


#--------
# Net income - V344
describe(v344)

# Mean without missings
mean(v344[v344 < 99997])

# Median without missings
median(v344[v344 < 99997])

# Mean by gender
aggregate(v344 ~ v217, data = data[v344 < 99997,], mean)

# Median by gender
aggregate(v344 ~ v217, data = data[v344 < 99997,], median)

# Boxplot by gender without missing category and trimmed at 20000
qplot(x = v217, y = v344, data = data[v344 < 20000,], geom = "boxplot")

# Histogram without missing category and trimmed at 20000
qplot(v344, data = data[v344 < 20000,], geom = "histogram") 

# Histogram grouped by gender without missing category and trimmed at 5000
qplot(v344, fill = v217, data = data[v344 < 5000,], geom = "histogram", 
      position = position_dodge()) 

# Scatter plot with sensible age range and trimmed at 5000 Euros
qplot(x = v220, y = v344, data = data[v220 > 14 & v220 < 65 & v344 > 0 & v344 < 5000,])

# Scatter plot by gender with sensible age range and trimmed at 5000 Euros
qplot(x = v220, y = v344, color = v217, 
      data = data[v220 > 14 & v220 < 65 & v344 > 0 & v344 < 5000,], 
      alpha = .8, size = .2, geom = "jitter")

# "Fancy" plot
qplot(x = v220, y = v344, color = v217, 
      data = data[v220 > 14 & v220 < 65 & v344 > 0 & v344 < 99997,], 
      alpha = .8, geom = c("jitter", "smooth")) + coord_cartesian(ylim = c(0,5000))

# Subset data for easier handling
work <- subset(data, v220 > 14 & v220 < 65 & v344 > 0 & v344 < 99997)
describe(work$v220)
describe(work$v344)

# Linear regression model
mod1 <- lm(v344 ~ v220 + v217, data = work)
summary(mod1)

# Linear regression model with gender-age interaction
mod2 <- lm(v344 ~ v220 + v217 + v220:v217, data = work)
summary(mod2)

# Generate squared age
work$v220sq <- work$v220 * work$v220

# Linear regression model with interaction and squared age
mod3 <- lm(v344 ~ v220 + v220sq + v217 + v220:v217, data = work)
summary(mod3)

# Linear regression model with interaction, squared age and its interaction
mod4 <- lm(v344 ~ v220 + v220sq + v217 + v220:v217 + v220sq:v217, data = work)
summary(mod4)
