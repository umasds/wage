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
library(car)
library(readstata13)
library(rpart)
library(randomForest)
library(ggplot2)
library(dplyr)

#------------------------------------------------------------------------------
# Define some constants (like filenames, paths, etc.) for consistent use

# Warning! R does not work with the usual Windows-style backslashes 
#   use ordinary slashes instead! 
datafile <- "C:/Users/Isy/Documents/Uni/Allgemeine und Spezielle Soziologie/FS Social Data Science/datasets/ALLBUS2012/issp_familie_bereinigt_stata12_mit_vatermutter.dta"
# Just put your data file in the "data" subdirectory under your "wage" directory
# Remember: Do not upload the data into the repository!
# The .gitignore file in "data" should prevent doing that by accident

#------------------------------------------------------------------------------
# Load data (ALLBUS 2012, V1.1.1, doi:10.4232/1.11753)
# Please always use correct and precise citations for datasets
# E.g. ALLBUS 2012 info were retrieved here:
# - https://dbk.gesis.org/DBKSearch/SDESC2.asp?no=4614&tab=3&db=D&dab=0
issp <- read.dta(datafile)


#------------------------------------------------------------------------------
# Some descriptions

describe(issp) # Describe the complete dataset
attach(issp) # Attach dataset so we can do away with the "issp$ ..."

summary(issp$v217)
class(issp$v217)



#--------
# Gender - V217
describe(v217)

# convert to factor
issp$v217 <-as.factor(issp$v217)

# Barplot
qplot(v217, fill = v217, data = issp, geom = "bar")


#--------
# Age - V220
describe(v220)

# Histogram
qplot(v220, data = issp[issp$v220,], geom = "histogram")

# Box plot by gender
qplot(x = v217, y = v220, data = issp[issp$v220,], geom = "boxplot")



#-----------
# Men dummy
issp$mann[v217 == "1. mann"] <- 1
issp$mann[v217 != "1. mann"] <- 0

summary(issp$mann)
class(issp$mann)

# convert to factor
# issp$mann <-as.factor(issp$mann)

# back to numeric
# issp$mann <- as.numeric(levels(issp$mann))[issp$mann]

# Women dummy
issp$frau[v217 == "2. frau"] <- 1
issp$frau[v217 != "2. frau"] <- 0

summary(issp$frau)
class(issp$frau)

# convert to factor
# issp$frau <-as.factor(issp$frau)

# back to numeric
# issp$frau <- as.numeric(levels(issp$frau))[issp$frau]


# marital status
summary(mars)






# child dummy
summary(issp$v694)
class(issp$v694)

issp$kinder[issp$v694 == "1. ja"]   <- 1
issp$kinder[issp$v694 == "2. nein"] <- 0

summary(issp$kinder)
class(issp$kinder)

# Table men and children, father dummy
table(issp$mann, issp$kinder)
issp$vater <- issp$mann * issp$kinder
table(issp$vater)
class(issp$vater)

issp$vater <-as.factor(issp$vater)
class(issp$vater)
summary(issp$vater)

# Table women and children, mother dummy
table(issp$frau, issp$kinder)
issp$mutter <- issp$frau * issp$kinder
table(issp$mutter)
class(issp$mutter)

issp$mutter <-as.factor(issp$mutter)
class(issp$mutter)

# childless dummy
describe(v694)
issp$kinderlos[issp$v694 == "2. nein"]   <- 1
issp$kinderlos[issp$v694 == "1. ja"] <- 0

summary(issp$kinderlos)
class(issp$kinderlos)


# childless men
table(issp$mann, issp$kinderlos)
issp$kinderlosermann <- issp$mann * issp$kinderlos
table(issp$kinderlosermann)
class(issp$kinderlosermann)

issp$kinderlosermann <-as.factor(issp$kinderlosermann)
class(issp$kinderlosermann)

table(issp$v217, issp$v694)


# childless women
table(issp$frau, issp$kinderlos)
issp$kinderlosefrau <- issp$frau * issp$kinderlos
table(issp$kinderlosefrau)
class(issp$kinderlosefrau)

