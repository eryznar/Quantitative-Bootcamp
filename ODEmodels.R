##writing differential exponential growth model

#1:install and load necessary packages
install.packages("deSolve")
library(deSolve)

#2:set initial conditions
  #create R function for exponential growth model
expGrowthODE<-function(tt, yy, pars){
  derivs<-pars['rr']*yy
  return(list(derivs))
}
  #set parameter values
init<-1
tseq<-seq(0, 20, by=0.01)
pars<-c(rr=0.1)

#3:simulate model with parameter values
expGrowthOutput<-lsoda(init, tseq, expGrowthODE, pars)

#4: Display results
  #Display in matrix
head(expGrowthOutput)
  #Display in plot
plot(expGrowthOutput[,1], expGrowthOutput[,2], col='blue')


##writing logistic growth model

#2:Set initial conditions
  #create R function for logisitic growth model
logGrowthODE<-function(tt, NN, pars){
  derivs<-pars['rr']*NN*(1-NN/pars['KK'])
  return(list(derivs))
}
  #set parameter values
init<-1
tseq<-seq(0, 20, by=0.01)
pars<-c(rr=0.1, KK=100)

#3:Simulate model with parameter values
logOutput<-lsoda(init, tseq, logGrowthODE, pars)

#4:Display results
  #Display in matrix
head(logOutput)
  #Display in plot
plot(logOutput[,1], logOutput[,2], col=5)

##Advanced exercise with harvesting

logharvODE<-function(tt, NN, pars){
  derivs<-pars['rr']*NN*(1-NN/pars['KK'])-pars['hh']*NN
  return(list(derivs))
}

init<-1
tseq<-seq(0, 200, by=0.01)
pars<-c(rr=0.05, KK=100, hh=(rr*KK^2)/4)

logharvOutput<-lsoda(init, tseq, logharvODE, pars)

plot(logharvOutput[,1], logharvOutput[,2], col=6)
