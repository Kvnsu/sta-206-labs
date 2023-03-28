#Problem 7A

x <- seq(1,100)

#Problem 7B

w <- 0.5 * x + 2

#Problem 7C

normsamp <- rnorm(100, mean = 0, sd = 5)
sd(normsamp) 
mean(normsamp)
hist(normsamp)

#Problem 7D
y <- w + normsamp

#Problem 7E
plot(x,y = y)

#Problem 7F
coeffs <- lm(y~x)
abline(coeffs)

#Problem 7G
coeffsres <- residuals(coeffs)
MSE <- sum(residuals(coeffs)^2)/length(residuals(coeffs))
plot(x, coeffsres)
