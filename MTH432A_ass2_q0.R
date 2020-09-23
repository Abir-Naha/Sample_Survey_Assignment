##THE QUESTION ::
#The following data give the geographical area (in acres) under paddy for 58 villages. Draw a sample of eight villages using SRSWOR and SRSWR, find an estimate of average area per village under paddy, an estimate of its variance and its 95% confidence interval. Execute it in R Software.
#98,  270, 79, 273, 130, 158, 116, 194,  41, 33, 78, 56, 58, 19, 64, 81, 141, 58, 29, 46, 93, 127, 114, 88, 108, 58, 47, 69, 44, 56, 102, 102, 187, 161, 179, 76, 137, 179, 76, 137, 127, 104, 117, 170, 210, 101, 222, 223, 96, 114, 318, 272, 155, 292, 240, 201, 261, 189 

##SOLUTION::

area<-c(98,  270, 79, 273, 130, 158, 116, 194,  41, 33, 78, 56, 58, 19, 64, 81, 141, 58, 29, 46, 93, 127, 114, 88, 108, 58, 47, 69, 44, 56, 102, 102, 187, 161, 179, 76, 137, 179, 76, 137, 127, 104, 117, 170, 210, 101, 222, 223, 96, 114, 318, 272, 155, 292, 240, 201, 261, 189 )

# CASE 1: (SRSWOR)

# DRAWING A SAMPLE OF SIZE 8 :
data<-sample(area, size = 8, replace = FALSE)
print(data)

# ESTIMATE OF SAMPLE MEAN & VARIANCE :
sprintf('Estimate of sample mean is : %.3f',mean(data))
sprintf('Estimate of sample variance : %.3f',var(data))

# 95% CONFIDENCE INTERVAL :
#(UPPER 0.025% CRITICAL VALUE OF T-DISTN : 12.70620)
lower_confidence_limit = mean(data) - 12.70620*sqrt(var(data))
upper_confidence_limit = mean(data) + 12.70620*sqrt(var(data))
sprintf("95-percent Confidence Interval of mean is :(%.3f , %.3f)", lower_confidence_limit, upper_confidence_limit)


# CASE 2: (SRSWR)

# DRAWING A SAMPLE OF SIZE 8 :
data<-sample(area, size = 8, replace = TRUE)
print(data)

# ESTIMATE OF SAMPLE MEAN & VARIANCE :
sprintf('Estimate of sample mean is : %.3f',mean(data))
sprintf('Estimate of sample variance : %.3f',var(data))

# 95% CONFIDENCE INTERVAL :
#(UPPER 0.025% CRITICAL VALUE OF T-DISTN : 12.70620)
lower_confidence_limit = mean(data) - 12.70620*sqrt(var(data))
upper_confidence_limit = mean(data) + 12.70620*sqrt(var(data))
sprintf("95-percent Confidence Interval of mean is :(%.3f , %.3f)",lower_confidence_limit,upper_confidence_limit)
