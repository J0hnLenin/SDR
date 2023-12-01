install.packages('ggplot2')
library("ggplot2")

tb <- read.table("R1/seeds2.txt", header = TRUE)

tb_kama <- tb[tb$class == 'Kama',]
tb_rosa <- tb[tb$class == 'Rosa',]
tb_canadian <- tb[tb$class == 'Canadian',]
  
# define background color 
#bg3d(color = "grey") 
  
# plot the points 

 
ggplot(tb_rosa,aes(x=len,y=width,col='green'))

#(x=tb_canadian$area, y=tb_canadian$len, z=tb_canadian$grooveLen, col ="yellow")
#points3d(tb_kama$area, tb_kama$len, tb_kama$grooveLen, col ="green", size=30) 

#bbox3d(col = "blue") 

# # # define the axis lines 
#  lines3d(c(10, 10), c(0,0), c(0,0), col = "red") 
#  lines3d(c(0,0), c(10, 10), c(0,0), col = "red") 
#  lines3d(c(0,0), c(0,0), c(10, 10), col = "red") 
  
# add animation 
#play3d(spin3d(axis = c(1, 0, 0)), duration = 1000000)