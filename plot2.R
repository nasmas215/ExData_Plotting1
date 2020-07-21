colna<-read.table("household_power_consumption.txt",sep = ";",nrows = 1)
consu<-read.table("household_power_consumption.txt",col.names = colna,sep = ";",
                  nrows = 2880,skip = 66637)

datetime <- strptime(paste(consu$Date, consu$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gloactpow <- as.numeric(consu$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gloactpow, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()