#electric_tbl<-read.table("household_power_consumption.txt", header=TRUE, sep=",", na.strings="?", colClasses=c("Date","Time","numeric", 
                        "numeric","numeric","numeric", "numeric", "numeric", "numeric" ))
#head(electric_tbl)



#electric_tbl<-read.table(file, header=TRUE, sep=";", na.strings="?",colClasses=c("Date","character","numeric", "numeric","numeric",
                                                                                 "numeric", "numeric", "numeric", "numeric"))

file<-"household_power_consumption.txt"
electric_tbl<-read.table(file, header=TRUE, sep=";", na.strings="?",colClasses=c("character","character","numeric", "numeric","numeric",
                                                                                 "numeric", "numeric", "numeric", "numeric"))
dates<-electric_tbl$Date
col_dates<-as.Date(dates,"%d/%m/%y")
