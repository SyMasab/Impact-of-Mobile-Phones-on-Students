create database MobileImpact;
use mobileimpact;

create table Students_Data(
Name varchar(80) unique,
age int check (age >=21 AND age <= 25),
Gender varchar(70) default 'Male/Female',
Student_ID int auto_increment primary key
);

create table Students_Mobiles(
MobielPhone varchar(70) default 'Yes/No',
Mobile0S varchar(60),
Activity varchar(40),
Students_PhoneNO int UNIQUE
);

ALTER table Students_mobiles
change column MobielPhone 	;

ALTER table Students_mobiles
change column Mobile0S MobileOS varchar(60);


CREATE TABLE Daily_Usage (
    EducationalApps VARCHAR(60),
    DailyUsage VARCHAR(20) CHECK (DailyUsage IN ('2-4 hours', '4-6 hours', '< 2 hours', '> 6 hours')),
    PerformanceImpact VARCHAR(60) CHECK (PerformanceImpact IN ('Agree', 'StronglyAgree', 'Disagree', 'StronglyDisagree', 'Neutral')) DEFAULT 'Neutral',
    UsageDistraction VARCHAR(70) NOT NULL,
    Attention_Span VARCHAR(50) CHECK (Attention_Span IN ('Yes', 'No')) DEFAULT 'Yes',
    Useful_Feature VARCHAR(40),
    Students_Phone_model_NO INT UNIQUE
);

DROP TABLE daily_usage;
SHOW tables;
CREATE TABLE Students_Health(
HealthRisk varchar(70) default'Yes/No',
Usage_Symptoms varchar(55),
Symptoms varchar(60) default 'Never/Sometime/Frequently/Rarely',
Health_Precautions varchar(80),
Health_Rating decimal(4,2) check(Health_Rating between 0 and 100)
);

alter table Students_Health ADD column
Students_Health_card_NO int primary key; 

