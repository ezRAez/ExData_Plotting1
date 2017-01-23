power_con <- read.table("../data/household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

selected_dates <- power_con[power_con$Date=="1/2/2007" | power_con$Date=="2/2/2007",]

selected_dates$Date <- as.Date(selected_dates$Date, format="%d/%m/%Y")

selected_dates$Time <- strptime(paste(selected_dates$Date, selected_dates$Time), format="%Y-%m-%d %H:%M:%S")
