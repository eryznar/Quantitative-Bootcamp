##Exercise 1
xx=1:9
xx
for(ii in xx){
  if(ii<9){
    cat(ii, "\n")}
  if(ii==9){
    cat(ii, "*\n")}}


#Exercise 2
yy=rep("*",10)
yy
for(ii in yy){
  cat(ii, "&", sep="")
}

#Exercise 4
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill=T)
  }
}

#Exercise 5

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);

interestRate <- 0.0125
compounded<-rep(1/(1+interestRate), 6)
for(i in 1:length(bankAccounts)){
  compounded[i]<-(interestRate*bankAccounts[i]+bankAccounts[i])
}
compounded

#Exercise 6

bankAccounts<-c(10, 9.2, 5.6)
interestRate<-0.0525
house<-c(4.8, 3.8, 5.7)
food<-c(3.5, 4.3, 5.0)
fun<-c(7.8, 2.1, 10.5)
income<-c(21, 21, 21)

expenses<-bankAccounts-house-food-fun

truecash<-expenses+income
compounded<-rep(((1+interestRate)^5), 3)

yearly<-(compounded*truecash)
yearly

#Exercise 7

bankAccounts<-c(10, 9.2, 5.6)
interestRate<-0.0525
house<-c(4.8, 3.8, 5.7)
food<-c(3.5, 4.3, 5.0)
fun<-c(7.8, 2.1, 10.5)
income<-c(21, 21, 21)
netgain<-income-(house+food+fun)
timeperiod<-c(2015, 2016, 2017, 2018, 2019, 2020)
compounded<-rep(((1+interestRate)^5), 3)

for(ii in 1:length(timeperiod)){
  bankAccounts=compounded*bankAccounts
  if(timeperiod[ii]%%2==1){
    bankAccounts=5000+netgain+bankAccounts
  }else{
    bankAccounts=netgain+bankAccounts
  }
}

for(ii in 1:length(timeperiod)){
  if(timeperiod[ii]%%2==1){
    rep(timeperiod[ii], (truecash+5000), 3)}}

#Exercise 8
numberseries=1:17
while(numberseries<=17){
  sumns<-sum(numberseries);
  if(numberseries==17){
    break;}
}
print(sumns)

#Exercise 9
ss=-1; mm=0; bb=1
for(ii in -1:1){
  if(ii<=ss){
    cat(ii, "small\n")
  }
  if(ii==mm){
    cat(ii, "medium\n")
  }
  if(ii>=bb){
    cat(ii, "big\n")
  }
}