show tables;
select * FROM Students_data;
INSERT INTO Students_Data (Name, age, Gender, Beneficial_subjects) VALUES
('Bilal', 21, 'Male', 'Browsing Material'),
('Hammad', 21, 'Male', 'Browsing Material'),
('Abdullah', 21, 'Male', 'Research'),
('Waqar', 21, 'Male', 'Browsing Material'),
('Aammar', 21, 'Male', 'Research'),
('Fatima', 21, 'Female', 'Research'),
('Jehanzaib', 21, 'Male', 'Research'),
('Shafiq', 21, 'Male', 'Research'),
('Mubashir', 21, 'Male', 'Research'),
('Asad', 21, 'Male', 'Research'),
('Wasid', 21, 'Male', 'Research'),
('Waqas', 21, 'Male', 'Research'),
('Aqsa', 21, 'Female', 'Research'),
('Saleem', 21, 'Male', 'Browsing Material'),
('Farhan', 21, 'Male', 'Research'),
('Zeeshan', 21, 'Male', 'Browsing Material'),
('Mukhtar', 21, 'Male', 'Research'),
('Rabia', 21, 'Female', 'Research'),
('Maryam', 25, 'Female', 'Research'),
('Irfan', 21, 'Male', 'Research'),
('Mudassar', 21, 'Male', 'Research'),
('Shahzad', 21, 'Male', 'Research'),
('Hasinain', 21, 'Male', 'Research'),
('Samia', 21, 'Female', 'Research'),
('Hassan', 21, 'Male', 'Research'),
('Hamayhoon', 21, 'Male', 'Research'),
('Abid', 21, 'Male', 'Research'),
('Fasial', 21, 'Male', 'Browsing Material'),
('Yaqoob', 21, 'Male', 'Research'),
('Sakina', 21, 'Female', 'Research'),
('Sania', 21, 'Female', 'Research'),
('Mursaleen', 21, 'Male', 'Research'),
('Sohail', 21, 'Male', 'Research'),
('Qadir', 21, 'Male', 'Research'),
('Tariq', 21, 'Male', 'Research'),
('Shakir', 21, 'Male', 'Research'),
('Nafees', 21, 'Male', 'Research'),  -- Adjusted age from 24 to 21
('Assraa', 25, 'Male', 'Research'),
('Saman', 25, 'Female', 'Research'),
('Farouk', 25, 'Male', 'Research'),
('Haroon', 21, 'Male', 'Research'),
('Ahmed', 21, 'Male', 'Research'),
('Hashim', 25, 'Male', 'Research'),
('Saad', 21, 'Male', 'Research'),
('Ameer', 25, 'Male', 'Research'),
('Mishba', 21, 'Female', 'Research'),
('Maria', 21, 'Female', 'Research'),
('Ghazala', 21, 'Female', 'Research'),
('Amir', 21, 'Male', 'Research'),
('Irsh', 21, 'Female', 'Research'),
('Abrar', 21, 'Male', 'Research'),
('Ramzan', 21, 'Male', 'Research'),
('Sultan', 21, 'Male', 'Research'),
('Kausar', 25, 'Female', 'Research'),
('Sabir', 25, 'Male', 'Research'),
('Sajid', 21, 'Male', 'Research'),  -- Adjusted age from 23 to 21
('Humara', 21, 'Female', 'Research'),
('Aryan', 21, 'Male', 'Research'),
('Fahad', 21, 'Male', 'Research'),  -- Adjusted age from 24 to 21
('Mahoob', 21, 'Male', 'Research'),
('Afsar', 21, 'Male', 'Research'),  -- Adjusted age from 22 to 21
('Tufail', 21, 'Male', 'Research'),
('Asfar', 21, 'Male', 'Research'),
('Ibhraim', 25, 'Male', 'Research'),
('Jinnah', 21, 'Male', 'Research'),  -- Adjusted age from 20 to 21
('Haseem', 25, 'Male', 'Research'),
('Usman', 21, 'Male', 'Research'),
('Qasim', 21, 'Male', 'Research'),
('Jawed', 25, 'Male', 'Research'),
('Jamshid', 25, 'Male', 'Research'),
('Nazir', 21, 'Male', 'Research'),
('Shabir', 21, 'Male', 'Research'),
('Bashir', 21, 'Male', 'Research'),
('Rehan', 21, 'Male', 'Research'),
('Fayaz', 21, 'Male', 'Research'),
('Mahmood', 21, 'Male', 'Research'),
('Khurram', 21, 'Male', 'Research'),
('Zulfiqar', 21, 'Male', 'Research'),
('Amina', 21, 'Female', 'Research'),  -- Adjusted age from 20 to 21
('Rafia', 21, 'Female', 'Research'),  -- Adjusted age from 20 to 21
('Javid', 21, 'Male', 'Research'),
('Arslan', 21, 'Male', 'Research'),
('Malik', 21, 'Male', 'Research'),
('Ahsan', 21, 'Male', 'Research'),
('Bhatti', 21, 'Male', 'Research'),
('Sayed', 25, 'Male', 'Research'),
('Tahir', 21, 'Male', 'Research'),
('Qasir', 21, 'Male', 'Research'),  -- Adjusted age from 20 to 21
('Abbas', 21, 'Male', 'Research'),
('Iftikhar', 21, 'Male', 'Research'),
('Ehman', 21, 'Female', 'Research'),
('Imran', 21, 'Male', 'Research'),  -- Adjusted age from 20 to 21
('Zahoor', 21, 'Male', 'Research'),
('Hafeez', 21, 'Male', 'Research'),  -- Adjusted age from 20 to 21
('Babar', 21, 'Male', 'Research'),  -- Adjusted age from 20 to 21
('Rizwan', 21, 'Male', 'Research');  -- Adjusted age from 20 to 21

