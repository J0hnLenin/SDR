task_1 <- function(){
	v1 <- c(1:6)
	dim(v1) <- 2:3
    colnames(v1) <- c("first", "second", "third")
    rownames(v1) <- c("r1", "r2")
    print(v1)
}

task_2 <- function(){
	v1 <- c(1:6)
	dim(v1) <- 2:3
    print(which.min(v1))
    print(which.max(v1))
}

task_3 <- function(){
    v1 <- matrix(data=1:6, nrow=2, ncol=3)
    print(v1)

    v1 <- as.vector(v1)
    print(v1)
}

task_5 <- function(){
    v1 <- matrix(data=1:12, nrow=3, ncol=4)
    v2 <- matrix(data=1:12, nrow=3, ncol=4)
    
    print(v1 + v2)
    print(v1 - v2)
    print(v1 %*% t(v2))

}

task_5()