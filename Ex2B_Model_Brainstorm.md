# Requirements and Conceptual Model
Alondra, Corey, Naomi, Victoria 

SHEET 1: CLIENT INFORMATION: Excel sheet columns(in order): Appointment_ID, Client_ID, Client_First_Last_name, Dog_ID, Appointment_time, Appointment_m/dd/yyyy, Phone_Number, Email, Address, Emergency_contact

SHEET 2: DOG INFORMATION: Excel sheet columns (in order): Appointment_ID, Dog_ID, Dog_name, Breed, Age, Size(small, med, large), Special_Notes(allergies, behavior), Client_ID(links to owner)

SHEET 3: APPOINTMENT INFORMATION: Excel sheet colums (in order): Appointment_ID, Dog_ID, Client_ID, Date, Start_Time, Duration(minutes), Route, FEE, Completed (y/n)

BRAINSTORMING NOTES:( don't forget to keep spacing in between each note so when you commit changes it looks organized and clean)

# Logical Model

- Naomi: She needs to be able to clearly see client information, dog information, and appointment information, Client/dog/and appointment ID's need to be consistent throughout each sheet/table so that all the information can be tracked. 


- Victoria: a) Main entities should be Client info, Dog info, Appointment info
  b) attributes in client info - client name
  attributes in dog info - dog ID
  attributes in appointment - appointment ID
  c) all entities have relationships to each other we would gather client name to match to dog id and matching to appointment id
  d) no many to many relationships
  
  - *Corey*: a) The main entities in the database should be: Client, Dog, and Appointment info.
             b) The Attributes should be the first name and last name for the Client (& Client ID), and date, dog ID, Fee,                    status for appointment (& Appointment ID)
             c) The Attributes should be related to each other according to the 3NF standard.
             d) Within our database there will be no many-2-many relationships. only one-2-many.
           

  
# Ex2B Brainstorming ERD:

- I looked at our ERD's and we all have our ERD's sectioned out with the column information as well as the PK(primary keys) and FK(Foreign keys).(Naomi)

- When Victoria used chatGPT it only showed 2 relationships from the information, for example "One client has many dogs(1:M)" and my ERD has a list of 3 like the relationship between the tables with the appointments, client, and dog ID's.(Naomi)

(Victoria Ordonez) 
a) some of the similarities the main three entities Client-Dog-Appointment 
b) there are additional entities in some ERD like Emergency contact and relationship - I beleive that these diffrences are due to the prompts we individually used when using AI. Some cons could be getting information that may not be relevant to what you need in your data but a pro is getting additional information that could potentially be useful. 
