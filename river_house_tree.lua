-- Create a function to display the title of the application
function displayTitle()
   print("Welcome to Creative Connections")
end

-- Create a function to prompt user to input username
function inputUsername()
   print("What is your username?")
   username = io.read()
end

-- Create a function to print a prompt for user to select options
function printOptions()
   print("Please select from the following options:")
   print("1. Register")
   print("2. Login")
   print("3. Quit")
end

-- Create a function to read and process user's menu option selection
function processOption()
   opt = io.read()
   if opt == "1" then
      register()
   elseif opt == "2" then
      login()
   elseif opt == "3" then
      quit()
   else
      print("Invalid option. Please select from the menu.")
      processOption()
   end
end

-- Create a function to register a new user
function register()
   print("Please enter a password for your new account:")
   password = io.read()
   print("Your account has been registered.")
end

-- Create a function to login
function login()
   print("Enter your username:")
   enteredUsername = io.read()
   print("Enter your password:")
   enteredPassword = io.read()
   if enteredUsername == username and enteredPassword == password then
      print("Welcome back! You are now logged in.")
   else
      print("Incorrect username or password. Please try again.")
   end
end

-- Create a function to quit the application
function quit()
   print("Thank you for using Creative Connections!")
   os.exit()
end

-- Main
displayTitle()
inputUsername()
printOptions()
processOption()