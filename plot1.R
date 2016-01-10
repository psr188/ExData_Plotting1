power <- function() {
        
        ## Please change this to your working directory if you are validating this code
        setwd("~/Personal/Coursera/Exploratory Data Analysis - Assignments/Assignment1")
        
        ##Read the file.
        pwr <- read.csv("household_power_consumption.txt",sep = ";",na.strings = "?",colClasses = c(rep("character",each = 2),rep("numeric",each = 7)))

        ## Create data frames of data for the two dates of interest and merge them using rbind
        df1 <- subset(pwr,as.Date(pwr$Date,"%d/%m/%Y") == as.Date("01/02/2007","%d/%m/%Y"))
        df2 <- subset(pwr,as.Date(pwr$Date,"%d/%m/%Y") == as.Date("02/02/2007","%d/%m/%Y"))
        df <- rbind(df1,df2)
        
        ## Call the png graphics device and plot the histogram as required
        png(filename = "Plot1.png",width = 480,height = 480)
        hist(df$Global_active_power,col ="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
        dev.off()
}