##  This code reads in a sample csv file and assigns it to the dataframe named “dta”.  It then attaches
##  (assigns columns of observations to variable names), then tells you the names of the variables in 
##  the dataframe and sets the degree of accuracy as high as I know is possible.  I’d advise using this
##  type of code to develop the summary data for ANY homework problem and then working it by
##  hand using that summary data as inputs, since that’s what you’ll be doing on the tests.

dta=read.csv("homesalesdata.csv")
attach(dta)
names(dta)
options(digits=10)
##  The following function can be used to show the summary statistics for
##  any single variable.  Run the function, place your variable name in place of 
##  "PRICE" in the last line (line 14 here) and run that line of code for a summary ##  table.
summary.onevar = function(var) {
  summary.table = matrix(0,nrow=1,ncol=10) #only need 1 row
  summary.table[1,] = round(c(length(var), min(var),quantile(var,.25),median(var),quantile(var,.75),max(var),mean(var),var(var),sd(var),sd(var)/length(var)^.5),5)
  colnames(summary.table) = c('N','Min','Q1','Median','Q3','Max','Mean','VAR','SD','SE')
  return(summary.table)}
summary.onevar(PRICE)
detach(dta)