select * from Students_mobiles;
-- Insert records --
INSERT INTO Students_Mobiles (MobilePhone, MobileOS, Activity, Students_PhoneNO) VALUES
('Yes', 'Android', 'Social Media', 128566932),
('Yes', 'Android', 'Social Media', 974923230),
('Yes', 'IOS', 'All of these', 293350042),
('Yes', 'Android', 'All of these', 128566933),
('Yes', 'IOS', 'All of these', 974923231),
('Yes', 'Android', 'All of these', 293350043),
('Yes', 'IOS', 'All of these', 128566934),
('Yes', 'Android', 'All of these', 974923232),
('Yes', 'Android', 'Social Media;All of these', 293350044),
('Yes', 'Android', 'All of these', 128566935),
('Yes', 'Android', 'All of these', 974923233),
('Yes', 'IOS', 'Social Media', 293350045),
('Yes', 'Android', 'Web-browsing', 128566936),
('Yes', 'Android', 'All of these', 974923234),
('Yes', 'Android', 'All of these', 293350046),
('Yes', 'Android', 'All of these', 128566937),
('Yes', 'Android', 'All of these', 974923235),
('Yes', 'IOS', 'All of these', 293350047),
('Yes', 'Android', 'All of these', 128566938),
('Yes', 'Android', 'All of these', 974923236),
('Yes', 'Android', 'All of these', 293350048),
('Yes', 'Android', 'All of these', 128566939),
('Yes', 'Android', 'Social Media', 974923237),
('Yes', 'Android', 'Social Media', 293350049),
('Yes', 'Android', 'All of these', 128566940),
('Yes', 'Android', 'Social Media', 974923238),
('Yes', 'Android', 'Social Media', 293350050),
('Yes', 'IOS', 'All of these', 128566941),
('Yes', 'IOS', 'Social Media', 974923239),
('Yes', 'IOS', 'All of these', 293350051),
('Yes', 'Android', 'All of these', 128566942),
('Yes', 'Android', 'Social Media', 974923240),
('Yes', 'IOS', 'All of these', 293350052),
('Yes', 'Android', 'All of these', 128566943),
('Yes', 'Android', 'All of these', 974923241),
('Yes', 'Android', 'Social Media', 293350053),
('Yes', 'Android', 'All of these', 128566944),
('Yes', 'Android', 'All of these', 974923242),
('Yes', 'Android', 'Social Media', 293350054),
('Yes', 'Android', 'Social Media', 128566945),
('Yes', 'Android', 'Social Media', 974923243),
('Yes', 'Android', 'All of these', 293350055),
('Yes', 'Android', 'All of these', 128566946),
('Yes', 'Android', 'All of these', 974923244),
('Yes', 'Android', 'All of these', 293350056),
('Yes', 'Android', 'All of these', 128566947),
('Yes', 'Android', 'Web-browsing', 974923245),
('Yes', 'Android', 'All of these', 293350057),
('Yes', 'Android', 'All of these', 128566948),
('Yes', 'Android', 'Social Media', 974923246),
('Yes', 'Android', 'All of these', 293350058),
('Yes', 'Android', 'All of these', 128566949),
('Yes', 'Android', 'Social Media', 974923247),
('Yes', 'Android', 'All of these', 293350059),
('Yes', 'Android', 'All of these', 128566950),
('Yes', 'Android', 'Social Media', 974923248),
('Yes', 'Android', 'All of these', 293350060),
('Yes', 'Android', 'All of these', 128566951),
('Yes', 'Android', 'All of these', 974923249),
('Yes', 'Android', 'All of these', 293350061),
('Yes', 'IOS', 'All of these', 128566952),
('Yes', 'IOS', 'All of these', 974923250),
('Yes', 'Android', 'All of these', 293350062),
('Yes', 'Android', 'All of these', 128566953),
('Yes', 'Android', 'Messaging', 974923251),
('Yes', 'Android', 'All of these', 293350063),
('Yes', 'Android', 'All of these', 128566954),
('Yes', 'Android', 'All of these', 974923252),
('Yes', 'Android', 'All of these', 293350064),
('Yes', 'Android', 'All of these', 128566955),
('Yes', 'Android', 'All of these', 974923253),
('Yes', 'Android', 'All of these', 293350065);


ALTER TABLE Daily_Usage
MODIFY Students_Phone_model_NO BIGINT;

