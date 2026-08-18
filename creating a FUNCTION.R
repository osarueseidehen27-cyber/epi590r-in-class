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








