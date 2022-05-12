#Question 2
a <- 10 
b <- "happy"
c <- 1:15
save.image(file = "11_05_2022_Morning_example_2_image.RData")
saveRDS(object = a, file = "object_a_rds")
rm(a) ; ls()
rm(list = ls())
ls()
getdw()
getwd()
setwd(dir = "/t1-data/project/obds/ldenly/ldenly/projects/") #change working directory
getwd()

object_a <- readRDS("/t1-data/project/obds/ldenly/ldenly/projects/3_project_day7/object_a_rds")
rm(object_a)
object_a


day2matrix <- readRDS(file = "/project/obds/shared/resources/2_r/my_day2matrix.rds")
rowsum <- rowSums(day2matrix)
colsum <- colSums(day2matrix)
rowmean <- rowMeans(day2matrix)
day2matrix <- cbind(day2matrix, rowsum = rowSums(day2matrix), rowmean = rowMeans(day2matrix))
day2matrix <- rbind(day2matrix, c(colSums(day2matrix)), c(colMeans(day2matrix)))
day2matrix
day2matrix[21:22,11:12] <-NA
day2matrix

data("ToothGrowth")
summary(ToothGrowth)
head(ToothGrowth)
colnames(ToothGrowth)
mean(ToothGrowth$len)
max(ToothGrowth$len)
min(ToothGrowth$len)
rowSums(ToothGrowth)
sum(ToothGrowth$len)

data(airquality) #load airquality dataset
head(airquality) #look up more info
nrow(airquality)
ncol(airquality)
colnames(airquality)
airquality_sorted <- airquality[order(airquality$Ozone),]
head(airquality_sorted)
airquality_sorted_2 <- airquality[order(airquality$Month, airquality$Temp, decreasing = TRUE),]
airquality_sorted_2
airquality_sorted_3 <- airquality[order(airquality$Month),]
airquality_sorted_3

write.table(airquality_sorted,file="airquality_sorted_2.txt", quote = FALSE, sep = "\t")

#Exercise 4
buildings <-data.frame(location=c(1, 2, 3), name=c("b1", "b2", "b3"))
data <-data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1),efficiency=c(51,64,70,71,80,58))
head(buildings)
head(data)
buildingStats <- merge(buildings, data, by= "location") #merge data and buildings
head(buildingStats)

#Exercise 5
airquality_by_month <- aggregate(airquality, by=list(airquality$Month),FUN = mean, na.rm=T)
solar.R_by_month <- aggregate(airquality$Solar.R, by=list(Month = airquality$Month), FUN = mean, na.rm=T)
solar.R_by_month
solar.R_by_month_sd <- aggregate(airquality$Solar.R, by=list(Month = airquality$Month), FUN = sd, na.rm=T)
solar.R_by_month_sd


#Extra exercise
data <- data.frame(
  name = c("Astrid", "Lea", "Sarina", "Remon", "Lea", "Babice", "Jonas", "Wendy", "Niveditha", "Gioia"), 
  sex = c("female", "male", "male", "male", "female", "male", "female", "female", "male", "female"), 
  age = c(30, 25, 25, 29, 31, 30, 33, 35, 25, 34), 
  superhero = c("Batman", "Superman", "Batman", "Spiderman", "Batman", "Antman", "Batman", "Superman", "Maggott", "Superman" ), 
  tattoos = c(11, 15, 12, 12, 17, 12, 9, 13, 9, 9))
head(data)
dim(data)
median(data$age)
mean(data$age[data$sex == "female"])
mean(data$age[data$sex == "male"])
max(data$tattoos[data$sex == "male"])
sum(data$age < 32 & data$sex == "female")/nrow(data) *100
sum(data$age)
sum(data$age <32)

#Exercise 6
num_vec <- c(1:10)
square <- function(x){
  y= x^2
  return(y)
}
square(c(3,4))
lapply(num_vec, square)
sapply(num_vec, square)
my_list<-list(1:3,c(TRUE< TRUE, FALSE), FALSE,5)
lapply(my_list, sum)
sapply(my_list, sum)
repeat_fun <- function(x){
  output <- c(x,x,x)
  return(output)
}
new_list <- sapply(my_list,rep.int, times = 3)
new_list

#Exercise 7
for(i in 1:7) {
  print(i^3)
}
head((iris$Sepal.Length))
for(i in colnames(iris)) {
  print(paste0(i, "(", nchar(i), ")"))}
for (name in colnames(iris)){
  char <- nchar(name)
  out <- paste0(name, " (", char, ")")
  print (out)
}
colours_vector <- c("red", "orange", "purple", "yellow", "pink", "blue")
nchar("orange")
for (colour in colours_vector) {
  if (nchar(colour) == 4) {
    print(colour)
  }
}
colours_vector[ifelse(nchar(colours_vector)==4,TRUE,FALSE)]

#Exercise 8

hypotenuse_calculation <- function(x,y) {
  sqrt((x^2)+(y^2))
}
hypotenuse_calculation(3,4)
hypotenuse_calculation(7,9)
hypotenuse_calculation()

