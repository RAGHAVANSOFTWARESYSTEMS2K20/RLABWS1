# Import lpSolve package
#A company has two grades of inspector 1 and 2, who are to be assigned for a
#uality control inspection. It is required that at least 2,000 pieces be inspected per
#8 – hour day. Grade 1 inspector can check pieces at the rate of 40 with an
#accuracy of 97 %. Grade 2 inspector checks at the rate of 30 pieces per hour with
#an accuracy of 95 %. The wage rate of a Grade 1 inspector is Rs.5 per hour while
#that of a Grade 2 inspector is Rs.4 per hour. An error made by an inspector costs
#Rs.3 to the company. There are only nine Grade 1 inspectors and eleven Grade 2
#inspectors available in the company. The company wishes to assign work to the
#available inspectors so as to minimize the daily inspection cost.
library(lpSolve)

# Set coefficients of the objective function
f.obj <- c(68.8, 68)
 
# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
f.con <- matrix(c(320, 240,
                  1, 0,
                  0, 1), nrow = 3, byrow = TRUE)

# Set unequality signs
f.dir <- c(">=",
           "<=",
           "<=")

# Set right hand side coefficients
f.rhs <- c(2000,
           9,
           11)

# Final value (z) (decimal)
lp("min", f.obj, f.con, f.dir, f.rhs)

# Variables final values
lp("min", f.obj, f.con, f.dir, f.rhs)$solution

# Final value (z) (integer)
lp("min", f.obj, f.con, f.dir, f.rhs,int.vec=1:2)

# Variables final values
lp("min", f.obj, f.con, f.dir, f.rhs,int.vec=1:2)$solution
