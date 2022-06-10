A company, engaged in producing tinned food, has 300 trained employees on the
rolls, each of whom can produce one can of food in a week. Due to the developing
taste of the public for this kind of food, the company plans to add to the existing
labor force by employing 150 people, in a phased manner, over the next five weeks.
The newcomers would have to undergo a two-week training programme before
being put to the work. The training is to be given by employees from among the
existing ones and it is known that one employee can train three trainees. Assume
that there would be no production from the trainers and the trainees during training
period as the training is off-the-job. However, the trainees would be remunerated
at the rate of Rs.300 per week, same rate as for the trainers. The company has
booked the following orders to supply during the next five weeks :
Week : 1 2 3 4 5
No. of Cans : 280 298 305 360 400
library(lpSolve)
f.obj<-c(5,4,3,2,1)
f.con<-matrix(c(1,0,0,0,0,
		    1,2,0,0,0,
		    3,-1,-1,0,0,
		    3,3,-1,-1,0,
		    3,3,3,-1,-1,
		    1,1,1,1,1),nrow=6,byrow=TRUE)
f.dir<-c("<=","<=",">=",">=",">=","=")
f.rhs<-c(60,6,15,180,300,150)
lp("min",f.obj,f.con,f.dir,f.rhs)
lp("min",f.obj,f.con,f.dir,f.rhs)$solution
