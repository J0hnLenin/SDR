task_1 <- function(){
	l1 <- list("abacaba", 7, TRUE)
	
    print(l1)
}

task_2 <- function(){
	v1 <- c(1:6)
	m1 <- matrix(v1, nrow = 2, ncol = 3)
    l1 <- list("abacaba", 7, TRUE)

    l2 <- list(v1, m1, l1)
    print(l2)
}

task_3 <- function(){
    l1 <- list("abacaba", 7, TRUE)
    l2 <- list("A roza ypala na lapy Azora", 2, FALSE)
    
    print(c(l1, l2))
}

task_4 <- function(){
    l1 <- list("A roza ypala na lapy Azora", 2, FALSE)

    print(length(l1))
}

task_5 <- function(){
    l1 <- list("A roza ypala na lapy Azora", 2, FALSE)
    l2 <- list("A roza ypala na lapy Azora", 4, 10, NA, FALSE)
    print(l2[!(l2 %in% l1)])
}

task_5()