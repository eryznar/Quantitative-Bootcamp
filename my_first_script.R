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
