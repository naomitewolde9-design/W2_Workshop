# Requirements and Conceptual Model
Alondra, Corey, Naomi, Victoria 

SHEET 1: CLIENT INFORMATION: Excel sheet columns(in order): Appointment_ID, Client_ID, Client_First_Last_name, Dog_ID, Appointment_time, Appointment_m/dd/yyyy, Phone_Number, Email, Address, Emergency_contact

SHEET 2: DOG INFORMATION: Excel sheet columns (in order): Appointment_ID, Dog_ID, Dog_name, Breed, Age, Size(small, med, large), Special_Notes(allergies, behavior), Client_ID(links to owner)

SHEET 3: APPOINTMENT INFORMATION: Excel sheet colums (in order): Appointment_ID, Dog_ID, Client_ID, Date, Start_Time, Duration(minutes), Route, FEE, Completed (y/n)

BRAINSTORMING NOTES:( don't forget to keep spacing in between each note so when you commit changes it looks organized and clean)

# Logical Model

- Naomi: She needs to be able to clearly see client information, dog information, and appointment information, Client/dog/and appointment ID's need to be consistent throughout each sheet/table so that all the information can be tracked. 

# Ex2B Brainstorming ERD:

- I looked at our ERD's and we all have our ERD's sectioned out with the column information as well as the PK(primary keys) and FK(Foriegn keys).(Naomi)

- When Victoria used chatgpt it only showed 2 relationships from the information, for example "One client has many dogs(1:M)" and my ERD has a list of 3 like the relationship between the tables with the appointments, client, and dog ID's.(Naomi)
