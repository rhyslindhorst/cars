# README for Animals Script

## Author Information
- **Name:** [Your Full Name]
- **Course:** [Course Number and Name]
- **Assignment:** Animals Script – Case Statement
- **Date:** [Date of Completion]

## Program Description

This program reads a list of animals and sorts them into different categories. It checks each animal name and determines if the animal is domestic, wild, or unkown. If it reads "Goodbye," the program stops. 

## Animal Classification Rules
This script determines the type of animal according to the following logic:
- `"DOG"` → domestic animal  
- `"CAT"` → domestic animal  
- `"TIGER"` → wild animal  
- Any other animal → unknown animal  
- Typing `"Goodbye"` ends the program  

## Usage
To run the script interactively:
```bash
./animals.sh
```

To test with an input file (for example, `animals-input`):
```bash
./animals.sh < animals-input
```
## How the Script Works
The program uses a while read loop to go through each animal one at a time. Inside the while loop, a case statement checks what the animal is and prints the appropriate message. The * pattern is used to catch any animal names that don’t match the listed ones, labeling them as unknown. If the program reads goobye then the loop breaks and the program ends.

## Testing Results

To test this program I used valid inputs such as "DOG", "CAT", and "TIGER". I also tested invalid inputs such as "COW" and "MOOSE". I used the animals-input to test if the program worked when faced with a broad input of different animal types.

## Challenges and Solutions
I had some trouble getting the program to read the animal names from the animals-input file and print the correct type for each one.

## Resources
I used ChatGPT to help me in the process of uploading my program to github.
## License
This project is part of coursework for Chapman University and is intended for educational purposes.
