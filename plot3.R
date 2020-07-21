colna<-read.table("household_power_consumption.txt",sep = ";",nrows = 1)
consu<-read.table("household_power_consumption.txt",col.names = colna,sep = ";",
                  nrows = 2880,skip = 66637)

datetime <- strptime(paste(consu$Date, consu$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gloactpow <- as.numeric(consu$Global_active_power)
submet1<-as.numeric(consu$Sub_metering_1)
submet2<-as.numeric(consu$Sub_metering_2)
submet3<-as.numeric(consu$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, submet1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, submet2, type="l", col="red")
lines(datetime, submet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()