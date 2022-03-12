#The law of Large Numbers

#The rnorm() function in R generates a random number using a normal(bell curve) distribution.
#It takes the sample size as Input and generate that many random numbers.

#E(x) = 68.2 or 0.682 
#Try N = input(10, 100, 1000, 10000....)

#Begin
N <- 1000
counter <- 0
for (i in rnorm(N)){
  if(i> -1 & i <1){
    counter <- counter +1 
  
  }
}

answer <- counter/N *100
answer 

#END
