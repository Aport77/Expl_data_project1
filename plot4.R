file<-"household_power_consumption.txt"
electric_tbl<-read.table(file, header=TRUE, sep=";", na.strings="?",colClasses=c("character","character","numeric", "numeric","numeric",
                                                                                 "numeric", "numeric", "numeric", "numeric"))
dates<-electric_tbl$Date

subset_dates<-subset(electric_tbl, electric_tbl$Date %in% c('1/2/2007','2/2/2007'))

date_time<-paste(subset_dates$Date, subset_dates$Time)
str_date_time<-strptime(date_time,  "%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))
x<-str_date_time
y<-subset_dates[,3]
plot(x,y, type="l", ylab="Global Active Power (kilowatts)", xlab="")


y<-subset_dates[,5]
plot(x,y, type="l", ylab="Voltage", xlab="datetime")

y<-subset_dates[,7]
y1<-subset_dates[,8]
y2<-subset_dates[,9]
plot(x,y, type="l", ylab="Energy sub metering", xlab="")
points(x,y1, type="l", col="red")
points(x,y2, type="l", col="blue")
legend("topright", pch='_', bty="n", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

y<-subset_dates[,4]
plot(x,y, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()
png(file="plot4.png", width=400, height=350, res=50)
par(mfrow=c(2,2))
x<-str_date_time
y<-subset_dates[,3]
plot(x,y, type="l", ylab="Global Active Power (kilowatts)", xlab="")


y<-subset_dates[,5]
plot(x,y, type="l", ylab="Voltage", xlab="datetime")

y<-subset_dates[,7]
y1<-subset_dates[,8]
y2<-subset_dates[,9]
plot(x,y, type="l", ylab="Energy sub metering", xlab="")
points(x,y1, type="l", col="red")
points(x,y2, type="l", col="blue")
legend("topright", pch='_', bty="n", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

y<-subset_dates[,4]
plot(x,y, type="l", ylab="Global_reactive_power", xlab="datetime")

#dev.copy(png, file="plot4.png")
dev.off()