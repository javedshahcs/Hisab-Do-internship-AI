# HISAB DO INTERNSHIP AI

## 📌 Day 1 - Python Basics
This is Day 1 of my AI Internship at **Hisab Do**.  
In this task I practiced basic Python concepts using user input.

---

## 🚀 What I Learned in Day 1

### 1. **User Input & Variables**
Took basic info from user and stored in variables:
- `name`, `age`, `address`, `qualification`
- Stored all in a list `UserInfo`

### 2. **Conditional Statements**
Checked eligibility based on age:
- `18 to 59` → Eligible for Driving + Voting
- `60+` → Only Voting
- `<18` → Not eligible for both

### 3. **Loops**
- `for loop` → Print all user details
- `for loop with slicing` → Print first 3 items `UserInfo[0:3]`
- `while loop` → Basic while + break example

### 4. **Functions**
Created reusable functions:
- `check_eligibility()` → Check driving/voting eligibility
- `TakesNumber()` → Take 2 numbers from user
- `sum()`, `MUL()`, `Sub()`, `Div()`, `Rem()` → Basic calculator operations
- Used `return` and `*args` to pass values

---

## ▶️ How to Run
1. Make sure Python 3 is installed
2. Open terminal in project folder
3. Run command:
   ```bash
   python Day1/day1.py

## Project Structure
HISAB DO INTERNSHIP AI/
│
└── Day1/
    ├── day1.py
    └── README.md
## 👨‍💻 AuthorJaved
AI Intern @ Hisab Do
Date: August 2026    


## Used the following code

````python 

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