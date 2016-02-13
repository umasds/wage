# Machine Learning

set.seed(1)
attach(issp)
analysis <- data.frame(cbind(stundenlohn, v217, v666, v668, v670, v8, v30, v220, v230, v231, v232, v233,v234, v235, v236, v237, v238, v239, v240, v245, v247, v248, v639, v708, mars, kindsum))

attach(analysis)
summary(analysis)

# convert to factor
v30 <-as.factor(v30)
class(v30)


#1 LM)

#Binaere Variablen
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v248")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v708")
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "mars")

#Kategoriale Variablen
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v30")[c(1,2)]
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v230")[c(1,2)]
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v639")[c(1,2)]
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v247")[c(1,2)]

#Metrische Variablen
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v220", seq(20,70,5))[c(1,2)]
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v666", seq(0,48,2))[c(1,2)]
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v668", seq(0,130,10))[c(1,2)]
ame(analysis, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "kindsum", seq(0,4,1))[c(1,2)]

#2 DT)

#Binaere Variablen
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v245", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v248", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v708", plotTree=TRUE)[1]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "mars", plotTree=TRUE)[1]

#Kategoriale Variablen
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v30", plotTree=TRUE)[c(1,2)]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v230", plotTree=TRUE)[c(1,2)]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v639", plotTree=TRUE)[c(1,2)]
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v247", plotTree=TRUE)[c(1,2)]

#Metrische Variablen
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v220", seq(20,70,5), plotTree=TRUE)
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v666", seq(0,48,2), plotTree=TRUE)
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v668", seq(0,130,10), plotTree=TRUE)
ame(analysis, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "kindsum", seq(0,4,1), plotTree=TRUE)


#3) DTT (nur bei binaerer unabhaengiger Variable)

ame(analysis, "dtt", stundenlohn ~ v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v639 + v708 + mars + kindsum, "v248")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + mars + kindsum, "v708")[1]
ame(analysis, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + kindsum, "mars")[1]



#4) RF

#Binaere Variablen
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v245", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v248", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v708", plotPV=TRUE)[1]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "mars", plotPV=TRUE)[1]

#Kategoriale Variablen
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v30", plotPV=TRUE)[2]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v230", plotPV=TRUE)[2]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v639", plotPV=TRUE)[2]
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v247", plotPV=TRUE)[2]

#Metrische Variablen
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v220", seq(20,70,5), plotPV=TRUE)
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v666", seq(0,48,2), plotPV=TRUE)
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v668", seq(0,130,10), plotPV=TRUE)
ame(analysis, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "kindsum", seq(0,4,1), plotPV=TRUE)


#5) RFTT (bei binaerer unabhaengiger Variable)

ame(analysis, "rftt", stundenlohn ~ v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v639 + v708 + mars + kindsum, "v248")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + mars + kindsum, "v708")[1]
ame(analysis, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + kindsum, "mars")[1]



# Bootstrapping

#1) LM
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v248")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v708")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "mars")
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v30")[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v230")[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v639")[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v247")[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v220", seq(20,70,5))[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v666", seq(0,48,2))[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v668", seq(0,130,10))[c(1,2)]
ame.boot(analysis, 10, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "kindsum", seq(0,4,1))[c(1,2)]

#2) DT
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v248")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v708")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "mars")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v30")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v230")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v639")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v247")
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v220", seq(20,70,5))
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v666", seq(0,48,2))
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v668", seq(0,130,10))
ame.boot(analysis, 10, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "kindsum", seq(0,4,1))

#3) DTT
ame.boot(analysis, 10, "dtt", stundenlohn ~ v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v639 + v708 + mars + kindsum, "v248")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + mars + kindsum, "v708")
ame.boot(analysis, 10, "dtt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + kindsum, "mars")

#4) RF
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v248")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v708")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "mars")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v30")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v230")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v639")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v247")
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v220", seq(20,70,5))
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v666", seq(0,48,2))
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v668", seq(0,130,10))
ame.boot(analysis, 10, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "kindsum", seq(0,4,1))

#5) RFTT

ame.boot(analysis, 10, "rftt", stundenlohn ~ v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v217")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v670")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v8")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v231")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v232")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v233")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v234")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v235")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v236")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v237")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v238")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v240 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v239")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v245 + v247 + v248 + v639 + v708 + mars + kindsum, "v240")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v247 + v248 + v639 + v708 + mars + kindsum, "v245")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v639 + v708 + mars + kindsum, "v248")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + mars + kindsum, "v708")
ame.boot(analysis, 10, "rftt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v639 + v708 + kindsum, "mars")

                    