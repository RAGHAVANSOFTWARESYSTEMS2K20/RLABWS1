f.obj<-c(3,8,2,-1)
f.con<-matrix(c(3,4,0,0,
		    3,5,0,0,
		    0,0,1,0,
		    0,-3,1,1),nrow=4,byrow=TRUE)
f.dir<-c("<=","<=","<=","=")
f.rhs<-c(18,21,5,0)
lp("max",f.obj,f.con,f.dir,f.rhs)
lp("max",f.obj,f.con,f.dir,f.rhs)$solution
