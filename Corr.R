corr <- function(directory, threshold = 0) {
     m_list <- list.files(path = directory, pattern = '.csv')
     df <- complete(directory)
     ids <- df[df["nobs"]>threshold, ]$id
     cr <- numeric()
     for(item in ids) {
         data <-read.csv(m_list[item])
         dff <- data[complete.cases(data), ]
         cr <- c(cr,cor(dff$sulfate, dff$nitrate))
     }
     return(cr)
}