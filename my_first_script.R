library(ape)
library(ggplot2)
library(geiger)
#this is my first R script practice
tips<-c("learn R")
source("/Users/Emily/Documents/Github/Quantitative-Bootcamp")
source("source.example.R")
all.I.know.about.life.I.learned.in.grad.school()
library(ape)
#read in tree
tt<-read.tree("tree.tre")
str(tt)
#reading headers of tree
head(tt$tip.label)
#read in table
#T is TRUE without quotes
#sep is seperaters
dd<-read.table("data.txt", header =T, as.is=T, sep="\t")
attributes(dd)
head(dd)
dim(dd)
#number of rows
dim(dd)[1]
#tracks data by dflength, number of rows
dflength<-dim(dd)[1]
dflength
#generates random uniform numbers
?runif
runif(1)
#generates random numbers for all sizes in data frame, regardless of data frame length
size<-runif(dflength)
size
#use cbind to add this column to the data
head(cbind(dd,size))
newdd<-cbind(dd, size)
newdd
head(newdd)
dd<-cbind(dd,size)
head(dd)
head(dd$species)
?head
dd[1,]
#if you want only the MPF swimmers, you can use the which() function
which(dd$mode=='MPF')
#returns which dd data matches MPF criteria
dd$mode=="MPF"
#returns rows which dd data matches MPF criteria
dd[which(dd$mode=="MPF"),]
mpfswimmers<-dd[which(dd$mode=='MPF'),]
head(mpfswimmers)
mpfswimmers
dim(dd)
length(tt$tip.label)
#common control statements
for(ii in 1:5){cat("\nthe number is",ii)}
notfish<-c("bat", "dolphin", "toad", "soldier")
for(animal in notfish){cat(animal, "fish\n", sep="")}
for(animal in notfish){cat(animal, "fish\n",1, sep="")}
#\n for end of string
for(animal in notfish){cat(animal, "fish"," are tasty\n", sep="")}
for(animal in notfish){cat(animal, "fish\n", " are tasty\n")}
#while statements
xx<-1
while(xx<5){xx<-xx+1;cat("value of xx", xx,"\n")}
print(xx)
while(xx<5){xx<-xx+1;if(xx==3){break;}}
print(xx)
while(xx<5){xx<-xx+1;if(xx==3){break;}}
print(xx)
#if statements
while(xx<10){
  cat("value of xx", xx, "\n")
  xx<-xx+1;
  if (xx==7){break;} 
  else if(xx==2){cat("lucky number",xx,"\n")}
  else {cat("not excited about the number", xx, "\n")}
  }
  