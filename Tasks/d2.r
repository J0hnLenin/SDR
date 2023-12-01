library(lattice)

t <- seq(-2*pi, 2*pi, length.out=50); 
u <- seq(-4*pi, 4*pi, length.out=50); 

xm<-outer(t,u,function(t, u)cos(u)*(cos(t) + 3))
ym<-outer(t,u,function(t, u)sin(u)*(cos(t) + 3))
zm<-outer(t,u,function(t, u) sin(t)+u)

rr<-c(-10,10)
plot(wireframe(zm~xm+ym, xlim=rr, ylim=rr, zlim=rr, screen=list(y=30)))