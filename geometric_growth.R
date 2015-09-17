#geometric growth exercise

nn<-rep(0,11)
nn[1]<-100
rr<-1.05
tt<-10
for(tt in 1:10){nn[tt+1]<-rr*nn[tt]}
print(nn)
print(nn[tt+1])
plot(nn,tt)
plot(1:11, nn)
plot(nn)
print(nn[tt+1])
NO<-nn[1]
NO

#converting script to function
geomFun<-function(rr, NO, tt){
  NN<-rep(NA,tt+1)
  NN[1]<-NO
  for(tt in 1:tt){
    NN[tt+1]<-rr*NN[tt]
  }
  plot(1:(tt+1), NN)
}  
geomFun(rr=1.01, NO=200, tt=20)
