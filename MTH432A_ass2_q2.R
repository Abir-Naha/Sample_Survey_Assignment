simulation_with_seperate_graphs<- function(sample_points)
{
  par(mfrow=c(ceiling(length(sample_points)/2),2))
  mean_of_means <- NULL
  mean_of_variances <- NULL
  for (i in 1:length(sample_points)) 
  {
    means <- NULL
    variances<- NULL
    for (j in 1:sample_points[i]) 
    {
      data <- rnorm(5, mean = 5, sd = 2)
      means <- c(means, mean(data))
      variances <- c(variances, var(data))
    }
    mean_of_means <- c(mean_of_means, mean(means))
    mean_of_variances <- c(mean_of_variances, mean(variances))
    plot(density(means),col="red", main = "Density Plot of means")
  }
  df <- data.frame(sample_points, mean_of_means, mean_of_variances)
  print(df)
}

simulation_with_superimposed_graph<- function(sample_points)
{
  n <- length(sample_points)
  mean_of_means <- NULL
  mean_of_variances <- NULL
  for (i in 1:n) 
  {
    means <- NULL
    variances<- NULL
    for (j in 1:sample_points[i]) 
    {
      data <- rnorm(5, mean = 5, sd = 2)
      means <- c(means, mean(data))
      variances <- c(variances, var(data))
    }
    mean_of_means <- c(mean_of_means, mean(means))
    mean_of_variances <- c(mean_of_variances, mean(variances))
    if(i == 1)
    {
      plot(density(means), col=i,lwd=2, main = "Superimposed Density plots",ylim = c(0,1),xlim = c(0,10),xlab = "Means of distribution", col.main="red")
    }  
    else
    {
      lines(density(means), col=i,lwd=2)
    }
  }
  df <- data.frame(sample_points, mean_of_means, mean_of_variances)
  print(df)
  legend("topleft", legend = sample_points, col = 1:n, title = "Sample Sizes",lwd = 4, bg = "lightyellow", title.col = "darkmagenta")
}

# EXAMPLES TO TRY :(remove # before the codes below to try them!)
# simulation_with_superimposed_graph(c(15, 30, 100, 1000))
# simulation_with_seperate_graphs(c(5, 15, 30, 50, 100, 500, 1000))
