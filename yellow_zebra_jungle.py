print("Welcome to Creative Connections!") 

#asking the user to enter information about themselves
name = input("What's your name? ") 
age = int(input("How old are you? ")) 
location = input("Where are you located? ") 
hobby = input("What do you like to do for fun? ") 

#storing the user's information 
user_info = {"name": name,
             "age": age,
             "location": location,
             "hobby": hobby}

#printing out a greeting for the user
print("Welcome {name}! We are so happy to have you join us at Creative Connections!".format(name=user_info["name"])) 

#creating a list of all the users 
users =[]
users.append(user_info) 

#giving the user the option to view or add other users' information 
while True: 
    answer = input("Do you want to view or add other users' information? Type 'view' to view, 'add' to add, or 'quit' to quit: ") 
    if answer == "view": 
        print("All the users:") 
        #print out all the users' information
        for user in users:
            print("Name: {name}, Age: {age}, Location: {location}, Hobby: {hobby}"
                  .format(name=user["name"], age=user["age"], location=user["location"], hobby=user["hobby"]))
    elif answer == "add":
        #ask the user to add other users' information
        name = input("Name: ") 
        age = int(input("Age: ")) 
        location = input("Location: ") 
        hobby = input("Hobby: ") 
        #storing the new user's information
        user_info = {"name": name,
                     "age": age,
                     "location": location,
                     "hobby": hobby}
        users.append(user_info)
        print("Successfully added!")
    elif answer == "quit":
        print("Thanks for using Creative Connections! Come back soon!")
        break
    else:
        print("Invalid input. Please try again.")