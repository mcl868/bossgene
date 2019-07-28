removelist<-function(x,list){
	if(tolower(x) %in% tolower(list)){
	out<-tolower(list)[!(tolower(list) %in% tolower(x))]
	return(out)}
}