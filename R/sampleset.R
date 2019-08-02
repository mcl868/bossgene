sampleset<-function(x=NULL){
	nameslist<-c("Thomas","Albert")
	out<-list()
	out$possible<-if(is.null(x))nameslist else nameslist[!(nameslist %in% tolower(x))]
	out$nameslist<-nameslist
	return(out)
}