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
str(fish) # 5 data types present= factor data, characters, numbers, integers, 
fish$area_fac=as.character(fish$area_fac) #change "area_fac" to character data type, from factor data.
str(fish)
fish$avg.DNE.m=NULL # remove the "avg.DNE.m" column from the data frame.
str(fish)

