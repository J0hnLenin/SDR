

bg3d(color = "grey") 
x=2
y=2
z=2
s=5
d=s/5
obj <- cube3d(color='green')
#obj <- octahedron3d(color='green')

obj$vb <- obj$vb + s
obj <- translate3d(obj, x-d, y-d, z-d)
shade3d(obj)

s=0
obj <- cube3d(color='white', alpha=0.1)
#obj <- octahedron3d(color='green')

obj$vb <- obj$vb + s
obj <- translate3d(obj, x, y, z)
shade3d(obj)