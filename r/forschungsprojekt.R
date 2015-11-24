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
library(plyr)

#------------------------------------------------------------------------------
# Define some constants (like filenames, paths, etc.) for consistent use

# Warning! R does not work with the usual Windows-style backslashes 
#   use ordinary slashes instead! 
datafile <- "/home/vagrant/Desktop/Dokumente/datasets/ALLBUS2012/ZA4614_v1-1-1.dta"


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

summary(data$v632)
class(data$v632)

detach(data)

issp <- data[data$v632 == "issp familie",]


summary(issp$v217)
class(issp$v217)

attach(issp)

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
# V633 - "Eine berufst?tige Mutter kann ein genauso herzliches und  
#   vertrauensvolles Verh?ltnis zu ihren Kindern finden wie eine Mutter, die  
#   nicht berufst?tigist"
describe(v633)


#-----------
# Männer-Dummy
issp$mann[v217 == "mann"] <- 1
issp$mann[v217 != "mann"] <- 0

summary(issp$mann)
class(issp$mann)

# convert to factor
# issp$mann <-as.factor(issp$mann)

# back to numeric
# issp$mann <- as.numeric(levels(issp$mann))[issp$mann]

# Frauen-Dummy
issp$frau[v217 == "frau"] <- 1
issp$frau[v217 != "frau"] <- 0

summary(issp$frau)
class(issp$frau)

# convert to factor
# issp$frau <-as.factor(issp$frau)

# back to numeric
# issp$frau <- as.numeric(levels(issp$frau))[issp$frau]


# Kinder-Dummy
summary(issp$v694)
class(issp$v694)

issp$kinder[issp$v694 == "ja"]   <- 1
issp$kinder[issp$v694 == "nein"] <- 0

summary(issp$kinder)
class(issp$kinder)

# Tabelle Mann und Kinder, Väter-Dummy
table(issp$mann, issp$kinder)
issp$vater <- issp$mann * issp$kinder
table(issp$vater)
class(issp$vater)

issp$vater <-as.factor(issp$vater)
class(issp$vater)

# Tabelle Frau und Kinder, Mutter-Dummy
table(issp$frau, issp$kinder)
issp$mutter <- issp$frau * issp$kinder
table(issp$mutter)
class(issp$mutter)

issp$mutter <-as.factor(issp$mutter)
class(issp$mutter)

# Kinderlos-Dummy
issp$kinderlos[issp$v694 == "nein"]   <- 1
issp$kinderlos[issp$v694 == "ja"] <- 0

summary(issp$kinderlos)
class(issp$kinderlos)


# Kinderlose Männer
table(issp$mann, issp$kinderlos)
issp$kinderlosermann <- issp$mann * issp$kinderlos
table(issp$kinderlosermann)
class(issp$kinderlosermann)

issp$kinderlosermann <-as.factor(issp$kinderlosermann)
class(issp$kinderlosermann)

table(issp$v217, issp$v694)


# Kinderlose Frauen
table(issp$frau, issp$kinderlos)
issp$kinderlosefrau <- issp$frau * issp$kinderlos
table(issp$kinderlosefrau)
class(issp$kinderlosefrau)

issp$kinderlosefrau <-as.factor(issp$kinderlosefrau)
class(issp$kinderlosefrau)

# Eine Variable mit Interaktion Geschlecht * Kinder
issp$status <- interaction(issp$v217, issp$v694, drop = TRUE)
summary(issp$status)

# Rename status by name
levels(issp$status)[levels(issp$status)=="mann.ja"] <- "Vater"
levels(issp$status)[levels(issp$status)=="mann.nein"] <- "kinderloser Mann"
levels(issp$status)[levels(issp$status)=="frau.ja"] <- "Mutter"
levels(issp$status)[levels(issp$status)=="frau.nein"] <- "kinderlose Frau"


# Data frame für Kinder
df = data.frame(v353, v363, v373, v383, v393, v403, v413)

# Einzelne Kinder-Dummies
issp$kind1[issp$v353 == "eig.leibl.kind" || issp$v353 == "stief-, adoptivkind"]   <- 1
issp$kind1[issp$v353 == "ehegatte"] <- 0
issp$kind1[issp$v353 == "trifft nicht zu"] <- 0
issp$kind1[issp$v353 == "partner<in>"] <- 0
# issp$kind1[issp$v353 == "stief-, adoptivkind"] <- 1
issp$kind1[issp$v353 == "bruder, schwester"] <- 0
issp$kind1[issp$v353 == "stiefbrud.,-schwest"] <- 0
issp$kind1[issp$v353 == "eigener enkel"] <- 0
issp$kind1[issp$v353 == "vater, mutter"] <- 0
issp$kind1[issp$v353 == "stiefmutter,-vater"] <- 0
issp$kind1[issp$v353 == "schwiegerelternteil"] <- 0
issp$kind1[issp$v353 == "schwiegerkind"] <- 0
issp$kind1[issp$v353 == "schwager,schwaegerin"] <- 0
issp$kind1[issp$v353 == "grossvater,-mutter"] <- 0
issp$kind1[issp$v353 == "grosselt.d.<ehe>p."] <- 0
issp$kind1[issp$v353 == "andere verwandte"] <- 0
issp$kind1[issp$v353 == "nichtverwandte pers."] <- 0

count(issp$kind1)


issp$kind2[issp$v363 == "eig.leibl.kind" || issp$v363 == "stief-, adoptivkind"]   <- 1
issp$kind2[issp$v363 == "ehegatte"] <- 0
issp$kind2[issp$v363 == "trifft nicht zu"] <- 0
issp$kind2[issp$v363 == "partner<in>"] <- 0
# issp$kind2[issp$v363 == "stief-, adoptivkind"] <- 1
issp$kind2[issp$v363 == "bruder, schwester"] <- 0
issp$kind2[issp$v363 == "stiefbrud.,-schwest"] <- 0
issp$kind2[issp$v363 == "eigener enkel"] <- 0
issp$kind2[issp$v363 == "vater, mutter"] <- 0
issp$kind2[issp$v363 == "stiefmutter,-vater"] <- 0
issp$kind2[issp$v363 == "schwiegerelternteil"] <- 0
issp$kind2[issp$v363 == "schwiegerkind"] <- 0
issp$kind2[issp$v363 == "schwager,schwaegerin"] <- 0
issp$kind2[issp$v363 == "grossvater,-mutter"] <- 0
issp$kind2[issp$v363 == "grosselt.d.<ehe>p."] <- 0
issp$kind2[issp$v363 == "andere verwandte"] <- 0
issp$kind2[issp$v363 == "nichtverwandte pers."] <- 0

count(issp$kind2)





# Boxplot Status und Einkommen
qplot(x = status, y = v344, data = issp[v344 < 20000,], geom = "boxplot")


# Histogram without missing category
qplot(status, geom = "histogram")

describe(v687)
table(issp$vater, v687)

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
