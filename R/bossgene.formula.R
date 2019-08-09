bossgene.formula<-function(x){
	whoboss<-readline(prompt=paste0("Enter the previous Boss (Press enter if you did not have any): "))
	if(!tolower(whoboss)=="q"){
		posslist<-do.call("sampleset",list(x=whoboss))$possible
		i<-TRUE
		while(i){
			possboss<-do.call("thechoosen",list(x=posslist))
			isboss<-readline(prompt=paste0("Is ",Nameperson(possboss)," present today? (Yes or No): "))
			ynisboss<-do.call("yesorno",list(x=isboss))
			if(!ynisboss$qui){message("You have either pick yes or no");posslist<-posslist} else {
				posslist<-do.call("removelist",list(x=possboss, list=posslist))}
			if(with(ynisboss,qui & quiy))message("Today, ",Nameperson(possboss)," is boss.")
			if(length(posslist)==1 & !with(ynisboss,qui & quiy)){
				i<-FALSE;message("Today, ", Nameperson(posslist)," is boss.")} else {
				i<-!with(ynisboss,qui & quiy)}
		}
	}
}


