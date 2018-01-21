plot3 <- function () {
        ##get file
        #setwd("C:/Users/lee92/Documents/GitHub/ExData_Plotting1")
        Data<-read.table(file='household_power_consumption.txt', sep=";", na.strings="?", header= TRUE)
        
        ##extract Data
        Data<-Data[(Data$Date =="1/2/2007"| Data$Date == "2/2/2007"),]
        
        ##Date and Time
        Time<-strptime(paste(Data$Date, Data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
        
        ##plot3
        png("plot3.png",width=480, height=480)
        plot(Time, Data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
        points(Time, Data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
        points(Time, Data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
        legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        dev.off()
}