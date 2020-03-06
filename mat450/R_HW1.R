# Q1
#
a <- c(2,4,6,8,10,12); a
A <- matrix(a,4,2); A
B <- matrix(a,3,4); B

# Q1.a
#
# length of vector a is 6
# matrix A is 4x2 - elements (3,2) & (4,2) repeat with first 2 elements of vector a
# matrix B is 3x4 - columns 3 and 4 repeat with all 6 elements of vector a

# Q1.b
#
d <- c(-2,-1,0,1,2); d
D <- matrix(d,3,5,byrow = TRUE); D

# Q2.a
#
a <- c(-1,0,1,2,3); a
b <- c(NA,NA); b
c <- c(10,20,30,40,50); c

# Q2.b
#
o1 <- c(a,b,a,b,a); o1
o2 <- matrix(a,5,3); o2
o3 <- matrix(c,5,5,byrow=TRUE); o3
o4 <- matrix(c(a,c),2,5,byrow=TRUE); o4
o5 <- matrix(c(a,b),2,7); o5

# Q3
#
a <- c('a','b','c','d'); a
b <- c(TRUE, FALSE); b

con1 <- matrix(a,4,3); con1
con2 <- c(b,b,b); con2
con3 <- list(con1,con2); con3
a <- c(1,2,3,4); a
col.names = c()
row.names = c()
matrix.names = c('Matrix1','Matrix2','Matrix3','Matrix4')
con4 <- array(a,dim=c(2,2,4),dimnames=list(row.names,col.names,matrix.names)); con4

# Q4.a
#
c1 <- c('Student1','Student2','Student3','Student4','Student5')
c2 <- c(20,16,25,14,10)
c3 <- c(23,15,20,19,15)
c4 <- c(18,18,22,18,14)
c5 <- c(48,36,40,42,30)
grades <- data.frame('ID'=c1,'Test1'=c2,'Test2'=c3,'Test3'=c4,'Final'=c5,row.names='ID'); grades

# Q4.b
#
grades['Student1','Test3'] = 21

# Q4.c
#
grades$Test3
grades['Student4',]
grades[c('Test1','Test2','Test3')]

# Q4.d
#
write.csv(file='grades.csv',grades)

# Q5.a
#
X <- c(7,12,9,15,NA,8,14,NA,2,9,NA,8)
new.X = c()
for (ii in X) {
  if (!is.na(ii))
    new.X <- c(new.X, ii)
}
new.X

# Q5.b
#
remove_na <- function(v) {
  new.v = c()
  for (ii in v) {
    if (!is.na(ii))
      new.v <- c(new.v, ii)
  }
  return(new.v)
}


# Q5.c
#
X <- c(NA,-1,0.5,NA,NA,6)
remove_na(X)

# Q6.a
#
print_xValue <- function(xValue) {
  while (xValue > 0) {
    print(xValue)
    xValue <- xValue - 0.5
  }
}

#Q6.b
#
print_xValue(10)

# Since print_xValue prints prior to decrementing, print_xValue(10) iterates 20 times
