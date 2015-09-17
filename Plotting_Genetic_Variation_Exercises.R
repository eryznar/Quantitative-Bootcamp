##Exercise 1
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-1.txt',header=TRUE)
snpsDataFrame
head(snpsDataFrame)
snps=as.matrix(snpsDataFrame)
snps
head(snps)
compute_chisquare

#part a
compute_chisquare=function(x){
  freq=sum(x, na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0, na.rm=TRUE)
  cnt1=sum(x==1, na.rm=TRUE)
  cnt2=sum(x==2, na.rm=TRUE)
  obscnts=c(cnt0, cnt1, cnt2)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}
chisqs=apply(snps,1,compute_chisquare)
chisqs
pvals=pchisq(chisqs,1,lower.tail=FALSE)

#part b
testpvals=sum(pvals<0.05)/length(pvals)
> testpvals
[1] 0.04509218
testpvals2=sum(pvals<0.01)/length(pvals)
testpvals2
testpvals3=sum(pvals<0.001)/length(pvals)
testpvals3

#part c
num_pval=length(pvals)
num_pval

#part d
exp_pvals=seq(from=1/num_pval, to=1, by=1/num_pval)
exp_pvals

#part e
sort_pvals=sort(pvals, decreasing=FALSE)
sort_pvals

#part f
log_sort_pvals=-log10(sort_pvals)
log_sort_pvals
log_exp_pvals=-log10(exp_pvals)
log_exp_pvals

#part g
qqplot=plot(log_exp_pvals,log_sort_pvals, xlab="Expected P-Values", ylab="Sorted P-Values")
qqplot

#part h
lines(1:5, 1:5, col=2)
