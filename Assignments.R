# Lab 2 09/08/2019

x = 1
1<-a # right to left object
b->2 #left to right object

d="bacon" # created character object
typeof(x) # reveals the type of object "x" is
b=as.numeric(20) # created numeric object
typeof(b) # type of "b"=double"
class(b) # reveals thr data type of "b"= "numeric"
c= as.integer (12) #created integer object
c
typeof(c) # reveals the type of data "c" is
letters=as.factor(c('a','b','c','d')) #created factor data type (with 4 levels)

typeof(letters) # revelas the data type of the factor "letters"
b%/%c # integer division of b/c or 20/12, which is 1.66 so it cuts it off to 1 without the remainder
b%%c # took the modulus of b/c or 20/12, and the modulus is what is left over=8.
s=1:10 # created object with sequence of 10 numbers

rm(x)

x=5;y=7;z=9 #created 3 objects in onle line of code
x;y;z # print out the values of x, y , and z.

x*y+z # no parenthesis therefore it multiplies x and y and adds z after it yielding 44
x*(y+z) #the parentheses change the way the function is solved, first, y and z are added then multiplies to x, yielding 80
f=c(1,2,3,4) # to display the NA value, I made an object with 4 numbers, 
f
length(f)=5 # assigned the length of "f" to be 5, even though there are only 4 values, therefore when I run "f" it displays NA for the 5th value.
f

q <-7
q <- NULL

w=4
w=NULL


5^1527 # value is too large for R, therefore it displays as "Inf" or(positive) infinity
-5^1527# value is too large for R, therefore it displays as "-Inf" or ( negative) infinity because it is -5 being raised to the power of 1527.


0/0 # NaN=not a number, is displayed when the result of an operation makes little to no sense


'%candy%' = function (r,t){5*a+7*b} # create own operator
2%candy%4 #ran operator with r=2 and t=4


5%/%2 # integer division of  5/2, yielding the integer value of 2
5%%2 # modulus of 5/2, yielding the remainder of 5/2 rounded upto the next integer (5/2= 2.5, remainder =0.5, rounded upto integer=1)
5^7 # exponent function of 5 to the 7th power, yielding 78125


switchro.if.then=function (x) {
  if (x=="a")
    "antelope"
    else if (x=="b")
      "badger"
  else if (x=="c")
  "cat"
  else "insane"}

  
  switchro.if.then(x="b")
  
  switchro.if.then(x="a")
  
  switchro.if.then(x="z")  
  
  switchro.if.then(x="z")
  
  switchro.if.then(x="z")

  
  
  load(file="fish_data.Rdata")
head("fish_data.Rdata")  
str("fish_data.Rdata")
head("fish_data.Rdata")
head(fish)
tail(fish)
str(fish)
nrow(fish) # find the number of rows in the dataset= 2026 rows
ncol(fish) #find the number of columns in the dataset=23
class(fish $year) # reveals the data type of the "years" column in the data set= "character"
str(fish) # 5 data types present= factor data, characters, numbers, integers,POSIXct 
fish$area_fac=as.character(fish$area_fac) #change "area_fac" to character data type, from factor data.
str(fish)
fish$avg.DNE.m=NULL # remove the "avg.DNE.m" column from the data frame.
str(fish)


#class 9/11/2019 time zones and indexing
load(file="fish_data.Rdata")
str(fish)
head(fish)
fish.e=fish[fish$area_fac=="East",]
unique(fish.e$area_fac)
e.lat=fish[fish$area_fac=="East",] $parcel.start.lat
dim(e.lat)
e.lat=fish[fish$area_fac=="East",] $parcel.start.lat[6]
e.lat[6]
str(e.lat)
e.lat=fish[fish$area_fac=="East"& fish$depth_fac=="Shallow",] 
unique(fish.e$depth_fac)
fish_not_east=fish[fish$area_fac!="East"& fish$depth_fac!= "Shallow",]
unique(fish_not_east)

fish_lg_patch=fish[fish$parcel.length.m >= 20,]
summary(fish$parcel.length.m)

summary(fish_lg_patch$parcel.length.m)

fish_sm_patch=fish[fish$parcel.length.m <= 20,]
summary(fish_sm_patch$parcel.length.m)

v=c(1,1,2,0,3,2,0,1) # reated vector"v"
v
2%in%v #"in" is the number to the left present in v?
1<2 # R can do basic true false logic
1> c(0,1,2)  # R will unfoil each option individually, and tell you if each one is true  or false


c(1,2,3)==c(3,2,1) # still does each one and checks with corresponding one

c(1,2,3) %in% c(3,2,1) # are the numbers in the first character string preset in the 2nd one

#replacing Values


v # we want to remove the 0, which is in the 4th position
v[4]=5 # replaces the 0 in the 4th position to 5
v
v[c(1,3,5)]=c(1,1,1)
v
v[c(1,3,5)]
v
v[c(1,3,5)]= c(7,9,13) # replace the numbers in positions 1,3,5 (of vector v)with the numbers 7, 9 and 13

gc() # garbage collection- cleans up workspace

# how to find missing data or NAs
n=(c(NA,1:50)) #NA in the sequence
mean(n) # gonna give you NA as outpu bc blank value is present in sequence 1:50
mean(n, na.rm=T) # remove the NAs
n.a=n[which(is.na(n)),]
n.a

head(fish)

names(fish) #gives names of all columns

unique(fish$year)
fish$year[6]=NA # replaced the 6th value in "year" with NA
head(fish$year)

fish.no.na=fish[!is.na(fish$year),] # give me all the values from fish.na that do not have an NA
  
  unique(fish.no.na$year) # show me the values in fish, under the column "year" that have no NA
  
  
  #packages
  
  install.packages("data.table")
install.packages(c("tidyverse","stringr","plyr","reshape2","grid","gridExtra","pastecs","lubridate"))  
packs=c("tidyverse","stringr","plyr","reshape2","grid","gridExtra","pastecs","lubridate")
n=length(packs)

  for(i in 1:n){
    install.packages(packs[n])  # for loops, tells the computer to download each of the packages in the set"packs"we set the order of packages in the set "packs" earlier
  }
packs[1]  #pull out the first package in te set of packages "packs"
 packs[5] #pull out the 6th package in te set of packages "packs"
 
 packs 
  
  install.packages("devtools")
yes  
library(devtools)  
install_github("displayr/flipPlots")  


#updating packages  
  
 update.packages(c("tidyverse","stringr","plyr","reshape2","grid","gridExtra","pastecs","lubridate")) 
1  

#Time Objects

getwd()

file=list.files(full.names=TRUE, pattern="ISIIS201405291242.txt")

d= read.table(file, sep="\t",skip=10, header=TRUE, fileEncoding="ISO-8859-1", stringsAsFactors=FALSE, quote="\"",check.names=FALSE, encoding="UTF-8",na.strings="9999.99")
date=scan(file,what="character", skip=1, nlines=1, quiet=TRUE)
date=date[2]
date
library(stringr)
date
mm=str_sub(string=date, start=1,end=2)
mm
yy=str_sub(date, 7, 8)
yy  
y=str_sub(date, -2, -1)
yy

dd=str_sub(date, 4, 5)
dd
head(d$Time) # time is also seen as a character string.