issp$kinderlosefrau <-as.factor(issp$kinderlosefrau)
class(issp$kinderlosefrau)

# variable with interaction gender * children
issp$status <- interaction(issp$v217, issp$v694, drop = TRUE)
summary(issp$status)

# Rename status by name
levels(issp$status)[levels(issp$status)=="1. mann.1. ja"] <- "Vater"
levels(issp$status)[levels(issp$status)=="1. mann.2. nein"] <- "kinderloser Mann"
levels(issp$status)[levels(issp$status)=="2. frau.1. ja"] <- "Mutter"
levels(issp$status)[levels(issp$status)=="2. frau.2. nein"] <- "kinderlose Frau"

issp$status2 <- issp$status
summary(issp$status2)
levels(issp$status2)[levels(issp$status2)=="1. mann.1. ja"] <- "Vater"
levels(issp$status2)[levels(issp$status2)=="kinderlose Frau"] <- "NULL"
levels(issp$status2)[levels(issp$status2)=="2. frau.1. ja"] <- "Mutter"
levels(issp$status2)[levels(issp$status2)=="kinderloser Mann"] <- "NULL"

levels(issp$status2)[levels(issp$status2)=="NULL"] <- NA

# ??? wie kriegt man NA's weg?? Ohne gleich nen neuen Dataframe basteln zu müssen
  
  




# take a look at child variable
summary(issp$v353)
summary(issp$v353[issp$v353 == "3. eig.leibl.kind" | issp$v353 == "4. stief-,adoptivkind"])

# calculate overall number of children in v353
length(issp$v353[issp$v353 == "3. eig.leibl.kind" | issp$v353 == "4. stief-,adoptivkind"])


# various child dummies

issp$kind1 <- 0
issp$kind1[issp$v353 == "3. eig.leibl.kind" | issp$v353 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind1)

issp$kind2 <- 0
issp$kind2[issp$v363 == "3. eig.leibl.kind" | issp$v363 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind2)

issp$kind3 <- 0
issp$kind3[issp$v373 == "3. eig.leibl.kind" | issp$v373 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind3)

issp$kind4 <- 0
issp$kind4[issp$v383 == "3. eig.leibl.kind" | issp$v383 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind4)

issp$kind5 <- 0
issp$kind5[issp$v393 == "3. eig.leibl.kind" | issp$v393 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind5)

issp$kind6 <- 0
issp$kind6[issp$v403 == "3. eig.leibl.kind" | issp$v403 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind6)

issp$kind7 <- 0
issp$kind7[issp$v413 == "3. eig.leibl.kind" | issp$v413 == "4. stief-,adoptivkind"]   <- 1
table(issp$kind7)


# count all children in household
issp$kindsum <- issp$kind1 + issp$kind2 + issp$kind3 + issp$kind4 + issp$kind5 + issp$kind6 + issp$kind7
table(issp$kindsum)


# hourly wage

# 1) monthly hours main occupation

issp$v249 # main occupation hours per week


# exact weeks per month
wprom <- 365.25 / 7 / 12


issp$monatsstunden <- issp$v249 * wprom
issp$monatsstunden
summary(issp$monatsstunden)
summary(issp$monatsstunden[issp$monatsstunden < 4000])
qplot(monatsstunden, data = issp, geom = "histogram")
issp$monatsstunden[issp$monatsstunden>=3000] <- NA






# 2) calculate hourly wage

summary(issp$v344)
issp$einkommen <- issp$v344
issp$einkommen[issp$einkommen>=33000] <- NA
qplot(einkommen, data = issp, geom = "histogram")

issp$einkommen[issp$einkommen == 0] <- NA # wage: lower bound
issp$einkommen[issp$monatsstunden == 0] <- NA # wage: upper bound
issp$stundenlohn <- issp$einkommen / issp$monatsstunden

