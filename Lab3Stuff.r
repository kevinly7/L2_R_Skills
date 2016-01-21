#practice utilizing R functions, learn to read in data
#create data and write files
#lab three

#using the function sample make a function that returns the sums 
#of rolling two dice x amount of times
diceRoll <- function(rolls) {
  die1 <- sample(6, rolls, replace = TRUE)
  die2 <- sample(6, rolls, replace = TRUE)
  return(die1 + die2)
}

#practice plotting a vector 
#create a vector with 10 numbers
vector <- 1:10

#using plot, plot the vector
#read in the provided "yahooS.csv", it is a file of the stock price of yahoo at the 
#beginning of each month in 2015 plotting it will display the information from the 
#csv
plot(vector)
setwd("/Users/Penguin/Desktop/info498f/lab/L2_R_Skills")
yahooStock <- read.csv('yahooS.csv', stringsAsFactors = FALSE)
plot(yahooStock)

# Call the diceroll function utilized earlier to simualte 10,000 rolls
# and plot it in a histogram
hist(diceRoll(10000))

#explain the differences of a histogram and a plot to your neighbor

# write your dice roll results into a csv, append = true allows you to append to the file
# as you run, turning it to false will overwrite the file
#make a file of titled myRollsFifty where you append the file, 5 times with 
#each addition being 10,000 rolls, then write another file of just 10,000 files
#then will be overwritten with each run
write.table(diceRoll(1000), file ="1000_diceRolls", append=FALSE, row.names=FALSE, sep=",", col.names="SumOfDie")

#view your file
thousandRoll_csv <- read.csv("1000_diceRolls")
View(thousandRoll_csv)