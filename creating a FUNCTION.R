# start out with a number to test
x <- 3
# you'll want your function to return this number
x^2
square <- function(x) {
	squared_val <- x*x
	return(squared_val)
}
# test it out
square(x)
square(53)
53^2 # does this match?

#Create a new R script or quarto file and write a function to square a number.
#You’re tired of writing x^2 when you want to square x, so you want a function
#to square a number. You can call it square(). Here’s some code to copy to get
#you started.
x <- 3
square <- function(x){
	squared-val <- x*x
	return(squared_val)
}
square(x)
square(53)

new_mean <- function(x) {
	n <- length(x)
	mean_val <- sum(x) / n
	return(mean_val)
}


#Q2: Write a function to raise to any power. You don’t just want to square
#numbers, you want to raise them to higher powers too. Make a function that uses
#two arguments, x for a number, and power for the power. Call it raise().

#example:

raise <- function(x, power){
	raised <- x ^ power
	return(raised)
}

# test with
raise(x = 2, power = 4)
# should give you
2^4

raise(x=3, power =3)

#q3. Change your raise() function to default to squaring x when the user doesn’t
#enter a value for power.
raise <- function(x, power = 3){
	raised <- x ^ power
	return(raised)
}

raise (x = 5)


#same answers bc R reads either what you have or the order of the original
#function
raise (power =4, x = 2)
raise (2,4)
#different
raise(2,4)
raise(4,2)


#q5. Create a function that takes a vector of numbers and returns the standard
#deviation manually (like we did the mean). Use if statements to check if the
#vector has only one (or fewer) elements and return NA if so. (Hint: the
#length() function will be helpful!) You don’t need any extra arguments besides
#the vector of numbers.

#new_mean <- function(x) {
#	n <- length(x)
#	mean_val <- sum(x) / n
#	return(mean_val)
#}

#My work
standard <- function(x){
	n <- length(x)
	sd_val <- sqrt(sum((x-mean(x))^2)/(n-1))
	if (n>1) {
		sd_val <- sd_val
	} else {
		sd_val <- "NA"
	}
	return(sd_val)
}

OR

new_sd <- function(x) {
	demeaned_x <- x - mean(x)
	squared_demeaned_x <- demeaned_x^2
	sum_of_squares <- sum(squared_demeaned_x)
	n_minus_1 <- length(x) - 1
	std_dev <- sqrt(sum_of_squares / n_minus_1)
	return(std_dev)
}

#professor
new_sd(c(345, 123, 7564, 345, 123, 4653, 4346, 346, 76))
#r
sd(c(345, 123, 7564, 345, 123, 4653, 4346, 346, 76))

standard(c(345, 123, 7564, 345, 123, 4653, 4346, 346, 76))

standard(c(1))

#q5. Modify your function to remove the NA values before calculating the
#standard deviation. (Hint: the na.omit() function will be helpful!) Add an
#argument na.rm = that defaults to TRUE (the opposite of the na.rm argument in
#the built-in R function sd(), which defaults to FALSE). If na.rm = FALSE, then
#the function should return NA if there are any NA values in the vector.

std_dev <- function(x, na.rm = TRUE){
	if (na.rm) {
		new_x <-  na.omit(x)
	} else {
		new_x <- x
	}
	if (length(new_x) <= 1) {
		return_val <- NA
	} else {
		#calculate sd
		return_val <- sqrt(sum((new_x-mean(new_x))^2)/(n-1))
	}
	return(return_val)
}



