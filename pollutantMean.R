pollutantmean <- function(directory, pollutant, id=1:332) {
     m_list <- list.files(path = directory, pattern = '.csv')
     val <- numeric()
     for(item in id) {
         data <- read.csv(m_list[item])
         val <- c(val, data[[pollutant]])
     }
     mean(val, na.rm=T)
}
