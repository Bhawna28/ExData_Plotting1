data<-read.table("C:/Users/KALYANI/Desktop/R-WORK/household_power_consumption.txt", sep = ";", na.strings = "?",skip=66636,nrows = 2880,header=TRUE,col.names = c( "Date","Time","Global_active Power","Global_reactive Power","Voltage","Global Intensity","Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),stringsAsFactors = FALSE)
summary(data)
plot(data$DateTime,data$Global_active.Power,ylab="Global Active Power(KiloWatts)",type = "l")
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")


##Png for plot 2
png(file="Plot2.png")
plot(data$DateTime,data$Global_active.Power,ylab="Global Active Power(KiloWatts)",type = "l")
dev.off()