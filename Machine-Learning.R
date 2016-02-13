# Machine Learning

set.seed(1)


attach(data)
test.data <- data.frame(cbind(stundenlohn, v217, v666, v668, v670, v8, v30, v220, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v245, v247, v248, v351, v639, v694, v708, mars, kindsum))
attach(test.data)
rm(stundenlohn, v217, v666, v668, v670, v8, v30, v220, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v245, v247, v248, v351, v639, v694, v708, mars, kindsum)

#1 LM)

#Binäre Variablen
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v217")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v670")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v8")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v231")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v232")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v233")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v234")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v235")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v236")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v237")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v238")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v239")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v240")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v245")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v248")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v708")
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "mars")

#Kategoriale Variablen
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v30")[c(1,2)]
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v230")[c(1,2)]
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v639")[c(1,2)]
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v247")[c(1,2)]

#Metrische Variablen
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v220", seq(23,69,5))[c(1,2)]
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v666", seq(0,48,5))[c(1,2)]
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v668", seq(0,130,10))[c(1,2)]
ame(test.data, "lm", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "kindsum", seq(0,4,1))[c(1,2)]

#2 DT)

#Binäre Variablen
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v217", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v670", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v8", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v231", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v232", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v233", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v234", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v235", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v236", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v237", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v238", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v239", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v240", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v245", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v248", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v708", plotTree=TRUE)[1]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "mars", plotTree=TRUE)[1]

#Kategoriale Variablen
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v30", plotTree=TRUE)[c(1,2)]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v230", plotTree=TRUE)[c(1,2)]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v639", plotTree=TRUE)[c(1,2)]
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v247", plotTree=TRUE)[c(1,2)]

#Metrische Variablen
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v220", seq(23,69,5), plotTree=TRUE)
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v666", seq(0,48,5), plotTree=TRUE)
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v668", seq(0,130,10), plotTree=TRUE)
ame(test.data, "dt", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "kindsum", seq(0,4,1), plotTree=TRUE)

#3) RF

#Binäre Variablen
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v217", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v670", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v8", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v231", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v232", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v233", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v234", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v235", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v236", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v237", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v238", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v239", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v240", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v245", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v248", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v708", plotPV=TRUE)[1]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "mars", plotPV=TRUE)[1]

#Kategoriale Variablen
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v30", plotPV=TRUE)[2]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v230", plotPV=TRUE)[2]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v639", plotPV=TRUE)[2]
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v247", plotPV=TRUE)[2]

#Metrische Variablen
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v220", seq(23,69,5), plotPV=TRUE)
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v666", seq(0,48,5), plotPV=TRUE)
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "v668", seq(0,130,10), plotPV=TRUE)
ame(test.data, "rf", stundenlohn ~ v217 + v666 + v668 + v670 + v8 + v30 + v220 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v245 + v247 + v248 + v351 + v639 + v694 + v708 + mars + kindsum, "kindsum", seq(0,4,1), plotPV=TRUE)



                    
                    
