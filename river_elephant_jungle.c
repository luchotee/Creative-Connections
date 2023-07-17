#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_NAME_SIZE 32
#define MAX_INPUT_SIZE 1024

struct Connection {
    char firstName[MAX_NAME_SIZE];
    char lastName[MAX_NAME_SIZE];
    long phoneNumber;
    struct Connection* next;
};

struct Connection* root = NULL;

// Function to add new contact 
void addNewContact(){
    struct Connection* current = root;
    struct Connection* contact = (struct Connection*) malloc(sizeof(struct Connection));
    printf("Enter contact First Name: \n");
    scanf("%s",contact->firstName);
    printf("Enter contact Last Name: \n");
    scanf("%s",contact->lastName);
    printf("Enter contact Phone Number: \n");
    scanf("%ld",&contact->phoneNumber);
    contact->next = NULL;
    
    if(root == NULL){
        root = contact;
    }
    else{
        while(current->next != NULL){
            current = current->next;
        }
        current->next = contact;
    }
    printf("Contact was added to contacts list\n");
}

// Function to search contact by first name
void searchByFirstName(){
    struct Connection* current = root;
    char name[MAX_NAME_SIZE];
    int flag = 0;
    printf("Enter first name to search: \n");
    scanf("%s",name);
    
    while(current != NULL){
        if(strcmp(current->firstName,name) == 0){
            printf("Contact with name %s was found.\n", name);
            printf("First Name: %s\n", current->firstName);
            printf("Last Name: %s\n", current->lastName);
            printf("Phone Number: %ld\n", current->phoneNumber);
            flag = 1;
            break;
        }
        current = current->next;
    }
    if(flag == 0){
        printf("Contact with name %s was not found.\n", name);
    }

}

// Function to search contact by phone number
void searchByPhoneNumber(){
    struct Connection* current = root;
    long number;
    int flag = 0;
    printf("Enter phone number to search: \n");
    scanf("%ld",&number);
    
    while(current != NULL){
        if(current->phoneNumber == number){
            printf("Contact with number %ld was found.\n", number);
            printf("First Name: %s\n", current->firstName);
            printf("Last Name: %s\n", current->lastName);
            printf("Phone Number: %ld\n", current->phoneNumber);
            flag = 1;
            break;
        }
        current = current->next;
    }
    if(flag == 0){
        printf("Contact with number %ld was not found.\n", number);
    }
}

// Function to delete a contact
void deleteContact(){
    struct Connection* current = root;
    char name[MAX_NAME_SIZE];
    int flag = 0;
    printf("Enter first name to search and delete contact: \n");
    scanf("%s",name);
    struct Connection* prev = NULL;
    
    while(current != NULL){
        if(strcmp(current->firstName,name) == 0){
            printf("Contact with name %s was found and deleted.\n", name);
            flag = 1;
            if(prev == NULL){
                root = current->next;
            }
            else{
                prev->next = current->next;
            }
            free(current);
            break;
        }
        prev = current;
        current = current->next;
    }
    if(flag == 0){
        printf("Contact with name %s was not found.\n", name);
    }
}

// Function to print all contacts
void printContacts(){
    if(root == NULL){
        printf("No contacts in contacts list.\n");
    }
    else{
        struct Connection* current = root;
        printf("Contacts list:\n");
        while(current != NULL){
            printf("First Name: %s\t", current->firstName);
            printf("Last Name: %s\t", current->lastName);
            printf("Phone Number: %ld\n", current->phoneNumber);
            current = current->next;
        }
    }
}

// Main Function
int main(){
    int choice;
    char input[MAX_INPUT_SIZE];
    while(1){
        printf("\n*********************\n");
        printf("Creative Connections\n");
        printf("1. Add New Contact\n");
        printf("2. Search Contact by First Name\n");
        printf("3. Search Contact by Phone Number\n");
        printf("4. Delete Contact\n");
        printf("5. Print Contacts\n");
        printf("6. Exit\n");
        printf("*********************\n");
        printf("Enter your choice: \n");
        scanf("%s",input);
        choice = atoi(input);
        switch(choice){
            case 1: 
                addNewContact();
                break;
            case 2: 
                searchByFirstName();
                break;
            case 3: 
                searchByPhoneNumber();
                break;
            case 4: 
                deleteContact();
                break;
            case 5: 
                printContacts();
                break;
            case 6: 
                printf("Exiting...\n");
                return 0;
                break;
            default:
                printf("Invalid Choice. Please try again.\n");
                break;
        }
    }
    return 0;
}