-- Insert data
INSERT INTO Daily_Usage (EducationalApps, DailyUsage, PerformanceImpact, UsageDistraction, Attention_Span, Useful_Feature, Students_Phone_model_NO) VALUES
('Educational Videos', '4-6 hours', 'Agree', 'During Exams', 'Yes', 'camera', 343344),
('Educational Videos', '4-6 hours', 'Neutral', 'During Exams', 'Yes', 'camera', 423454),
('Educational Videos', '4-6 hours', 'StronglyAgree', 'Not Distracting', 'No', 'camera', 64565),
('Educational Videos', '2-4 hours', 'StronglyAgree', 'During Class Lectures', 'No', 'camera', 45534),
('Educational Videos', '> 6 hours', 'Agree', 'While Studying', 'Yes', 'camera', 455655),
('Educational Videos', '> 6 hours', 'Neutral', 'Not Distracting', 'Yes', 'camera', 4675),
('Study Planner', '4-6 hours', 'Agree', 'Not Distracting', 'Yes', 'camera', 6345),
('Educational Videos', '2-4 hours', 'StronglyDisagree', 'While Studying', 'Yes', 'camera', 476755),
('Study Planner', '4-6 hours', 'Agree', 'During Class Lectures', 'No', 'camera', 565634),
('Educational Videos', '2-4 hours', 'Agree', 'During Class Lectures', 'Yes', 'camera', 634234),
('Educational Videos', '4-6 hours', 'Agree', 'During Class Lectures', 'Yes', 'camera', 56345),
('Educational Videos', '> 6 hours', 'Neutral', 'During Class Lectures', 'Yes', 'camera', 523646),
('Study Planner', '2-4 hours', 'Agree', 'During Exams', 'Yes', 'camera', 734545),
('Educational Videos', '> 6 hours', 'Neutral', 'While Studying', 'Yes', 'camera', 521456),
('Study Planner', '2-4 hours', 'Agree', 'During Exams', 'Yes', 'camera', 425456),
('Educational Videos', '2-4 hours', 'Agree', 'During Exams', 'Yes', 'camera', 987646),
('Productivity Tools', '> 6 hours', 'Agree', 'Not Distracting', 'No', 'camera', 774646),
('Language', '4-6 hours', 'Neutral', 'While Studying', 'Yes', 'camera', 787845),
('Educational Videos', '> 6 hours', 'Agree', 'During Class Lectures', 'Yes', 'camera', 796766),
('Productivity Tools', '4-6 hours', 'StronglyAgree', 'While Studying', 'Yes', 'camera', 457567),
('Educational Videos', '2-4 hours', 'Disagree', 'Not Distracting', 'Yes', 'camera', 6568687),
('Educational Videos', '> 6 hours', 'StronglyDisagree', 'During Class Lectures', 'No', 'camera', 54656),
('Educational Videos', '2-4 hours', 'StronglyAgree', 'Not Distracting', 'No', 'camera', 89978),
('Educational Videos', '4-6 hours', 'Neutral', 'While Studying', 'No', 'camera', 667788),
('Educational Videos', '4-6 hours', 'Neutral', 'During Exams', 'Yes', 'camera', 23455),
('Study Planner', '4-6 hours', 'Neutral', 'While Studying', 'Yes', 'camera', 68898),
('Educational Videos', '< 2 hours', 'Agree', 'While Studying', 'Yes', 'camera', 698563),
('Educational Videos', '4-6 hours', 'Neutral', 'While Studying', 'No', 'camera', 89635),
('Language', '< 2 hours', 'StronglyDisagree', 'During Class Lectures', 'Yes', 'camera', 63453),
('Productivity Tools', '4-6 hours', 'Disagree', 'During Class Lectures', 'Yes', 'camera', 977566),
('Educational Videos', '4-6 hours', 'Agree', 'While Studying', 'Yes', 'camera', 674563),
('Educational Videos', '4-6 hours', 'Agree', 'During Class Lectures', 'No', 'camera', 235767),
('Educational Videos', '4-6 hours', 'Agree', 'While Studying', 'No', 'camera', 798886),
('Study Planner', '> 6 hours', 'StronglyAgree', 'Not Distracting', 'Yes', 'camera', 523456),
('Study Planner', '2-4 hours', 'Agree', 'While Studying', 'Yes', 'camera', 897967),
('Study Planner', '< 2 hours', 'Neutral', 'Not Distracting', 'No', 'camera', 45256),
('Educational Videos', '4-6 hours', 'Agree', 'During Class Lectures', 'No', 'camera', 7868),
('Productivity Tools', '4-6 hours', 'Disagree', 'During Class Lectures', 'Yes', 'camera', 35464),
('Educational Videos', '> 6 hours', 'Neutral', 'While Studying', 'Yes', 'camera', 768775),
('Productivity Tools', '2-4 hours', 'StronglyDisagree', 'While Studying', 'Yes', 'camera', 544564),
('Language', '> 6 hours', 'StronglyDisagree', 'While Studying', 'Yes', 'camera', 345345),
('Language', '> 6 hours', 'Neutral', 'Not Distracting', 'No', 'camera', 548645),
('Educational Videos', '2-4 hours', 'Agree', 'Not Distracting', 'Yes', 'camera', 534768),
('Educational Videos', '2-4 hours', 'Agree', 'While Studying', 'Yes', 'camera', 76888),
('Language', '4-6 hours', 'Agree', 'During Exams', 'No', 'camera', 876867),
('Educational Videos', '4-6 hours', 'Neutral', 'While Studying', 'Yes', 'camera', 567768),
('Educational Videos', '4-6 hours', 'Agree', 'During Class Lectures', 'No', 'camera', 476878),
('Productivity Tools', '4-6 hours', 'Neutral', 'While Studying', 'Yes', 'camera', 645456),
('Study Planner', '> 6 hours', 'StronglyAgree', 'During Class Lectures', 'Yes', 'camera', 757757),
('Educational Videos', '4-6 hours', 'Disagree', 'While Studying', 'No', 'camera', 887867),
('Educational Videos', '> 6 hours', 'Neutral', 'Not Distracting', 'No', 'camera', 576767),
('Educational Videos', '4-6 hours', 'Agree', 'Not Distracting', 'Yes', 'camera', 555565),
('Study Planner', '> 6 hours', 'StronglyDisagree', 'During Class Lectures', 'Yes', 'camera', 787687),
('Language', '> 6 hours', 'StronglyDisagree', 'Not Distracting', 'Yes', 'camera', 56565),
('Language', '4-6 hours', 'Agree', 'During Class Lectures', 'Yes', 'camera', 767686),
('Productivity Tools', '2-4 hours', 'StronglyAgree', 'Not Distracting', 'No', 'camera', 354534),
('Productivity Tools', '4-6 hours', 'Agree', 'While Studying', 'Yes', 'camera', 645545),
('Language', '2-4 hours', 'StronglyDisagree', 'During Exams', 'Yes', 'camera', 233434),
('Productivity Tools', '2-4 hours', 'StronglyAgree', 'While Studying', 'Yes', 'camera', 324346),
('Educational Videos', '2-4 hours', 'Agree', 'While Studying', 'Yes', 'camera', 434897),
('Study Planner', '4-6 hours', 'Agree', 'During Class Lectures', 'Yes', 'camera', 56942),
('Educational Videos', '4-6 hours', 'Disagree', 'While Studying', 'Yes', 'camera', 768535),
('Language', '< 2 hours', 'Agree', 'While Studying', 'No', 'camera', 3678),
('Language', '2-4 hours', 'Neutral', 'During Class Lectures', 'No', 'camera', 269878),
('Study Planner', '4-6 hours', 'StronglyAgree', 'During Exams', 'Yes', 'camera', 53672),
('Educational Videos', '2-4 hours', 'Agree', 'During Class Lectures', 'No', 'camera', 785845),
('Language', '4-6 hours', 'Agree', 'During Exams', 'Yes', 'camera', 645645),
('Language', '2-4 hours', 'StronglyDisagree', 'While Studying', 'No', 'camera', 567867),
('Educational Videos', '< 2 hours', 'Agree', 'While Studying', 'Yes', 'camera', 546784),
('Educational Videos', '2-4 hours', 'Neutral', 'Not Distracting', 'Yes', 'camera', 355666),
('Educational Videos', '2-4 hours', 'Disagree', 'During Class Lectures', 'No', 'camera', 35788),
('Educational Videos', '4-6 hours', 'Neutral', 'During Exams', 'No', 'camera', 356234),
('Study Planner', '2-4 hours', 'Agree', 'While Studying', 'Yes', 'camera', 687878),
('Educational Videos', '2-4 hours', 'Neutral', 'During Exams', 'Yes', 'camera', 976877),
('Educational Videos', '4-6 hours', 'Neutral', 'Not Distracting', 'Yes', 'camera', 789564);



