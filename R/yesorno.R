yesorno<-function(x){
	ynx<-tolower(unlist(strsplit(x,"")))[1]
	qui<-ynx %in% c("y","j","n")
	quiy<-ynx %in% c("y","j")
	quin<-ynx=="n"
list(qui=qui,quiy=quiy,quin=quin)
}