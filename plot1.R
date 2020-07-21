colna<-read.table("household_power_consumption.txt",sep = ";",nrows = 1)
consu<-read.table("household_power_consumption.txt",col.names = colna,sep = ";",
                  nrows = 2880,skip = 66637)

png("plot1.png", width=480, height=480)
hist(as.numeric(consu$Global_active_power),
     xlab = "Global Active Power (kilowatts)",main = "Global Active Power",col = "red")
dev.off()