INSERT INTO Students_Health (
    HealthRisk, 
    Usage_Symptoms, 
    Symptoms, 
    Health_Precautions, 
    Health_Rating, 
    Students_Health_card_NO
) VALUES
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 101),
('Yes', 'All of these', 'Sometimes', 'Taking Break during prolonged use', 85.00, 102),
('Yes', 'All of these', 'Sometimes', 'None of Above', 90.00, 103),
('Only Partially', 'All of these', 'Never', 'Limiting Screen Time', 90.00, 104),
('No', 'Sleep disturbance', 'Sometimes', 'None of Above', 90.00, 105),
('Only Partially', 'Headache', 'Sometimes', 'None of Above', 80.00, 106),
('No', 'Sleep disturbance', 'Sometimes', 'None of Above', 75.00, 107),
('Only Partially', 'Headache', 'Frequently', 'None of Above', 90.00, 108),
('Only Partially', 'Sleep disturbance', 'Sometimes', 'None of Above', 85.00, 109),
('Only Partially', 'Sleep disturbance', 'Sometimes', 'Limiting Screen Time', 80.00, 110),
('Yes', 'Anxiety or Stress', 'Sometimes', 'Taking Break during prolonged use', 90.00, 111),
('Yes', 'Headache', 'Never', 'Limiting Screen Time', 90.00, 112),
('Only Partially', 'All of these', 'Sometimes', 'Using Blue light filter', 70.00, 113),
('Yes', 'Sleep disturbance', 'Sometimes', 'Limiting Screen Time', 90.00, 114),
('Yes', 'All of these', 'Sometimes', 'Using Blue light filter', 85.00, 115),
('Yes', 'Sleep disturbance;Anxiety or Stress', 'Rarely', 'None of Above', 80.00, 116),
('Only Partially', 'Headache', 'Sometimes', 'Limiting Screen Time', 80.00, 117),
('Yes', 'All of these', 'Frequently', 'None of Above', 75.00, 118),
('Only Partially', 'Sleep disturbance;Anxiety or Stress', 'Sometimes', 'Limiting Screen Time', 80.00, 119),
('No', 'Sleep disturbance', 'Sometimes', 'Using Blue light filter', 85.00, 120),
('Yes', 'Anxiety or Stress', 'Rarely', 'Taking Break during prolonged use', 75.00, 121),
('Yes', 'Headache', 'Rarely', 'None of Above', 70.00, 122),
('Yes', 'All of these', 'Rarely', 'Taking Break during prolonged use', 85.00, 123),
('Only Partially', 'Headache', 'Sometimes', 'None of Above', 80.00, 124),
('Yes', 'All of these', 'Never', 'Using Blue light filter', 90.00, 125),
('Yes', 'Sleep disturbance', 'Rarely', 'None of Above', 80.00, 126),
('Yes', 'Anxiety or Stress', 'Never', 'Using Blue light filter', 85.00, 127),
('No', 'Sleep disturbance', 'Sometimes', 'None of Above', 75.00, 128),
('Yes', 'All of these', 'Rarely', 'Taking Break during prolonged use', 85.00, 129),
('No', 'Headache', 'Sometimes', 'None of Above', 70.00, 130),
('Yes', 'Sleep disturbance', 'Rarely', 'Using Blue light filter', 85.00, 131),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 132),
('Yes', 'All of these', 'Sometimes', 'None of Above', 85.00, 133),
('Yes', 'Sleep disturbance', 'Frequently', 'None of Above', 75.00, 134),
('No', 'Anxiety or Stress', 'Sometimes', 'Taking Break during prolonged use', 80.00, 135),
('Yes', 'Headache', 'Rarely', 'Using Blue light filter', 85.00, 136),
('Yes', 'All of these', 'Never', 'Limiting Screen Time', 90.00, 137),
('Yes', 'Sleep disturbance', 'Sometimes', 'Taking Break during prolonged use', 80.00, 138),
('No', 'Headache', 'Never', 'Using Blue light filter', 85.00, 139),
('Yes', 'Anxiety or Stress', 'Never', 'Using Blue light filter', 90.00, 140),
('No', 'Sleep disturbance', 'Sometimes', 'Using Blue light filter', 80.00, 141),
('Yes', 'Headache', 'Sometimes', 'None of Above', 75.00, 142),
('Yes', 'All of these', 'Sometimes', 'Using Blue light filter', 85.00, 143),
('Yes', 'Sleep disturbance', 'Never', 'Using Blue light filter', 90.00, 144),
('Yes', 'All of these', 'Sometimes', 'Limiting Screen Time', 80.00, 145),
('No', 'Anxiety or Stress', 'Rarely', 'Using Blue light filter', 75.00, 146),
('Yes', 'Headache', 'Sometimes', 'Taking Break during prolonged use', 80.00, 147),
('Yes', 'Sleep disturbance', 'Sometimes', 'None of Above', 80.00, 148),
('No', 'Headache', 'Rarely', 'Taking Break during prolonged use', 75.00, 149),
('Yes', 'All of these', 'Never', 'Using Blue light filter', 90.00, 150),
('Yes', 'Sleep disturbance', 'Sometimes', 'None of Above', 85.00, 151),
('Yes', 'All of these', 'Sometimes', 'Taking Break during prolonged use', 80.00, 152),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 153),
('Yes', 'All of these', 'Sometimes', 'Limiting Screen Time', 80.00, 154),
('No', 'Sleep disturbance', 'Sometimes', 'Taking Break during prolonged use', 75.00, 155),
('Yes', 'Anxiety or Stress', 'Rarely', 'None of Above', 80.00, 156),
('Yes', 'Headache', 'Sometimes', 'None of Above', 75.00, 157),
('Yes', 'All of these', 'Sometimes', 'Limiting Screen Time', 85.00, 158),
('Yes', 'Sleep disturbance', 'Never', 'Limiting Screen Time', 80.00, 159),
('No', 'Headache', 'Rarely', 'Using Blue light filter', 85.00, 160),
('Yes', 'All of these', 'Never', 'Using Blue light filter', 90.00, 161),
('No', 'Anxiety or Stress', 'Rarely', 'Taking Break during prolonged use', 75.00, 162),
('Yes', 'Headache', 'Never', 'Limiting Screen Time', 90.00, 163),
('Yes', 'Sleep disturbance', 'Never', 'Using Blue light filter', 85.00, 164),
('Yes', 'All of these', 'Sometimes', 'Using Blue light filter', 80.00, 165),
('Yes', 'Sleep disturbance', 'Sometimes', 'Limiting Screen Time', 80.00, 166),
('No', 'Sleep disturbance', 'Sometimes', 'Using Blue light filter', 75.00, 167),
('No', 'All of these', 'Rarely', 'None of Above', 70.00, 179),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 180),
('Yes', 'Sleep disturbance', 'Sometimes', 'Using Blue light filter', 80.00, 181),
('Yes', 'Anxiety or Stress', 'Rarely', 'Taking Break during prolonged use', 75.00, 182),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 183),
('Yes', 'All of these', 'Sometimes', 'None of Above', 85.00, 184),
('No', 'Sleep disturbance', 'Rarely', 'Limiting Screen Time', 75.00, 185),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 186),
('Yes', 'All of these', 'Sometimes', 'Using Blue light filter', 80.00, 187),
('Yes', 'Sleep disturbance', 'Never', 'Using Blue light filter', 85.00, 188),
('Yes', 'Anxiety or Stress', 'Rarely', 'Taking Break during prolonged use', 75.00, 189),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 190),
('No', 'Sleep disturbance', 'Sometimes', 'Using Blue light filter', 80.00, 191),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 192),
('Yes', 'All of these', 'Sometimes', 'Limiting Screen Time', 80.00, 193),
('Yes', 'Sleep disturbance', 'Never', 'Using Blue light filter', 85.00, 194),
('Yes', 'Anxiety or Stress', 'Rarely', 'None of Above', 75.00, 195),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 196),
('Yes', 'Sleep disturbance', 'Rarely', 'Limiting Screen Time', 75.00, 197),
('Yes', 'All of these', 'Sometimes', 'Taking Break during prolonged use', 80.00, 198),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 199),
('Yes', 'All of these', 'Sometimes', 'Limiting Screen Time', 85.00, 200),
('Yes', 'Sleep disturbance', 'Never', 'None of Above', 75.00, 201),
('Yes', 'Anxiety or Stress', 'Sometimes', 'None of Above', 80.00, 202),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 203),
('Yes', 'All of these', 'Sometimes', 'Using Blue light filter', 85.00, 204),
('Yes', 'Sleep disturbance', 'Sometimes', 'Limiting Screen Time', 80.00, 206),
('Yes', 'Headache', 'Never', 'Using Blue light filter', 90.00, 207),
('Yes', 'All of these', 'Sometimes', 'Taking Break during prolonged use', 85.00, 208);

