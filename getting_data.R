setwd("c:/users/Ngocbd/exdata2")
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
f <- "FNEI_data.zip"

if (!file.exists(f))
{
  download.file(url, f)
  unzip (f, exdir = ".")
}

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")