qplot(stundenlohn, data = issp, geom = "histogram", binwidth = 0.5)
qplot(stundenlohn, data = issp[issp$stundenlohn < 25,], geom = "histogram", binwidth = 0.5)


# Boxplot status and hourly wage
qplot(x = status, y = stundenlohn, data = issp[v344 < 20000,], geom = "boxplot")



# motivation
describe(issp$v30)
table(issp$v30)
qplot(v30, geom = "histogram")



# mean hours for domestic work fathers vs. non-fathers & mothers vs. non-mothers
describe(v666)
table(issp$vater, v666)
aggregate(issp$v666 ~ issp$vater, data = issp, mean)
table(issp$mutter, v666)
aggregate(issp$v666 ~ issp$mutter, data = issp, mean)


# mean hours for child care fathers vs. non-fathers & mothers vs. non-mothers
describe(v668)
table(issp$vater, v668)
aggregate(issp$v668 ~ issp$vater, data = issp, mean)
table(issp$mutter, v668)
aggregate(issp$v668 ~ issp$mutter, data = issp, mean)



# Show categories
levels(v639) 


# Crosstab of v639 and gender
table(v639, v217)

# Row percentages of v639 and gender
round(prop.table(table(v639, v217), 1) * 100, 2)

# Column percentages of v639 and gender
round(prop.table(table(v639, v217), 2) * 100, 2)

 
# domestic work: scatter plot by status & hourly wage
qplot(x = v666, y = issp$stundenlohn, color = issp$status, alpha = .8, size = .2, geom = "jitter")


#--------
# Net income - V344
describe(v344)

# Mean
mean(v344)


# Median without missings
median(v344)

# Mean by gender
aggregate(v344 ~ v217, data = issp, mean)

# Median by gender
aggregate(v344 ~ v217, data = issp, median)

# Boxplot by gender without missing category and trimmed at 20000
qplot(x = v217, y = v344, data = issp[v344 < 20000,], geom = "boxplot")

# Histogram without missing category and trimmed at 20000
qplot(v344, data = issp[v344 < 20000,], geom = "histogram") 

# Histogram: hourly wage, grouped by status
qplot(issp$stundenlohn, fill = issp$status, data = issp, geom = "histogram", 
      position = position_dodge()) 

# Scatter plot with sensible age range and trimmed at 5000 Euros
qplot(x = v220, y = v344, data = issp[v220 > 14 & v220 < 65 & v344 > 0 & v344 < 5000,])

# Scatter plot by status
qplot(x = v220, y = issp$stundenlohn, color = issp$status, alpha = .8, size = .2, geom = "jitter")

# "Fancy" plot
qplot(x = v220, y = v344, color = v217, 
      data = issp[v220 > 14 & v220 < 65 & v344 > 0 & v344 < 99997,], 
      alpha = .8, geom = c("jitter", "smooth")) + coord_cartesian(ylim = c(0,5000))

# Subset data for easier handling
# work <- subset(issp, v220 > 14 & v220 < 65 & v344 > 0 & v344 < 99997)
# describe(work$v220)
# describe(work$v344)

# Linear regression model
mod1 <- lm(issp$stundenlohn ~ issp$v217 + issp$v220 + issp$v8 + issp$v30 + issp$v230 + issp$v231 + issp$v232 + issp$v233 + issp$v234 + issp$v235 + issp$v236 + issp$v237 + issp$v238 + issp$v239 + issp$v240 + issp$v245 + issp$v247 + issp$v248 + issp$mars + issp$kindsum + issp$v639 + issp$v666 + issp$v668 + issp$v670 + issp$v708, data = issp)
summary(issp$mod1)




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


analysis = data.frame(issp$stundenlohn, issp$v217, issp$v220, issp$v8, issp$v30, issp$v230,
                      issp$v231, issp$v232, issp$v233, issp$v234, issp$v235, issp$v236, issp$v237, 
                      issp$v238, issp$v239, issp$v240, issp$v245, issp$v247, issp$v248, issp$mars, 
                      issp$kindsum, issp$v639, issp$v666, issp$v668, issp$v670, issp$v708)






