task_1 <- function(){
	f <- factor(c("January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"))
    print(f)
}

task_2 <- function(){
	f1 <- factor(c("January",
                "February",
                "March",
                "April",
                "May",
                "June"))
    f2 <- factor(c("July",
                "August",
                "September",
                "October",
                "November",
                "December"))
    print(c(f1, f2))
}

task_3 <- function(){
    v1 <- c("January", 
            "February",
            "March",
            "April",
            "May")
    v2 <- c(1:5)
    v3 <- c("Winter", 
            "Winter",
            "Spring",
            "Spring",
            "Spring")
    v4 <- c(2, 3, 1, 2, 3)        
    df <- data.frame(v1, v2, v3, v4)
    
    return(df)
}

task_4 <- function(){
    df <- task_3()

    print(df$v1)
}

task_5 <- function(){
    df <- task_3()

    sep <- rbinom(nrow(df), 1, 0.50)
    new_df  <- df[sep == 1,]

    print(new_df)
}

task_5()