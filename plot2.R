#import the data
source("get_and_clean_data.R")

#open the png device
png(filename = "plot2.png",
    width = 480, 
    height = 480)

#create one plot at a time
par(mfrow=c(1,1))

#create the plot
with(hhpower, plot(datetime,
                   Global_active_power, 
                   type="l",
                   xlab="",
                   ylab="Global Active Power (kilowatts)"))

#close the png device
dev.off()