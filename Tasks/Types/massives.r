task_1 <- function(){
	v1 <- c(1, 2, 3, 4)
	v2 <- c(4, 3, 2, 1)

	print(v1 + v2)
}

task_2 <- function(){
	v1 <- c(1, 2, 3, 4, NA, NaN, 1, -4)
	v <- na.omit(v1)

	print(c(sum(v), mean(v), prod(v)))
}

task_3 <- function(){
	v1 <- c(1, 2, 3, 4, NA, NaN, 1, -4)
	
	print(sort(v1))
	print(rev(sort(v1)))
}

task_1()

