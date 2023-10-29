x <- c(1:10)

maxx <- function(x){
    maxx = x[0]
    for(i in 2:length(x)){
        if(x[i] > maxx){
            maxx = x[i]
        }
    }
}

print(maxx(x))