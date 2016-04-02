#import the data
source("get_and_clean_data.R")

#open the png device
png(filename = "plot4.png",
    width = 480, 
    height = 480)

#create four plots in a two-by-two grid
par(mfcol=c(2,2))

#create the plots

#top-left plot
with(hhpower, plot(datetime,
                   Global_active_power, 
                   type="l",
                   xlab="",
                   ylab="Global Active Power (kilowatts)"))


#bottom-left plot
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
       box.lwd = 0,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#top-right plot
with(hhpower, plot(datetime,
                   Voltage, 
                   type="l"))


#bottom-right plot
with(hhpower, plot(datetime,
                   Global_reactive_power, 
                   type="l"))


#close the png device
dev.off()