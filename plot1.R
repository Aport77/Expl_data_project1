file<-"household_power_consumption.txt"
electric_tbl<-read.table(file, header=TRUE, sep=";", na.strings="?",colClasses=c("character","character","numeric", "numeric","numeric",
                                                                                 "numeric", "numeric", "numeric", "numeric"))
dates<-electric_tbl$Date
col_dates<-as.Date(dates,"%d/%m/%y")
subset_dates<-subset(electric_tbl, electric_tbl$Date %in% c('1/2/2007','2/2/2007'))
hist(subset_dates$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()