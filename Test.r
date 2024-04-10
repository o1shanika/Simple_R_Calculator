# Define the functions
add <- function(x, y) {
    return(x + y)
}

substract <- function(x, y) {
    return(x - y)
}

multiply <- function(x, y) {
    return(x * y)
}

divide <- function(x, y) {
    if (y == 0) {
        return("Error! Division by zero.")
    } else {
        return(x / y)
    }
}

# Take inputs from users
print("Select operation:")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")

# Input choice
choice <- as.integer(readline(prompt="Enter choice [1/2/3/4]: "))

# Input numbers
n1 <- as.integer(readline(prompt="Enter first number: "))
n2 <- as.integer(readline(prompt="Enter second number: "))

# Perform operation based on choice
result <- switch(choice,
                 add(n1, n2),
                 substract(n1, n2),
                 multiply(n1, n2),
                 divide(n1, n2))

# Print the result
print(paste(n1, switch(choice, "+", "-", "*", "/"), n2, "=", result))
