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

##Plot2.R

png("plot2.png", width = 480, height = 480) ## set the graphics system


plot(df$x,df$Global_active_power,type= "l" , ylab = "Global active power(kilowatts", xlab = "")

dev.off()