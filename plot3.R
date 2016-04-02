#import the data
source("get_and_clean_data.R")

#open the png device
png(filename = "plot3.png",
    width = 480, 
    height = 480)

#create one plot at a time
par(mfrow=c(1,1))

#create the plot
with(hhpower, plot(datetime,
                   Sub_metering_1, 
                   type="l",
                   xlab="",
                   ylab="Energy sub metering"))
with(hhpower, lines(datetime,
                    Sub_metering_2, 
                    col="red"))
with(hhpower, lines(datetime,
                    Sub_metering_3, 
                    col="blue"))
legend("topright", 
       col=c("black", "red", "blue"), 
       lwd=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#close the png device
dev.off()