-- Foreign keys--
ALTER table students_data ADD constraint Students_Health_Stats
foreign key (student_ID) references students_health(Students_Health_card_NO);
desc daily_usage;

DROP table daily_usage ;

SET FOREIGN_KEY_CHECKS=0;

select * from daily_usage;

desc daily_usage;

ALTER TABLE Students_Data
MODIFY COLUMN Student_ID INT unique;


SHOW COLUMNS FROM daily_usage;
SHOW COLUMNS FROM students_data;

ALTER table daily_usage
DROP column Students_Phone_model_NO;
ALTER table daily_usage ADD column
Students_Phone_model_NO INT unique;

select * from students_mobiles;
ALTER TABLE daily_usage MODIFY COLUMN Students_phone_model_no BIGINT;
ALTER TABLE Daily_Usage
ADD CONSTRAINT FK_Daily_Usage_Students_Data
FOREIGN KEY (Students_Phone_model_NO) REFERENCES Students_Data(Student_ID);
alter table students_data ADD constraint Student_ScreenTime
foreign key (student_ID) references daily_usage(Students_phone_model_no);

ALTER TABLE students_mobiles ADD constraint FK_Mobile_DATA
foreign key (Students_PhoneNO) references students_data(Student_ID);

ALTER table daily_usage ADD constraint FK_Student_Phone
foreign key (students_phone_model_no) references students_mobiles(students_PhoneNO);

