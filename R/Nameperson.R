Nameperson<-function(x){
	splitword<-unlist(strsplit(x,""))
	return(paste0(toupper(splitword[1]),paste0(splitword[-1],collapse="")))
}