-- Query for add a new character functionality with hashtag # character being used to 
-- denote the variables that will have data from the backend programming language 
--- Select Age Group for dropdown population for Participants, Activities, 
SELECT age_group_id,
    description
FROM Age_Groups;
--- Select Locations & Volunteers dropdown population for Activities
SELECT location_id,
    name
FROM Locations;
SELECT volunteer_id,
    name
FROM Volunteers;
--- Select Participants & Activities dropdown population for Activity_Enrollments
SELECT participant_id,
    name
FROM Participants;
SELECT activity_id,
    name
FROM Activities;
/********** Participants **********/
--- Dispaly Table: Select all Participants including ID, Age Group, Name & Address ---
SELECT participant_id,
    name,
    address
FROM Participants
    INNER JOIN Age_Groups ON Age_Groups.age_group_id = Participants.age_group_id
ORDER BY participant_id ASC;
--- Create New Participants ---
INSERT INTO Participants (age_group_id, name, address)
VALUES (
        #age_group_description_dropdown_input, concat(#fname, #lname) AS #name, #address);
        --- Update Existing Participants ---
        UPDATE Participants
        SET name = concat(
                #fname, #lname) AS #name,
                age_group_id = #age_group_description_dropdown_input,
                address = #address
                WHERE participant_id = #participant_id_from_edit_form_button;
                    --- Delete Existing Participants ---
                DELETE FROM Participants
                WHERE participant_id = #participant_id_from_delete_form_button;
                    /********** Volunteers **********/
                    --- Display Table: Select all Volunteers including ID, Name, email & role ---
                SELECT volunteer_id,
                    name,
                    email,
                    role
                FROM Volunteers
                ORDER BY participant_id ASC;
--- Create New Volunteers ---
INSERT INTO Volunteers (name, email, role)
VALUES (
        #name, #email, #role_dropdown_input);
        --- Update Existing Volunteers ---
        UPDATE Volunteers
        SET name = #name,
            email = #email,
            role = #role_dropdown_input
        WHERE participant_id = #participant_id_from_edit_form_button;
            --- Delete Existing Volunteers ---
        DELETE FROM Volunteers
        WHERE volunteer_id = #volunteer_id_from_delete_form_button;
            /********** Age_Groups **********/
            --- Display Table: Select all Age_Groups including ID & description ---
        SELECT age_group_id,
            description
        FROM Age_Groups
        ORDER BY age_group_id ASC;
--- Create New Volunteers ---
INSERT INTO Age_Groups (description)
VALUES (
        #description);
        --- Update Existing Age_Groups ---
        UPDATE Age_Groups
        SET description = #description
        WHERE age_group_id = #age_group_id_from_edit_form_button;
            --- Delete Existing Age_Groups ---
        DELETE FROM Age_Groups
        WHERE age_group_id = #age_group_id_from_delete_form_button;
            /********** Activities **********/
            --- Select all Activities including ID, Location, Volunteer, Age Group, Name, Description & Max Participants ---
        SELECT Locations.name AS Location,
            Volunteers.name AS Volunteer,
            Age_Groups.description AS Age_Group,
            name,
            description,
            max_participants
        FROM Activities
            INNER JOIN Locations ON Locations.location_id = Activities.location_id
            INNER JOIN Volunteers ON Volunteers.volunteer_id = Activities.volunteer_id
            INNER JOIN Age_Groups ON Age_Groups.age_group_id = Activities.age_group_id
        ORDER BY activity_id ASC;
--- Create New Activities ---
INSERT INTO Activities (
        Location,
        Volunteer,
        Age_Group,
        name,
        description,
        max_participants
    )
VALUES (
        #description);
        --- Update Existing Age_Groups ---
        UPDATE Age_Groups
        SET description = #description
        WHERE age_group_id = #age_group_id_from_edit_form_button;
            --- Delete Existing Age_Groups ---
        DELETE FROM Age_Groups
        WHERE age_group_id = #age_group_id_from_delete_form_button;
            /********** Activities **********/
            --- Select all Activities including ID, Location, Volunteer, Age Group, Name, Description & Max Participants ---
        SELECT Locations.name AS Location,
            Volunteers.name AS Volunteer,
            Age_Groups.description AS Age_Group,
            name,
            description,
            max_participants
        FROM Activities
            INNER JOIN Locations ON Locations.location_id = Activities.location_id
            INNER JOIN Volunteers ON Volunteers.volunteer_id = Activities.volunteer_id
            INNER JOIN Age_Groups ON Age_Groups.age_group_id = Activities.age_group_id
        ORDER BY activity_id ASC;
--- Create New Acivities ---
INSERT INTO Activities (
        Location,
        Volunteer,
        Age_Group,
        name,
        description,
        max_participants
    )
VALUES (
        #location_name_dropdown_input,
        #volunteer_name_dropdown_input,
        #age_group_description_dropdown_input,
        #name,
        #description,
        #max_participants
    );
--- Update Existing Activities ---
UPDATE Activities
SET Location = #location_name_dropdown_input,
    Volunteer = #volunteer_name_dropdown_input,
    Age_Group = #age_group_description_dropdown_input,
    name = #name,
    description = #description,
    max_participants = #max_participants
WHERE activity_id = #activity_id_from_edit_form_button;
    --- Delete Existing Activities ---
DELETE FROM Activities
WHERE activity_id = #activity_id_from_delete_form_button;
    /********** Activity_Enrollments **********/
    --- Dispaly Table: Select all Activity_Enrollments including ID, Participant & Activity ---
SELECT enrollment_id,
    Participants.name as Participant,
    Activities.name as Activity
FROM Activity_Enrollments
    INNER JOIN Participants ON Participants.participant_id = Activity_Enrollments.participant_id
    INNER JOIN Activities ON Activities.activity_id = Activity_Enrollments.activity_id
ORDER BY enrollment_id ASC;
--- Create New Activity_Enrollments ---
INSERT INTO Activity_Enrollments (Participant, Activity)
VALUES (
        #participant_name_dropdown_input, 
        #activity_name_dropdown_input
    );
--- Update Existing Activity_Enrollments ---
UPDATE Activity_Enrollments
SET Participant = #participant_name_dropdown_input,
    Activity = #activity_name_dropdown_input
WHERE enrollment_id = #enrollment_id_from_edit_form_button;
    --- Delete Existing Activity_Enrollments ---
DELETE FROM Activity_Enrollments
WHERE enrollment_id = #enrollment_id_from_delete_form_button;
    /********** Locations **********/
    --- Display Table: Select all Locations including ID, name & address ---
SELECT location_id,
    name,
    address
FROM Locations
ORDER BY location_id ASC;
--- Create New Volunteers ---
INSERT INTO Locations (name, address)
VALUES (
        #name, #address);
        --- Update Existing Locations ---
        UPDATE Locations
        SET name = #name,
            address = #address
        WHERE location_id = #location_id_from_edit_form_button;
            --- Delete Existing Locations ---
        DELETE FROM Locations
        WHERE location_id = #location_id_from_delete_form_button;