#logistic growth exercise
nn<-rep(0,11)
nn[1]<-10
rr<-1.05
tt<-10
kk<-100
for(tt in 1:10){
  nn[tt+1]<-nn[tt]*(1+rr*(1-nn[tt]/kk))}

#converting script to function
discretelogisticfun<-function(rr, ttmax, N0, kk){
  NN<-rep(NA, ttmax+1)
  NN[1]<-N0
  for(tt in 1:ttmax){
    NN[tt+1]<-NN[tt]*(1+rr*(1-(NN[tt]/kk)))
  }
  return(NN)
}
discretelogisticfun(N0=10, ttmax=100, rr=1.5, kk=100)


