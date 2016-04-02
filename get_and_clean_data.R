library(sqldf)

# read in the dataset, filtering for the dates we want
hhpower <- read.csv.sql("household_power_consumption.txt",
                     sql = "select * from file where Date in ('1/2/2007','2/2/2007')",
                     sep = ";", 
                     header = TRUE)
        
# add converted datetime field
hhpower$datetime <- strptime(paste(hhpower$Date, 
                                   hhpower$Time, 
                                   sep=" "),
                             format="%d/%m/%Y %H:%M:%S")