ALTER TABLE students_health ADD constraint FK_Health_Update
foreign key (students_Health_card_NO) references students_mobiles(Students_PhoneNO);


SET FOREIGN_KEY_CHECKS=1;

-- OTHER QUERIES ---
-- Query the names and ages of all students from the Students_Data table.
select Name,age FROM
students_data;

-- Retrieve the names and mobile phone numbers of students from the Students_Data and Students_Mobiles tables.
select name,students_PhoneNO
from students_data,students_mobiles;

-- Find the names of students who have a DailyUsage of '4-6 hours' from the Daily_Usage table.

SELECT name FROM students_data
union
select DailyUsage from daily_usage
WHERE DailyUsage='4-6hours';
  
-- List students who have a higher Health_Rating than the average Health_Rating of all students.

SELECT students_health_card_no, 
       Health_Rating
FROM students_health
WHERE Health_Rating > (
    SELECT AVG(Health_Rating)
    FROM students_health
);

-- Create an index on the Students_Phone_model_NO column in the Daily_Usage table to improve query performance.
select * from daily_usage;
create index students_Phones ON daily_usage(Students_phone_model_no);

-- How would you analyze and optimize a query that retrieves all students with 'StronglyAgree' in PerformanceImpact?
select * from daily_usage;
select PerformanceImpact FROM
daily_usage
WHERE PerformanceImpact='StronglyAgree';

-- Create a stored procedure to insert a new student record into the Students_Data table.
DELIMITER $$

CREATE PROCEDURE InsertStudent(
    IN student_name VARCHAR(80), 
    IN student_age INT, 
    IN student_gender VARCHAR(70)
)
BEGIN
    INSERT INTO Students_Data (Name, age, Gender) 
    VALUES (student_name, student_age, student_gender);
END$$

DELIMITER ;

-- Write a transaction to update a student's Health_Rating and ensure that if it fails, no changes are made.
START TRANSACTION;
UPDATE Students_Health
SET Health_Rating = 85.00
WHERE Students_Health_card_NO = 1;
-- Check for conditions or errors
COMMIT; -- or ROLLBACK if there are errors