# Funktion AME

ame <- function(analysis, meth="dt", func, stundenlohn, fromtoby=NULL, plotTree=FALSE, plotPV=FALSE){
  # Linear Regression
  if (meth == "lm") {
    fit <- glm(func, family=gaussian(link = "identity"), data=analysis)
    sfit <- summary(fit)
  }
  # Decision Tree
  if (meth == "dt") {
    fit <- rpart(func, cp=0.0001, method="anova", data=analysis) # t.fit
    #fit<- prune(t.fit, cp= t.fit$cptable[which.min(t.fit$cptable[,"xerror"]),"CP"])
    if (plotTree == "TRUE") {
      plot(fit, uniform=TRUE, main="Pruned Regression Tree")
      text(fit, cex=.6)
    }
    sfit <- fit
  }
  # Decision Two Tree
  if (meth == "dtt") {
    t0.fit <- rpart(func, method="anova", data=subset(data.name, data.name[var.name]==0))
    p0.fit <- prune(t0.fit, cp= t0.fit$cptable[which.min(t0.fit$cptable[,"xerror"]),"CP"])
    t1.fit <- rpart(func, method="anova", data=subset(data.name, data.name[var.name]==1))
    p1.fit <- prune(t1.fit, cp= t1.fit$cptable[which.min(t1.fit$cptable[,"xerror"]),"CP"])
    sfit <- list(p0.fit, p1.fit)
  }
  # Random Forest
  if (meth == "rf") {
    fit <- randomForest(func, data=analysis)
    sfit <- importance(fit)
  }
  # Random Forest Two Trees
  if (meth == "rftt") {
    p0.fit <- randomForest(func, method="anova", data=subset(data.name, data.name[var.name]==0))
    p1.fit <- randomForest(func, method="anova", data=subset(data.name, data.name[var.name]==1))
    sfit <- list(importance(p0.fit), importance(p1.fit))
  }
  # Type of Variable
  if (nrow(unique(data.name[var.name]))==2) {
    if (meth == "dtt" | meth == "rftt") {
      # Predictions
      y.pred.fit.1 <- predict(p0.fit, data.name)
      y.pred.fit.2 <- predict(p1.fit, data.name)    
    }
    else {
      # Assigning values
      data.1 <- data.name
      data.1[var.name] <- 0
      data.2 <- data.name
      data.2[var.name] <- 1
      # Predictions
      y.pred.fit.1 <- predict(fit, data.1)
      y.pred.fit.2 <- predict(fit, data.2)
    }
    # AMEs
    ame <- mean(y.pred.fit.1) - mean(y.pred.fit.2)
    # Output
    output <- list(ame, sfit)
  }
  else{
    if (is.null(fromtoby)) {
      print("Sequence from to by needed")
    }
    else{
      # Assigning values
      data <- data.name
      pv <- NULL
      counter <- 1
      # Predictions
      steps <- fromtoby
      for (i in steps) {
        data[var.name] <- i
        pv[counter] <- mean(predict(fit, data)) #  - data.name[,noquote(all.vars(formula(fit))[1])]
        counter <- sum(counter, 1)
      }
      # Slope
      slope <- tail(pv, length(pv)-1) - head(pv, length(pv)-1)
      if (plotPV == "TRUE") {
        plot(steps, pv, type="l")
        #plot(tail(steps, length(steps)-1), slope)
      }
      # AMEs
      ame <- mean(slope)
      # Output
      output <- list(ame, pv, sfit)
    }
  }
  return(output)
}

# Bootstrapping
ame.boot <- function(data.name, rep=100, meth="dt", func, var.name, fromtoby) {
  ame.boot <- replicate(rep, unlist(ame(sample_n(data.name, nrow(data.name), replace=T), meth, func, var.name, fromtoby)[1]))
  mean <- mean(ame.boot)
  se <- sd(ame.boot)
  error <- qnorm(0.975) * se
  output <- c(ame=mean, se=se, lci=mean-error, uci=mean+error)
  return(output)
}