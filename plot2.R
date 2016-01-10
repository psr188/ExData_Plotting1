power <- function() {
        setwd("~/Personal/Coursera/Exploratory Data Analysis - Assignments/ExData_Plotting1")
        pwr <- read.csv("household_power_consumption.txt",sep = ";",na.strings = "?",colClasses = c(rep("character",each = 2),rep("numeric",each = 7)))
        
        df1 <- subset(pwr,as.Date(pwr$Date,"%d/%m/%Y") == as.Date("01/02/2007","%d/%m/%Y"))
        df2 <- subset(pwr,as.Date(pwr$Date,"%d/%m/%Y") == as.Date("02/02/2007","%d/%m/%Y"))
        df <- rbind(df1,df2)
        
        png(filename = "Plot2.png",width = 480,height = 480)
        plot(1:nrow(df), df$Global_active_power,type = "n",ylab = "Global Active Power (Kilowatts)",xlab = "",xaxt='n')
        lines(df$Global_active_power)
        
        days1 <- 1
        days2 <- nrow(df1)
        days3 <- days2+nrow(df2)
        days = c(days1,days2,days3)
        
        axis(1,at = days, labels = c("Thu","Fri","Sat"))
        dev.off()
        
}