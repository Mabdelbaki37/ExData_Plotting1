## Import the data into R 


#df<-read.csv("household_power_consumption.txt", header = TRUE,sep = ";") 

#dim(df) ## Checking the number of row n columns

#df$Date<-as.Date(df$Date,"%d/%m/%Y" ) ## change the date type

#df<-subset(df, Date >= "2007-02-01"& Date <= "2007-02-02") ## select subject data

#write.csv(df, "data.csv")

df<-read.csv("data.csv") 

df<-df[-1]

df$Date<-as.Date(df$Date) ## change the date type

df$x <- paste(df$Date, df$Time, sep = " ")


df$x <- strptime(df$x,tz="",format = "%Y-%m-%d %H:%M:%S")

str(df)

## Plot4.R

png("plot4.png", width = 480, height = 480) ## set the graphics system


par(mfrow= c(2,2))

plot(df$x, df$Global_active_power, ylab = "Global Active Power", xlab = "", type = "l")

plot(df$x, df$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")

plot(df$x,df$Sub_metering_1,type = "l",ylab = "Energy sub metering", xlab = "")
lines(df$x,df$Sub_metering_2,col= "red",type = "l")
lines(df$x,df$Sub_metering_3,col= "blue",type = "l")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = .3,lwd= c(1,1,1),,col = c("black","red","blue"))

plot(df$x, df$Global_reactive_power, ylab = "Global_reactive_power", xlab = "", type = "l")

dev.off()

