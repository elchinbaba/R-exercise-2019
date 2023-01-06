x<-c(round(runif(100,min=1,max=4)))
x<-factor(x,labels=c("red","green","blue","yellow"))
y=levels(x)
z<-c(rep(0,times=4))
for(i in 1:100)
{
  for(j in 1:4)
  {
    char<-as.character(x[i])
    if (y[j]==char)
    {
      z[j]=z[j]+1
    }
  }
}
for(j in 1:4)
{
  print(paste(y[j],"-",z[j]))
}