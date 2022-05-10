boat.names <-c ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
boat.colors<-c("black", "green", "pink", "blue", "blue", "green", "green", "yellow", "black", "black")
boat.ages<-c(143, 53, 356, 23, 647, 24, 532, 43, 66, 86)
boat.prices<-c(53, 87, 54, 66, 264, 32, 532, 58, 99, 132)
boat.prices[1]
## Exercise 2##
a <- 1:200 ;a
b <- a*123
b
b[44]
b
b_sub <- b[1:15]
b_sub
b_sub <- c(b_sub, 24108, 24231)
b_sub
vector_1 <- c('actb', 100, 3.4)
vector_1
object_1 <- vector_1[2]
object_1
object_1*4
named_vector <- c(fruit = "apple", fruit = "banana", vegetable = "carrot", animal = "dog")
named_vector
attributes(named_vector)
names(named_vector)
#Activity 3
matrix_1 <- matrix (1:9, nrow=3)
matrix_1
matrix_1[2,3]
matrix_2 <- matrix (1:12, nrow=3, ncol =4, byrow =TRUE)
matrix_2
colnames(matrix_2) <- c('first','second','third', 'forth')
row.names(matrix_2) <- c('r1','r2','r3')
matrix_2
array_1 <- array(1:24, dim = c(4,2,3))
array_1 [3,2,2]
last_matrix <- array_1 [,,3]
last_matrix
list_1 <- list(1:15, 'Lucy', TRUE, 4, F)
list_1
list_1[c(3,5)] #Pull out multiple elements from a list
list_1[[5]] #To pull out one element from a list

##Exercise 4
movie <- c("Whatever Works","ItFollows","Loveand Mercy","TheGoonies","JiroDreams of Sushi","ThereWill be Blood", "Moon", "Spice World", "Serenity", "Finding Vivian Maier")
year <- c("2009", "2015", "2015", "1985", "2012", "2007", "2009", "1988", "2005", "2014")
boxoffice<-c(35,15,15,62,3,10,321,79,39,1.5)
genre <-c("Comedy","Horror","Drama","Adventure","Documentary","Drama","Science,Fiction","Comedy","Science Fiction", "Documentary")
movie[10]
genre[1:4]
movie [movie == "Spice World"] <- "The Naked Gun" 
movie[year <= 1990]
movie[genre == "Comedy"]
boxoffice[genre == "Comedy"]
movie[boxoffice < 50 & genre == "Comedy"]
