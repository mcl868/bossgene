sampleset<-function(x=NULL){
	nameslist<-c("Anne","Jacob","Kenneth","Laure","Martin","Michael","Thomas")
	out<-list()
	out$possible<-if(is.null(x))nameslist else nameslist[!(tolower(nameslist) %in% tolower(x))]
	out$nameslist<-nameslist
	return(out)
}