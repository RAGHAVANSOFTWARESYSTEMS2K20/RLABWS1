# A pharmaceutical company produces two products : A and B. Production of both
# products requires the same process, I and II. The production of B results also in a
# by- product C at no extra cost. The product A can be sold at a profit of Rs.3 per unit
# and B at a profit of Rs.8 per unit. Some of this by-product can be sold at a unit profit
# of Rs.2, the remainder has to be destroyed and the destruction cost is Rs.1 per unit.
# Forecasts show that only up to 5 units of C can be sold. The company gets 3 units
# of C for each unit of B produced. The manufacturing times are 3 hours per unit for
# A on process I and II, respectively, and 4 hours and 5 hours per unit for B on
# process I and II, respectively. Because the product C results from producing B, no
# time is used in producing C. The available times are 18 and 21 hours of process I
# and II, respectively. Formulate this problem as an LP model to determine the
# quantity of A and B which should be produced, keeping C in mind, to make the
# highest total profit to the company.
f.obj<-c(3,8,2,-1)
f.con<-matrix(c(3,4,0,0,
		    3,5,0,0,
		    0,0,1,0,
		    0,-3,1,1),nrow=4,byrow=TRUE)
f.dir<-c("<=","<=","<=","=")
f.rhs<-c(18,21,5,0)
lp("max",f.obj,f.con,f.dir,f.rhs)
lp("max",f.obj,f.con,f.dir,f.rhs)$solution
