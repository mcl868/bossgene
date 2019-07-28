thechoosen<-function(x){
	set.seed(as.numeric(ISOdate(as.numeric(format(Sys.time(), "%Y")),
                           as.numeric(format(Sys.time(), "%m")),
                           as.numeric(format(Sys.time(), "%d")))))
    out<-sample(x,1)
    return(out)
}