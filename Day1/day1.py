
# Take Basic Info from user and store it in a variable
name=input("Enter your Name:")
age=int(input("Enter your Age:"))
Add=input("Enter your Address:")
deg=input("Enter your Final Qualification:")


UserInfo=[name,age,Add,deg]
print("User Detail are:",UserInfo)

if(age>=18 and age<60):
    print(name,"Is eligible for Driving as well as for voting")
elif(age>=60):
    print(name,"is not eligible for driving but eligible for voting")
else:
    print(name,"is not eligible for driving as well as for voting") 

# Now we use the loop
# using for loop to print the user details
for i in UserInfo:
    print(i)

while age>18:
    print(name,"is not a young so much")    
    break

for i in UserInfo[0:3]:
    print(i)

if age>=20:
    for i in UserInfo:
        print("His name is:",i)
        break
else:
    print("Address is:",Add)    



# Now we use the function


def check_eligibility():
    if age>=18 and age<60:
        print(name,"is eligible for driving and voting")
    else:
        print(name,"is not eligible for driving and voting")    

print("Name:",name)       
print("Age",age)
print("Address:",Add)
print("Qualification:",deg)
print("User Eligibility Status is:") 
check_eligibility()

def TakesNumber():
    num1=int(input("Enter Number1:"))
    num2=int(input("Enter Number2:"))
    return num1, num2

def sum(a,b):
    print("**********Addition of the Two Number*******")
    return a+b
print("Sum of two numbers is:",sum(*TakesNumber()))
def MUL(a,b):
    print("**********MUl of the Two Number*******")
    return a*b
print("MUL of two numbers is:",MUL(*TakesNumber()))
def Sub(a,b):
    print("**********Sub of the Two Number*******")
    return a-b
print("Sub of two numbers is:",Sub(*TakesNumber()))
def Div(a,b):
    print("**********Division of the Two Number*******")
    return a/b
print("Division of two numbers is:",Div(*TakesNumber()))
def Rem(a,b):
    print("**********Remainder of the Two Number*******")
    return a%b
print("Remainder of two numbers is:",Rem(*TakesNumber()))


def TakesNumber():
    num1=int(input("Enter Number1:"))
    num2=int(input("Enter Number2:"))
    return num1, num2
def sum(num1,num2):
    TakesNumber()
    print("**********Addition of the Two Number*******")
    return num1+num2
    num3=sum(*TakesNumber()) 
    print("Sum of two numbers is:",numb3)    