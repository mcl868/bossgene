sampleset<-function(x=NULL){
	nameslist<-c(letters[1:10])
	out<-list()
	out$possible<-if(is.null(x))nameslist else nameslist[!(nameslist %in% tolower(x))]
	out$nameslist<-nameslist
	return(out)
}