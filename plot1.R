#import the data
source("get_and_clean_data.R")

#open the png device
png(filename = "plot1.png",
    width = 480, 
    height = 480)

#create one plot at a time
par(mfrow=c(1,1))

#create the plot
with(hhpower, hist(Global_active_power, 
                   col="red", 
                   xlab="Global Active Power (kilowatts)",
                   ylab="Frequency",
                   main="Global Active Power"))

#close the png device
dev.off()