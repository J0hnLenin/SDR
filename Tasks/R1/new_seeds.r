#install.packages('ggplot2')
library('rgl')

tb <- read.table("R1/seeds2.txt", header = TRUE)

tb_kama <- tb[tb$class == 'Kama',]
tb_rosa <- tb[tb$class == 'Rosa',]
tb_canadian <- tb[tb$class == 'Canadian',]
  
bg3d(color = "grey") 
 
#plot3d(tb$area, tb$len, tb$grooveLen,
#       xlab = "Area", ylab = "Len", zlab = "GrooveLen",
#       size = 0.0, lit = FALSE, axes = TRUE)
#box3d(color="white")
axes3d()
title3d('', '', 'Area', 'Len', 'GrooveLen')
for(i in 1:nrow(tb)){ # nolint
    row <- tb[i,]
    x <- row$area
    y <- row$len
    z <- row$grooveLen
    s = 5
    d = 0.60
    if(row$class == 'Kama'){
        obj <- cube3d(color='green')
        #obj <- octahedron3d(color='green')
        obj$vb <- obj$vb + s
        obj <- translate3d(obj, x-d, y-d, z-d)
        shade3d(obj)
    }
    if(row$class == 'Rosa'){
        obj <- tetrahedron3d(color='red')
        obj$vb <- obj$vb + s
        obj <- translate3d(obj, x-d, y-d, z-d)
        shade3d(obj)
    }
    if(row$class == 'Canadian'){
        obj <- icosahedron3d(color='magenta')
        obj$vb <- obj$vb + s
        obj <- translate3d(obj, x-d, y-d, z-d)
        shade3d(obj)
    }
}







#play3d(spin3d(axis = c(1, 0, 0)), duration = 1000000)