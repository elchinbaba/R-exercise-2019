data(Groceries)
rules_rhs<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08), appearance = list(default="lhs",rhs="frankfurter"))
rules_rhs<-sort(rules_rhs, decreasing=TRUE, by="confidence")
rules_lhs<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08), appearance = list(default="rhs",lhs="frankfurter"))
rules_lhs<-sort(rules_lhs, decreasing=TRUE, by="confidence")
write(rules_rhs, file = "rhs.csv", quote=TRUE, sep = ",", col.names = NA)
write(rules_lhs, file = "lhs.csv", quote=TRUE, sep = ",", col.names = NA)