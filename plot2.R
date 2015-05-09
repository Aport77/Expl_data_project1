file<-"household_power_consumption.txt"
electric_tbl<-read.table(file, header=TRUE, sep=";", na.strings="?",colClasses=c("character","character","numeric", "numeric","numeric",
                                                                                 "numeric", "numeric", "numeric", "numeric"))
dates<-electric_tbl$Date

subset_dates<-subset(electric_tbl, electric_tbl$Date %in% c('1/2/2007','2/2/2007'))

date_time<-paste(subset_dates$Date, subset_dates$Time)
str_date_time<-strptime(date_time,  "%d/%m/%Y %H:%M:%S")


x<-str_date_time
y<-subset_dates[,3]
plot(x,y, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png")
dev.off()