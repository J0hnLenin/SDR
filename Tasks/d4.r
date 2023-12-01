library(lattice)

# x=cos(u)cos(v)+3cos(u)(1,5+sin1,5u2)
# y=sin(u)cos(v)+3sin(u)(1,5+sin1,5u2)
# z=sin(v)+2cos(1,5u)
# u∈[−2π;2π],
# v∈[−π;π]

t <- seq(-4*pi, 4*pi, length.out=50); 
u <- seq(-4*pi, 4*pi, length.out=50); 

xm<-outer(t,u,function(t, u)cos(u)*cos(t) + 3*cos(u)*(1.5+sin((1.5*u)/2)))
ym<-outer(t,u,function(t, u)sin(u)*cos(t) + 3*sin(u)*(1.5+sin((1.5*u)/2)))
zm<-outer(t,u,function(t, u) sin(u)+2*cos((1.5*u)/2))

rr<-c(-10,10)
plot(wireframe(zm~xm+ym, xlim=rr, ylim=rr, zlim=rr, screen=list(y=30)))