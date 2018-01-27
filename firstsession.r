
# =================   Data structures

# Atomic vectors 

a <- c(1, 2, 3, 4)  
b <- c(TRUE, FALSE, FALSE, TRUE)
c <- c("A", "B", "C", "D")
d <- c(1L, 2L, 3L, 4L)
e <- c(1, 2, 3, 4, 5, 6)

#  Matrix

m <- matrix(data = a, nrow = 2, ncol = 2)
n <- matrix(data = d, nrow = 4, ncol = 1)

# Array
o <- array(data = NA, dim = 2, dimnames = NULL)
oa <- as.array(c(m, n))

# Data frame
r <- data.frame(a, b)
s <- data.frame(r, c, d)
## Note: data frames do not allow atomic vectors with different length 
## When the length of the atomic vector is smaller than the length of the data frame, the data frame coerce the atomic vector to its length

r[2] # [] returns the second component of the data frame (same structure)
str(r$a) # $ returns an atomic vector (different structure)


# Lists
##Is a collection of hetereogeneus structures 
ll <- list (a, b, c, d, e, r, o, oa)

ll[1] # [1] returns the first component of the list (same structure)

ll2 <- list (a = a, 
             b = b,
             c = c, 
             r = r)
str(ll2$a) # returns the mentioned element with the form of an atomic vector (different structure)
str(ll2$r)
