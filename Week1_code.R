#4

x <- 4L
class(x)

x <- 4
class(x)

#5
x <- c(4,"a",TRUE)
class(x)

x <- c(4,TRUE)
class(x)

#6

x <- c(1,3,5)
y <- c(3,2,10)
rbind(x,y)

#8

x <- list(2,"a","b",TRUE)
x[[2]]

#11

data <- read.csv("hw1_data.csv")
names(data)

#12

data[c(1,2),c(1:6)]

#13

nrow(data)

#14

tail(data,2)

#15

data[47,'Ozone']

#16

data <- read.csv("hw1_data.csv")
missing_val <- subset(data,is.na("Ozone"))
nrow(missing_val)

#17

Ozone <- data[c(1:153),1]
good <- complete.cases(Ozone)
mn <- data[good,"Ozone"]
mean(mn)

#18

rows_ozone <- data[1]
above_ozone <- rows_ozone>31
rows_temp <- data[4]
above_temp <- rows_temp>90
val <- subset(data, above_ozone & above_temp, select= Solar.R)
apply(val,2,mean)

#19

mean_temp <- subset(data,Month==6,select=Temp)
apply(mean_temp,2,mean)

#20

max_ozone <- subset(data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(max_ozone,2,max)


