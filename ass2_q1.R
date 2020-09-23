# 1) Binomial(12, 0.25) population :(popln mean =3, popln var=2.25)

data<-rbinom(n=10, 12, 0.25)
print(data)
sprintf('Sample Mean is : %.3f',mean(data))
sprintf('Sample Variance is : %.3f',var(data))

# NOW SUPPOSE THE SAMPLE SIZE IS TAKEN LARGER(n=100000)
data<-rbinom(n=100000,12,0.25)
sprintf('sample mean is :%.3f', mean(data))
sprintf('sample variance is : %.3f', var(data))
# CONCLUSION : When the sample size is large then the sample mean tends to popln mean

# 2) Poisson(5.2) population :(popln mean = popln var=5.2)

data<-rpois(n=10, lambda = 5.2)
print(data)
sprintf('Sample Mean is : %.3f',mean(data))
sprintf('Sample Variance is : %.3f',var(data))

# NOW SUPPOSE THE SAMPLE SIZE IS TAKEN LARGER(n=100000)
data<-rpois(n=100000, lambda = 5.2)
sprintf('sample mean is :%.3f', mean(data))
sprintf('sample variance is : %.3f', var(data))
# CONCLUSION : When the sample size is large then the sample mean tends to popln mean

# 3) Normal(3.5, 5.75) population :(popln mean =3.5, popln var=5.75)

data<-rnorm(n=10, mean = 3.5, sd = sqrt(5.75))
print(data)
sprintf('Sample Mean is : %.3f',mean(data))
sprintf('Sample Variance is : %.3f',var(data))

# NOW SUPPOSE THE SAMPLE SIZE IS TAKEN LARGER(n=100000)
data<-rnorm(n=100000, mean = 3.5, sd = sqrt(5.75))
sprintf('sample mean is :%.3f', mean(data))
sprintf('sample variance is : %.3f', var(data))
# CONCLUSION : When the sample size is large then the sample mean tends to popln mean

# 4) Bivariate Normal(15.7, 42.8, 9.2*9.2, 11.7*11.7, 0.79) population :

mu_vector<- c(15.7, 42.8)
sigma_matrix<- matrix(c(9.2*9.2, 9.2*11.7*0.79, 9.2*11.7*0.79, 11.7*11.7),nrow = 2, byrow = TRUE)
library(MASS)
data<-mvrnorm(n=10, mu = mu_vector, Sigma = sigma_matrix)
print(data)
sprintf('mean of 1st variable : %.3f', mean(data[,1]))
sprintf('mean of 2nd variable : %.3f', mean(data[,2]))
sprintf('variance of 1st variable : %.3f', var(data[,1]))
sprintf('variance of 2nd variable : %.3f', var(data[,2]))

# NOW SUPPOSE THE SAMPLE SIZE IS TAKEN LARGER(n=100000)
data<-mvrnorm(n=100000, mu = mu_vector, Sigma = sigma_matrix)
sprintf('mean of 1st variable : %.3f', mean(data[,1]))
sprintf('mean of 2nd variable : %.3f', mean(data[,2]))
sprintf('variance of 1st variable : %.3f', var(data[,1]))
sprintf('variance of 2nd variable : %.3f', var(data[,2]))
# CONCLUSION : When the sample size is large then the sample mean tends to popln mean