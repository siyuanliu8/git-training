# https://www.datamentor.io/r-programming/examples/fibonacci-recursion/

# Program to display the Fibonacci sequence up to n-th term using recursive functions
recurse_fib <- function(n) {
	if(n <= 1) {
		return(n)
	} else {
		return(recurse_fib(n-1) + recurse_fib(n-2))
	}
}

fib_seq <- function() {
	# take input from the user
	nterms = as.integer(readline(prompt="How many terms? "))

	# check if the number of terms is valid
	if(nterms <= 0) {
		print("Plese enter a positive integer")
		} else {
			print("Fibonacci sequence:")
			for(i in 0:(nterms-1)) {
			print(recurse_fib(i))
		}
	}
}
