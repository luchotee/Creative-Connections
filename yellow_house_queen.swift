import UIKit

//MARK: - Global Variables

//Set up global variables to hold customer list
var customerList: [(name:String, address:String, email:String)] = [
    ("John Doe", "123 Main St., Anytown, USA", "jdoe@example.com"),
    ("Jane Doe", "456 Bishop Rd., Anytown, USA", "jane@example.com"),
    ("Mike Smith", "789 Maple Ave., Anytown, USA", "msmith@example.com"),
    ("Sara Jones", "321 Valley Dr., Anytown, USA", "sjones@example.com")
]

//Set up global variables for current customer
var currentCustomerIndex: Int = 0
var currentCustomer: (name:String, address:String, email:String) = ("", "", "")

//MARK: - Helper Functions

//Function to get customer by index
func getCustomerByIndex(index: Int) -> (name:String, address:String, email:String) {
    return customerList[index]
}

//Function to get customer index by name
func getCustomerIndexByName(name: String) -> Int {
    for (index, customer) in customerList.enumerated() where customer.name == name {
        return index
    }
    return -1
}

//Function to create customer
func createCustomer(name: String, address: String, email: String) {
    customerList.append((name:name, address:address, email:email))
}

//Function to update customer
func updateCustomer(index: Int, newName: String, newAddress: String, newEmail: String) {
    customerList[index] = (name:newName, address:newAddress, email:newEmail)
}

//Function to delete customer
func deleteCustomer(index:Int) {
    customerList.remove(at: index)
}

//Function to print customer list
func printCustomerList() {
    for (index, customer) in customerList.enumerated() {
        print("\(index): \(customer.name)")
    }
}

//MARK: - Main Program

//Get the current customer
currentCustomer = getCustomerByIndex(index: currentCustomerIndex)

//Create a new customer
createCustomer(name: "Bob Smith", address: "123 Pine St, Anytown, USA", email: "bsmith@example.com")

//Update the current customer
updateCustomer(index: currentCustomerIndex, newName: "Jane Smith", newAddress: currentCustomer.address, newEmail: currentCustomer.email)

//Print the customer list
printCustomerList()

//Delete the new customer
let indexToDelete = getCustomerIndexByName(name: "Bob Smith")
deleteCustomer(index: indexToDelete)