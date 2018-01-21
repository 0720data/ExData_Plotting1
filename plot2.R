plot2 <- function() {
        ##get file
        #setwd("C:/Users/lee92/Documents/GitHub/ExData_Plotting1")
        Data<-read.table(file='household_power_consumption.txt', sep=";", na.strings="?", header= TRUE)
        
        ##TIME & DATE
        #install.packages('lubridate')
        #library('lubridate')
        Data$Time<-hms(Data$Time)
        Data$Date<-as.Date(Data$Date, "%d/%m/%y%y")
        
        Data <-subset(Data, Date=='2007-02-02'|Date=='2007-02-01', 1:9)
        Time <- ymd_hms(Data$Date+Data$Time)
        
        ##plot2 generate
        par(mfrow=c(1,1))
        plot(Data$Global_active_power~Time, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)")
       
        ##save as PNG file
        dev.copy(png, file="plot2.png")
        dev.off()         
}