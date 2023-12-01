
u <- seq(from=-pi, to=pi, by=0.1)

x <- seq(from=-pi, to=pi, by=0.1)
y <- seq(from=-pi, to=pi, by=0.1)

# x_values <- function (u) {
#  cos(u)*(cos(u)+3)
# }
# y_values <- function (u) {
#  sin(u)*(cos(u)+3)
# }
z_values <- function (x, y) {
 sin(y) + cos(x)
}

#x = outer(u, x_values)
#y = outer(u, y_values)
z = outer(x, y, z_values)

#create 3D plot
persp(x, y, z, xlab='X Variable', ylab='Y Variable', zlab='Z Variable',
 main='3D Plot', col='pink', shade= .4 , theta = 30 , phi = 15 , ticktype='detailed') 

#install.packages('graphics')
#install.packages('gplot2')