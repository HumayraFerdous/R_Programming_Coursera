complete <- function(directory, id= 1:332) {
     m_list <- list.files(path = directory, pattern = '.csv')
     nobs <- numeric() 
     for(item in id) {
         data <- read.csv(m_list[item])
         Sum <- sum(complete.cases(data))
         nobs <- c(nobs,Sum)
     }
     data.frame(id, nobs)
}

