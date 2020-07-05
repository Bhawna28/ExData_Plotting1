data<-read.table("C:/Users/KALYANI/Desktop/R-WORK/household_power_consumption.txt", sep = ";", na.strings = "?",skip=66636,nrows = 2880,header=TRUE,col.names = c( "Date","Time","Global_active Power","Global_reactive Power","Voltage","Global Intensity","Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),stringsAsFactors = FALSE)
summary(data)
library(graphics)
hist(data$Global_active.Power,col="red",xlab = "GlobalActivePower(Kilowatts)",main  ="Global Active Power")
legend("topright",legend = "Plot1")

##creating datetime variable for getting weekdays on x-axis
data$Date<- as.Date(data$Date)
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

##PNG for Plot 1
png(file="Plot1.png")
hist(data$Global_active.Power,col="red",xlab = "GlobalActivePower(Kilowatts)",main  ="Global Active Power")
dev.off()



