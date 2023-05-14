-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 05:59 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crrs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credential`
--

CREATE TABLE `admin_credential` (
  `admin_no` int(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_information`
--

CREATE TABLE `course_information` (
  `CID` varchar(255) NOT NULL,
  `FIELD` varchar(255) NOT NULL,
  `ACRONYM` varchar(255) NOT NULL,
  `COURSE_NAME` varchar(255) NOT NULL,
  `INFORMATION` text NOT NULL,
  `HEADER_PICTURE` varchar(255) NOT NULL,
  `INTEREST` varchar(255) NOT NULL,
  `DATE_CREATED` varchar(255) NOT NULL,
  `DATE_UPDATED` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information`
--

INSERT INTO `course_information` (`CID`, `FIELD`, `ACRONYM`, `COURSE_NAME`, `INFORMATION`, `HEADER_PICTURE`, `INTEREST`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
('CID_1', 'Formal Sciences', 'BSCS', 'Bachelor of Science in Computer Science', 'Bachelor of Science in Computer Science is a four-year degree program in the Philippines that is generally concerned with the effective use of computation methods to analyze, solve, and come up with practical solutions for different problems, often through the use of computers or computer programs designed to perform specific tasks.', 'BSCS Computer science.jpg', 'Information Technology', '02/02/02', '2023-05-13'),
('CID_10', 'Social Science', 'BS Criminology', 'Bachelor of Science in Criminology', 'The Bachelor of Science in Criminology (BS Crim) is a four-year degree program in the Philippines that is mainly concerned with the nature of crimes and criminals. Taking up this course will help you understand what is crime, how do crimes occur, and what makes people more likely to commit a crime or be a victim of it. It will also teach you how the justice system works, how alleged and convicted criminals should be handled, and the methods that can be used to reform them. ', 'BS CRIMINOLOGY.jpg', 'Law & Public Safety', '04/17/23', ''),
('CID_11', 'Social Science', 'AB Political Science', 'Bachelor of Arts in Political Science', 'Bachelor of Arts in Political Science (AB PS or AB Pol Sci) is a four-year degree program in the Philippines that will help you gain the skills needed to make political and policy analyses that can be used to introduce changes that will be beneficial to both the government and the general public. ', 'AB POLITICAL SCIENCE.jpg', 'Government', '04/17/23', ''),
('CID_12', 'Social Science', 'AB English', 'Bachelor of Arts in English', 'The Bachelor of Arts in English (AB English) is a four-year degree program in the Philippines that will teach you about the structure; development; theories; and applications of languages, and how to use your knowledge of them to write and speak effectively, especially in English. ', 'AB ENGLISH.jpg', 'Education & Training', '04/17/23', ''),
('CID_13', 'Social Science', 'AB Linguistics', 'Bachelor of Arts in Linguistics', 'The Bachelor of Arts in Linguistics (AB Linguistics) is a four-year degree program in the Philippines that will teach you about languages, their origins, development, and their social significance to man. It will also teach you about the structures and properties of languages, and how you can apply the knowledge you\'ll gain from this on a wide variety of fields including sociology, psychology, neuroscience, and computer science to name a few. ', 'AB LINGUISTICS.jpg', 'Education & Training', '04/17/23', ''),
('CID_14', 'Social Science', 'AB Literature', 'Bachelor of Arts in Literature', 'The Bachelor of Arts in Literature (AB Lit) is a four-year degree program in the Philippines that will teach you about the different literatures of the world, their history, forms, structures, modes, techniques, and how you can use your knowledge of them to produce new literary works or review existing ones. ', 'AB LITERATURE.jpg', 'Arts & Communications', '04/17/23', ''),
('CID_15', 'Social Science', 'AB Anthropology', 'Bachelor of Arts in Anthropology', 'The Bachelor of Arts in Anthropology (AB Anthropology) is a four-year degree program in the Philippines that will teach you about the origin and evolution of human beings including gradual changes in their genetic makeup, behavior, languages, and social relations. ', 'AB ANTHROPOLOGY.jpg', 'Human Service', '04/17/23', ''),
('CID_16', 'Social Science', 'AB Sociology', 'Bachelor of Arts in Sociology', 'The Bachelor of Arts in Sociology (AB Sociology) is a four-year degree program in the Philippines that will teach you about human society, its structure, history, development, and how different cultural groups vary from one to another. ', 'AB SOCIOLOGY.jpg', 'Human Service', '04/17/23', ''),
('CID_17', 'Social Science', 'AB Filipino', 'Bachelor of Arts in Filipino', 'Bachelor of Arts in Filipino (ABF) is a four-year degree program that will teach you about the structure of the Filipino language, the things that make it distinct from other languages, literary works that were written in the Filipino language, and how to translate written works from a foreign language to Tagalog and vice versa. ', 'AB FILIPINO.jpg', 'Education & Training', '04/17/23', ''),
('CID_18', 'Social Science', 'BSFS', 'Bachelor of Science in Forensic Science', 'The Bachelor of Forensic Science is a four-year degree program in the Philippines that will train you in using scientific principles and techniques to solve different crimes.', 'BSFS FORENSIC SCIENCE.jpg', 'Law & Public Safety', '04/17/23', ''),
('CID_19', 'Social Science', 'AB Islamic Studies', 'Bachelor of Arts in Islamic Studies', 'The Bachelor of Arts in Islamic Studies (ABIS) is a four-year degree program in the Philippines that is concerned with the study Islam as a way of life in the context of economic, social, cultural, political, and legal aspects. It has two specializations: Political Economy and Islamic Arts and Multimedia Technologies. ', 'AB ISLAMIC STUDIES.jpg', 'Education & Training', '04/17/23', ''),
('CID_2', 'Humanities', 'BA History', 'Bachelor of Arts in History', 'Is a four-year degree program in the Philippines that deals with the study of events from the past. By taking this program you’ll learn about the different civilizations that existed throughout history the people that composed them, their basic structures, their relationship with one another, the transformations they went through, and their roles and impacts on the society we know today. ', 'AB HISTORY.jpg', 'Education & Training', '04/17/23', ''),
('CID_20', 'Natural Sciences', 'BSES', 'Bachelor of Science in Environmental Science', 'The Bachelor of Science in Environmental Science (BSES) is a four-year degree program in the Philippines that is concerned with the environment and the effects of man\'s activities on it. It usually covers such issues as conservation of natural resources, pollution, deforestation, and overpopulation among a couple of others.  ', 'BS ENVIROMENTAL SCIENCE.jpg', 'Agriculture', '04/17/23', ''),
('CID_21', 'Natural Sciences', 'BS Forestry', 'Bachelor of Science in Forestry', 'The Bachelor of Science in Forestry (BS Forestry) is a four-year degree program in the Philippines that will train you in managing the social, economic, and environmental dimensions of forestry resources, performing research that can advance the growth of forestry science, and educating the public of the proper conservation and development of forest resources through extension activities. ', 'BS FORESTRY.jpg', 'Agriculture', '04/17/23', ''),
('CID_22', 'Natural Sciences', 'BSFi', 'Bachelor of Science in Fisheries', 'The Bachelor of Science in Fisheries (BSFi) is a four-year degree program in the Philippines that will train you in aquaculture, capture fisheries, post-harvest fisheries, aquatic ecology, and fisheries- related research. ', 'BS FISHERIES.jpg', 'Agriculture', '04/17/23', ''),
('CID_23', 'Natural Sciences', 'BS Geology', 'Bachelor of Science in Geology', 'The Bachelor of Science in Geology (BS Geology) is a four-year degree program in the Philippines that is concerned with the origins of the earth, its traits and characteristics, composition, and the changes that it goes through. It deals with issues such as pollution and waste disposal, use and conservation of natural resources, and preventing or reducing the harmful effects of natural disasters. ', 'BS GEOLOGY.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_24', 'Natural Sciences', 'BS Biology', 'Bachelor of Science in Biology', 'The Bachelor of Science in Biology (BS Biology) is a four-year degree program in the Philippines that deals with the study of living things. Some of the things that you may learn as a biology student are the forms and structures of living things; their general characteristics; their origins; the places they live in; and their relationship with man, their environment, and with one another. ', 'BS BIOLOGY.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_25', 'Natural Sciences', 'BS Molecular Biology', 'Bachelor of Science in Molecular Biology', 'The Bachelor of Science in Molecular Biology is a four-year degree program in the Philippines that is primarily concerned with identifying, describing, and manipulating the components of cells and organisms including Deoxyribonucleic acid (DNA), Ribonucleic acid (RNA), and proteins. Among its many practical applications are the detection of diseases, gene therapy, in vitro fertilization, and DNA profiling to name a few. ', 'BS Molecular biology.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_26', 'Natural Sciences', 'BS Physics', 'Bachelor of Science in Physics', 'Bachelor of Science in Physics (BS Physics) is a four-year degree program in the Philippines that will teach you about the laws of nature and how to use these laws to understand and explain how the things around us work.', 'BS PHYSICS.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_27', 'Natural Sciences', 'BS Applied Physics', 'Bachelor of Science in Applied Physics', 'Bachelor of Science in Applied Physics (BS Applied Physics) is a four-year degree program in the Philippines that will train you in using the principles of Physics to come up with practical solutions to existing programs in a wide variety of fields including but not limited to medicine, engineering, computer science, and business to name a few. ', 'BS APPLIED PHYSICS.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_28', 'Natural Sciences', 'BS Chemistry', 'Bachelor of Science in Chemistry', 'The Bachelor of Science in Chemistry (BS Chem) is a four-year degree program in the Philippines that will teach you about the study of chemicals, their composition, their properties, the way they react with one another, and how you can use your knowledge of this information to come up with helpful products in a wide variety of fields including medicine, food science, and engineering to name a few.  ', 'BS CHEMISTRY.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_29', 'Formal Sciences', 'BSIT', 'Bachelor of Science in Information Technology', 'The Bachelor of Science in Information Technology (BSIT) is a four-year degree program in the Philippines that deals with the processing and distribution of data with emphasis on its application on businesses. By enrolling in this program, you will learn how to write, design, and maintain computer programs; check them for errors; determine appropriate solutions to fix problems, and rewrite codes to accommodate necessary changes. Since this course is more about the business application of the systems or applications you will create, you may also be taking up a few business subjects such as Accounting and Human Resource Management.  ', 'BSIT Information technology.jpg', 'Information Technology', '04/17/23', ''),
('CID_3', 'Humanities', 'BA Philosophy', 'Bachelor of Arts in Philosophy', 'Is a four-year degree program in the Philippines that is mostly concerned with the underlying principles of reality, knowledge, morality and existence and how they apply in the variety of real-world fields. ', 'AB PHILOSOPHY.jpg', 'Government', '04/17/23', ''),
('CID_30', 'Formal Sciences', 'BSIS', 'Bachelor of Science in Information Systems', 'Bachelor of Science in Information Systems (BSIS) is a four-year degree program in the Philippines that will train you in designing, developing, and managing information systems such as office automation systems, transaction processing systems, transport information systems, navigation systems, and other systems that provide related services. ', 'BSIS Information system.jpg', 'Information Technology', '04/17/23', ''),
('CID_31', 'Formal Sciences', 'BS Mathematics', 'Bachelor of Science in Mathematics', 'Bachelor of Science in Mathematics (BS Math) is a four-year degree program in the Philippines that will expose you to the breadth and depth of mathematical theories, concepts, and applications in order to prepare you for future careers that require critical and analytical thinking skills. ', 'BS MATHEMATICS.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_32', 'Formal Sciences', 'BS Applied Math', 'Bachelor of Science in Applied Mathematics', 'Bachelor of Science in Applied Mathematics (BS Applied Mathematics) is a four-year degree program in the Philippines that will train you in using mathematical theories, concepts, and formulas to come up with practical solutions to problems in the fields of business, engineering, and information technology among other things. ', 'BS APPLIED MATH.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_33', 'Formal Sciences', 'BS Stat', 'Bachelor of Science in Statistics', 'The Bachelor of Science in Statistics (BS Statistics) is a four-year degree program in the Philippines that will teach you about different statistical methods and how to use them to analyze and interpret data. ', 'BS STAT.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_34', 'Professions and Applied Sciences', 'BSA', 'Bachelor of Science in Agriculture', 'The Bachelor of Science in Agriculture (BSA) is a four-year degree program in the Philippines that is concerned with applying the principles of science, ethics, and business management in the production, development, and processing of plants and animals used for food, recreation, industrial, and medical purposes among others. ', 'BSA AGRICULTURE.jpg', 'Agriculture', '04/17/23', ''),
('CID_35', 'Professions and Applied Sciences', 'BSAB', 'Bachelor of Science in Agribusiness', 'The Bachelor of Science in Agribusiness (BSAB) is a four-year degree program in the Philippines that will train you in in the manufacturing and distribution of farm supplies and other related products according to the country\'s bio-physical, socio-cultural, political, economic, and development needs. ', 'BS AGRIBUSINESS.jpg', 'Agriculture', '04/17/23', ''),
('CID_36', 'Professions and Applied Sciences', 'BSAF', 'Bachelor of Science in Agroforestry', 'Bachelor of Science in Agroforestry (BSAF) is a four-year degree program in the Philippines that will train you in producing, managing, and utilizing trees, agricultural crops, animals, and soils for the purpose of conservation and socio-economic productivity. ', 'BS AGROFORESTRY.jpg', 'Agriculture', '04/17/23', ''),
('CID_37', 'Professions and Applied Sciences', 'BS Architecture', 'Bachelor of Science in Architecture', 'The Bachelor of Science in Architecture (BS Architecture) is a five-year degree program in the Philippines that is concerned with the design and planning of architectural structures such as residential and commercial buildings, roads, dams, tunnels, bridges, and the like. By studying Architecture, you will not only learn how to design buildings that are pleasing to the eyes, you will also learn how to plan structures and facilities that are functional, cost-effective, flexible to change, and most importantly, resilient against natural and man-made disasters. ', 'BS ARCHITECTURE.jpg', 'Architecture & Construction', '04/17/23', ''),
('CID_38', 'Professions and Applied Sciences', 'BLA', 'Bachelor in Landscape Architecture', 'Bachelor in Landscape Architecture (BLA) is a four-year degree program in the Philippines that is mainly concerned with the design and planning of land areas. It is closely related with Bachelor of Science in Architecture, although BS Architecture is primarily concerned with the construction of buildings and infrastructures while Bachelor of Landscape Architecture is more focused on the planning and development of the land that surrounds a particular structure. By enrolling in this program, you will not only learn about the visual aspects of architectural design, you will also gain a deeper understanding of the factors that need to be considered when designing and developing land areas such as accessibility, functionality, amenability to future design changes, and overall safety among other things. ', 'BS LANDSCAPE ARCHITECTURE.jpg', 'Architecture & Construction', '04/17/23', ''),
('CID_39', 'Professions and Applied Sciences', 'BS Interior Design', 'Bachelor of Science in Interior Design', 'The Bachelor of Science in Interior Design (BS Interior Design) is a four-year degree program in the Philippines that will teach you about the principles of interior design, space planning, application of colors, basic furniture production, and budget management among other things. ', 'BS INTERIOR DESIGN.jpg', 'Architecture & Construction', '04/17/23', ''),
('CID_4', 'Humanities', 'BFA Industrial Design', 'Bachelor of Fine Arts Major in Industrial Design', 'is a four-year degree program in the Philippines that is primarily concerned with the design and development of usable products as well as the designing packaging and systems. ', 'BFA INDUSTRIAL DESGIN.jpg', 'Architecture & Construction', '04/17/23', ''),
('CID_40', 'Professions and Applied Sciences', 'BSA', 'Bachelor of Science in Accountancy', 'The Bachelor of Science in Accountancy (BSA) is a four-year degree program in the Philippines that is primarily concerned with the effective management of a person\'s, group\'s, or company\'s financial resources including the proper ways of monitoring and documenting the flow of money or goods within the system and the applicable laws related to it. ', 'BS ACCOUNTANCY.jpg', 'Business & Management', '04/17/23', ''),
('CID_41', 'Professions and Applied Sciences', 'BSACT', 'Bachelor of Science in Accounting Technology', 'The Bachelor of Science in Accounting Technology (BSAcT) is a four-year degree program in the Philippines that will train you in maintaining systematic records of business transactions, verifying and recording them, using computers to calculate, prepare and process financial records. ', 'BS ACCOUNTING TECHNOLOGY.jpg', 'Business & Management', '04/17/23', ''),
('CID_42', 'Professions and Applied Sciences', 'BSBA-BE', 'Bachelor of Science in Business Administration Major in Business Economics', 'The Bachelor of Science in Business Administration Major in Business Economics (BSBA- Business Economics) is a four-year business program in the Philippines that is concerned with the various factors that affect businesses. Through this major, you\'ll gain a better understanding of economic development by learning the characteristics and problems of less developed countries, the criteria for growth and development, the obstacles to economic growth, and the policies for promoting it. ', 'BSBA MAJOR IN BUSINESS ECOM.jpg', 'Business & Management', '04/17/23', ''),
('CID_43', 'Professions and Applied Sciences', 'BSBA-FM', 'Bachelor of Science in Business Administration Major in Financial Management', 'The Bachelor of Science in Business Administration Major in Financial Management (BSBA- Financial Management) is a four-year business program in the Philippines that focuses on the financial aspects of managing a business. As a BSBA Financial Management student, you will learn about financial institutions and how they make profits; how prices of goods and services are set; how to manage your assets and liabilities, and the different government regulations that have a direct effect on businesses. ', 'BSBA major in finance management.jpg', 'Business & Management', '04/17/23', ''),
('CID_44', 'Professions and Applied Sciences', 'BSBA – HRDM', 'Bachelor of Science in Business Administration Major in Human Resource Development', 'The Bachelor of Science in Business Administration Major in Human Resource Development Management (BSBA – HRDM) is a four-year business program in the Philippines will prepare you for a career in Human Resource Management (HRM) in various organizations and businesses. HRM is the branch of Business Administration that will teach you how to manage your workforce. This includes teaching you how you can recruit the best individuals for your company, how to prepare them for the tasks they will be expected to perform, and how to help them blend in with their new environment. ', 'BSBA HUMAN RESOURCE.jpg', 'Business & Management', '04/17/23', ''),
('CID_45', 'Professions and Applied Sciences', 'BSBA-MM', 'Bachelor of Science in Business Administration Major in Marketing Management', 'The Bachelor of Science in Business Administration Major in Marketing Management (BSBA- Marketing Management) is a four-year business program in the Philippines that will prepare you for a Marketing career in various organizations and businesses. By enrolling in this program, you will learn how to identify business opportunities, assess their strengths and weaknesses, and devise plans that will help you make more profits while controlling your possible losses at the same time. You will also be taught how to create, introduce, and promote your own products using various tools and techniques ranging from the traditional to the more technologically advanced ones. ', 'BSBA MARKETING MANAGEMENT.jpg', 'Marketing & Sales', '04/17/23', ''),
('CID_46', 'Professions and Applied Sciences', 'BSBA-Operations Management', 'Bachelor of Science in Business Administration Major in Operations Management', 'The Bachelor of Science in Business Administration Major in Operations Management (BSBA-Operations Management) is a four-year degree program in the Philippines that revolves around the day-to-day operation of businesses. This includes the processes involved in the production and distribution of goods, the delivery of services, and managing the equipment and facilities used to run a business. ', 'BSBA OPERATIONS MANAGEMENT.jpg', 'Manufacturing', '04/17/23', ''),
('CID_47', 'Professions and Applied Sciences', 'BS HRM', 'Bachelor of Science in Hotel and Restaurant Management', 'The Bachelor of Science in Hotel and Restaurant Management (BS HRM) is a four-year degree program in the Philippines that will prepare you for working in the hotel and restaurant industry and managing your own hotel and restaurant business someday. With the help of this course, you\'ll learn not only how to manage the day-to-day operations of your hotel or restaurant. You\'ll also learn how to devise plans and strategies that can increase your company\'s profits. ', 'BS HRM HOTEL AND RESTAURANT MANAGEMENT.jpg', 'Hospitality & Tourism', '04/17/23', ''),
('CID_48', 'Professions and Applied Sciences', 'BS Entrep', 'Bachelor of Science in Entrepreneurship', 'The Bachelor of Science in Entrepreneurship (BS Entre) is a four-year degree program in the Philippines that will train you in identifying opportunities, developing and preparing business plans, and starting and managing your own business. ', 'BS ENTREP.jpg', 'Business & Management', '04/17/23', ''),
('CID_49', 'Professions and Applied Sciences', 'BSOA', 'Bachelor of Science in Office Administration', 'Bachelor of Science in Office Administration (BSOA) is a four-year degree program in the Philippines that will train you in performing a wide variety of administrative tasks including but not limited to clerical duties, personnel management, events management, and customer service. ', 'BSOA OFFICE ADMINISTRATOR.jpg', 'Business & Management', '04/17/23', ''),
('CID_5', 'Humanities', 'BFA Painting', 'Bachelor of Fine Arts Major in Painting', 'is a four-year degree program in the Philippines that is concerned with producing artistic representations through the use of paint. This program focuses on developing the student\'s perceptual and technical skills in painting. Taking this major will help you learn about the basics of drawing, the different tools used in painting, the types of surfaces paintings are usually done in, and the use of visual perception in introducing different concepts in your paintings. ', 'BFA PAINTING.jpg', 'Arts & Communications', '04/17/23', ''),
('CID_50', 'Professions and Applied Sciences', 'BS REM', 'Bachelor of Science in Real Estate Management', 'The Bachelor of Science in Real Estate Management (BS REM) is a four-year degree program in the Philippines that will train you in real estate salesmanship, brokerage, appraisal, and consultancy including properties that fall within public domain. ', 'BS REM REAL ESTATE MANAGEMENT.jpg', 'Finance', '04/17/23', ''),
('CID_51', 'Professions and Applied Sciences', 'BSTM', 'Bachelor of Science in Tourism Management', 'The Bachelor of Science in Tourism Management (BSTM) is a four-year degree program in the Philippines that will train you in developing and implementing tourism campaigns, organizing and managing events, and following policies and standards related to investments, business regulations, procurement, and other miscellaneous procedures. ', 'BSTM tourism management.jpg', 'Hospitality & Tourism', '04/17/23', ''),
('CID_52', 'Health Sciences', 'BS Med Tech', 'Bachelor of Science in Medical Technology', 'The Bachelor of Science in Medical Technology (BS Medical Technology) also known as Bachelor of Science in Medical Laboratory Science (BS Medical Laboratory Science) is a four-year degree program in the Philippines that deals with the use of modern technology in detecting, identifying, and predicting the possible course of diseases that can put a person\'s health at risk. Pursuing this degree will help you gain a better understanding of the nature of diseases, the things that cause them, the way they spread, and the way to stop them or slow their growth down. It will also give you some background information on the natural composition of the human body and how you can use that information to detect potential or existing problems. ', 'BS MED TECH.jpg', 'Health Science', '04/17/23', ''),
('CID_53', 'Health Sciences', 'BS Midwifery', 'Bachelor of Science in Midwifery', 'The Bachelor of Science in Midwifery (BS Midwifery) is a four-year degree program in the Philippines that will train you in addressing the needs of expecting mothers and their children starting from the early stages of pregnancy up to the first few weeks following childbirth. By taking this course, you will learn everything you\'ll need to know about reproductive health; family planning; pregnancy, labor, and delivery; neonatal care; and the moral and legal principles involved in the practice of midwifery in the Philippines. ', 'BS MIDWIFERY.jpg', 'Health Science', '04/17/23', ''),
('CID_54', 'Health Sciences', 'BSN', 'Bachelor of Science in Nursing', 'Bachelor of Science in Nursing (BSN) is a four-year degree program in the Philippines that revolves around caring for the sick or injured. This does not only involve addressing immediate threats to the patient\'s health, but also guiding the patient all the way through physical, mental, and emotional recovery. As a nursing student you will be trained to conduct health assessments, provide patients with preoperative, intraoperative, and postoperative care, perform life-saving interventions, respond to disaster and emergency situations, and keep medical documentations. ', 'BS NURSING.jpg', 'Health Science', '04/17/23', ''),
('CID_55', 'Health Sciences', 'BSOT', 'Bachelor of Science in Occupational Therapy', 'The Bachelor of Science in Occupational Therapy (BSOT) is a five-year degree program in the Philippines that is concerned with using different methods and strategies to help people with serious physical, mental, or emotional conditions that keep them from functioning the way they are supposed to. It\'s mostly similar to Physical Therapy in the sense that it aims to help a person recover from an injury or learn to live with it if it can no longer be remedied, but contrary to Physical Therapy that is more focused on the physical functioning of a person such as walking or moving his body, Occupational Therapy is more focused on restoring or uplifting the mental or emotional well-being of a patient. ', 'BS OCCUPATIONAL THERAPY.jpg', 'Health Science', '04/17/23', ''),
('CID_56', 'Health Sciences', 'BS Pharmacy', 'Bachelor of Science in Pharmacy', 'is a four-year degree program in the Philippines that is concerned with drugs and other related substances. These include medicinal drugs, cosmetics, and common household products. By enrolling in this program you will learn how to develop and manufacture drugs for the diagnosis, prevention, and treatment of diseases.', 'BS PHARMACIST.jpg', 'Health Science', '04/17/23', ''),
('CID_57', 'Health Sciences', 'BSPT', 'Bachelor of Science in Physical Therapy', 'The Bachelor of Science in Physical Therapy (BSPT) is a five-year degree program in the Philippines that is concerned with using various treatments and exercises to restore the function of a broken bone or to compensate for the loss of a certain body part.', 'BS PHYSICAL THERAPY.jpg', 'Health Science', '04/17/23', ''),
('CID_58', 'Health Sciences', 'BS Rad Tech', 'Bachelor of Science in Radiologic Technology', 'is a four-year degree program in the Philippines that will train you in applying x-ray energy to assist in the diagnosis or treatment of diseases, performing radiographic or nuclear medicine procedures and to produce images for the interpretation of a licensed medical practitioner.', 'BS RADIOLOGIC TECHNOLOGY.jpg', 'Health Science', '04/17/23', ''),
('CID_59', 'Health Sciences', 'BSRT', 'Bachelor of Science in Respiratory Therapy', 'The Bachelor of Science in Respiratory Therapy is a four-year degree program in the Philippines that will train you in providing clinical pulmonary care procedures that will help in the proper diagnosis, treatment, and prevention of diseases. ', 'Respiratory therapist.jpg', 'Health Science', '04/17/23', ''),
('CID_6', 'Humanities', 'BFA Sculpture', 'Bachelor of Fine Arts Major in Sculpture', 'is a four-year degree program in the Philippines that is concerned with expressing interests and ideas in three-dimensional (3-D) art. As a branch of Fine Arts, it shares a lot of similar courses with BFA Major in Painting.', 'BFA SCULPTURES.jpg', 'Arts & Communications', '04/17/23', ''),
('CID_60', 'Education', 'BSED', 'Bachelor in Secondary Education', 'The Bachelor of Secondary Education (BSEd) is a four-year degree program in the Philippines that will prepare you in teaching in secondary school. It has several areas of specialization: English, Filipino, Islamic Studies, Mathematics, Music, Arts, Physic', 'BSED SECONDARY EDUCATION.jpg', 'Education & Training', '04/17/23', ''),
('CID_61', 'Education', 'BEED', 'Bachelor in Elementary Education', 'is a four-year degree program in the Philippines that will train you in teaching grade school students. Enrolling in this program will help you learn about the basic concepts and theories of teaching, the techniques for simplifying learning and adolescent development on students\' ability to learn.', 'BEED ELEMENTARY EDUCATION.jpg', 'Education & Training', '04/17/23', ''),
('CID_62', 'Education', 'BLIS', 'Bachelor of Library and Information Science in the Philippines', 'The Bachelor of Library and Information Science (BLIS) is a four-year degree program in the Philippines that will teach you about the different sources of information, how to acquire them, and how to develop and maintain a collection of reference materials.', 'BLIS Library and information science.jpg', 'Education & Training', '04/17/23', ''),
('CID_63', 'Engineering', 'BPE', 'Bachelor of Physical Education', 'is a four-year degree program in the Philippines that will train you in developing and maintaining the optimal physical fitness and functionality individuals. It has two majors: School Physical Education which is a teacher education training program and Sports and Wellness Management which is program that caters to the needs of the corporate industry.', 'BPE PHYSICAL EDUCATION.jpg', 'Education & Training', '04/17/23', ''),
('CID_64', 'Engineering', 'BS AeroE', 'Bachelor of Science in Aeronautical Engineering', 'The Bachelor of Science in Aeronautical Engineering (BS AeroE) is a five-year degree program in the Philippines that is concerned with aircrafts and air transportation. Some of the things you will learn through this program are aircraft design; aircraft', 'BSAERO AERONATICAL ENGINEER.jpg', 'Architecture & Construction', '04/17/23', ''),
('CID_65', 'Engineering', 'BSCerE', 'Bachelor of Science in Ceramic Engineering', 'The Bachelor of Science in Ceramic Engineering (BS CerE) is a five-year degree program in the Philippines that will train you in applying knowledge of mathematics, physical sciences, and engineering sciences to the practice of ceramic engineering.', 'BSCERE CERAMIC ENGINEER.jpg', 'Manufacturing', '04/17/23', ''),
('CID_66', 'Engineering', 'BSChE', 'Bachelor of Science in Chemical Engineering', 'is a five-year degree program in the Philippines that is concerned with the application of different sciences (ie. natural, social, formal, applied sciences) to come up with safe, ethical and economic ways of converting raw materials into more valuable products.', 'BSCHE CHEMICAL ENGINEER.jpg', 'Science, Technology, Math', '04/17/23', ''),
('CID_67', 'Engineering', 'BSCE', 'Bachelor of Science in Civil Engineering', 'is a five-year degree program in the Philippines that is concerned with the use of scientific and mathematical principles in the construction of buildings and infrastructures such as roads, bridges, tunnels, dams, airports, and the like. By enrolling in this program, you will learn the things you need to consider when constructing buildings and infrastructures.', 'Civil engineer.jpg', 'Architecture & Construction', '04/17/23', ''),
('CID_68', 'Engineering', 'BSCpE', 'Bachelor of Science in Computer Engineering', 'is a five-year degree program in the Philippines that will train you in the design, development, and maintenance of computer systems including both hardware and software. Aside from the technical aspects of the program, it will also equip you with knowledge of business principles and practices.', 'BSCPE COMPUTER ENGINEER.jpg', 'Information Technology', '04/17/23', ''),
('CID_69', 'Media and Communication', 'AB Broadcasting', 'Bachelor of Arts in Broadcasting', 'is a four-year degree program in the Philippines that will prepare you for a career in the media industry, particularly in television and radio networks. Being a subfield of Class Communication, AB Broadcasting has similar courses with Communication and AB Journalism', 'AB BROADCASTING.jpg', 'Arts & Communications', '04/17/23', ''),
('CID_7', 'Humanities', 'BFA Visual Communication', 'Bachelor of Fine Arts Major in Visual Communication', 'is a four-year degree program in the Philippines that is concerned with using both traditional and modern technology to create effective advertisements, web and new media designs. ', 'BFA VISUAL COMM.jpg', 'Arts & Communications', '04/17/23', ''),
('CID_70', 'Media and Communication', 'AB Communication', 'Bachelor of Arts in Communication', 'The Bachelor of Arts in Communication (AB Communication) is a four-year degree program in the Philippines that will prepare you for a career in the media or similar industries — advertising agencies and public relations firms in particular.', 'AB COMMUNICATION.jpg', 'Arts & Communications', '04/17/23', ''),
('CID_71', 'Public Administration', 'BS Community Development', 'Bachelor of Science in Community Development', 'is a four-year degree program in the Philippines that will train you in building and developing communities by providing their inhabitants with knowledge and resources that they can use to improve the quality of their lives. not only economically but socially and politically speaking as well.', 'BS COMMUNITY DEVELOPMENT.jpg', 'Human Service', '04/17/23', ''),
('CID_72', 'Public Administration', 'BSCA', 'Bachelor of Science in Customs Administration', 'is a four-year degree program in the Philippines that will train you in handling import and export operations', 'BSCA CUSTOMS ADMINISTRATOR.jpg', 'Government', '04/17/23', ''),
('CID_73', 'Transportation', 'BSMT', 'Bachelor of Science in Marine Transportation', 'is a four-year degree program in the Philippines that will train you in performing and fulfilling the duties and responsibilities of a marine deck officer including navigation, radio communication, and basic safety among other things.', 'BSMT MARINE TRASPORATATIO.jpg', 'Transportation ', '04/17/23', ''),
('CID_74', 'Nutrition', 'BSFT', 'Bachelor of Science in Food Technology', 'is a four-year degree program in the Philippines that will train you in applying principles of science and other related fields in the handling, preparation, processing, packaging, storage, and distribution of food to ensure that they remain safe and nutritious.', 'BS FOOD TECH.jpg', 'Agriculture', '04/17/23', ''),
('CID_75', 'Nutrition', 'BS Nutrition and Dietetics', 'Bachelor of Science in Nutrition and Dietetics', 'is a four-year degree program in the Philippines that will train you in planning, implementing, monitoring, and documenting nutrition programs for a given individual, group or community. It will also teach you how to plan and implement all aspects of nutrition care including identification of short- and long-term goals.', 'BS NUTRITION AND DIETETICS.jpg', 'Health Science', '04/17/23', ''),
('CID_76', 'Engineering', 'BSME', 'Bachelor of Science in Mechanical Engineering', 'is a five-year degree program in the Philippines that focuses on the fundamental knowledge and skills of mechanical engineering. This revolves around the design, production, and maintenance of machines from simple home appliances, gadgets, and automobiles, to more complicated industrial equipment, robots, and jet engines.', 'mech eng.jpg', 'Architecture & Construction', '04/30/23', ''),
('CID_77', 'Engineering', 'BSMetE', 'Bachelor of Science in Metallurgical Engineering', 'is a five-year degree program in the Philippines that is mainly concerned with metals and their conversion into useful products. Among the things that you may learn while enrolled in this program are the characteristics of metals and minerals, the processes involved in converting them into new products, the equipment and testing devices used in these processes.', 'metal eng.jpg', 'Architecture & Construction', '04/30/23', ''),
('CID_78', 'Engineering', 'BSMatE', 'Bachelor of Science in Materials Engineering', 'is a five-year degree program in the Philippines that will teach you about the different materials that are used or can be used to produce a wide array of products including their characteristics, uses, and advantages or disadvantages over the others.', 'mat eng.jpg', 'Manufacturing', '04/30/23', ''),
('CID_79', 'Engineering', 'BSPetE', 'Bachelor of Science in Petroleum Engineering', 'is a five-year degree program that is concerned with the extraction of oil, petroleum, and other natural gases from the earth and their subsequent delivery to processing facilities as well as the design and development of new technology that will speed up the process while keeping the operational cost to a minimum.', 'pet eng.jpg', 'Manufacturing', '04/30/23', ''),
('CID_8', 'Social Science', 'AB Economics', 'Bachelor of Arts in Economics', 'is a four-year degree program in the Philippines that will help you gain a better understanding of economic systems and their structure. This includes the entities that compose them, their relationship with one another, and how the introduction of external factors can affect not only them but the entire system as well. ', 'AB ECONOMICS.jpg', 'Finance', '04/17/23', ''),
('CID_80', 'Engineering', 'BSEE', 'Bachelor of Science in Electrical Engineering', 'is a five-year degree program in the Philippines that is concerned with electricity, its production, transmission, distribution, and usage. Its curriculum covers everything from the design of electrical systems up to their operation and maintenance as well as cheaper and safer ways of completing engineering projects.', 'electric man.jpeg', 'Architecture & Construction', '04/30/23', ''),
('CID_81', 'Engineering', 'BSECE', 'Bachelor of Science in Electronics and Communications Engineering', 'is a five-year degree program in the Philippines that is mainly concerned with the conceptualization, design and development of any electronic, computer or communication products, systems, services and processes.', 'electric com eng.jpg', 'Information Technology', '04/30/23', ''),
('CID_82', 'Engineering', 'BSGE', 'Bachelor of Science in Geodetic Engineering', 'is a five-year degree program in the Philippines that is concerned with gathering data related to the earth\'s surface and using them to produce spatial information systems, maps, plans, charts and other products.', 'geo eng.jpg', 'Architecture & Construction', '04/30/23', ''),
('CID_83', 'Engineering', 'BSGeoE', 'Bachelor of Science in Geological Engineering', 'is a five-year degree program that will train you in applying scientific principles to solve engineering and environmental problems such as pollution, landslides, earthquakes, and scouting for mineral resources to name a few.', 'geological eng.jpg', 'Science, Technology, Math', '04/30/23', ''),
('CID_84', 'Engineering', 'BSIE', 'Bachelor of Science in Industrial Engineering', 'is a five-year degree program in the Philippines that is concerned with the design, operation, management, and maintenance of different systems, processes, and facilities to ensure their maximum efficiency.', 'industrial eng.jpg', 'Manufacturing', '04/30/23', ''),
('CID_85', 'Engineering', 'BSMarE', 'Bachelor of Science in Marine Engineering', 'is a five-year degree program in the Philippines that is concerned with the construction and development of marine vessels and their component parts. This may include anything from private vessels such as fishing boats and cruise ships to military vehicles such as submarines, battleships, and aircraft carriers.', 'marine eng.jpg', 'Transportation ', '04/30/23', ''),
('CID_86', 'Engineering ', 'BSEM', 'Bachelor of Science in Mining Engineering', 'is a five-year degree program in the Philippines that is concerned with mines and mining. This includes evaluating the potential of a piece of land or area for mining, designing and building a mine, managing its operations, and making sure it follows environmental laws and other regulations among other things.', 'mine eng.jpg', 'Science, Technology, Math', '04/30/23', ''),
('CID_87', 'Engineering', 'BSSE', 'Bachelor of Science in Sanitary Engineering', 'a five-year degree program in the Philippines that is primarily concerned with the designing, planning, operation, and maintenance of sanitation facilities; soil, water, and air pollution control; and the general hygienic projects of residential, commercial, and industrial buildings.', 'sanitary eng.jpg', 'Architecture & Construction', '04/30/23', ''),
('CID_88', 'Media and Communication', 'AB Journalism', 'Bachelor of Arts in Journalism', 'is a four-year degree program in the Philippines that will prepare you for a career in the media industry. Like AB Broadcasting and AB Communication, which are sub-fields of Mass Communication, AB in Journalism revolves around the communication process and the role mass media plays in it.', 'journalist.jpg', 'Arts & Communications', '04/30/23', ''),
('CID_89', 'Media and Communication', 'AB MassComm', 'Bachelor of Arts in Mass Communication', 'is a four-year degree program in the Philippines that will train you in the effective use of different media in order to send out specific messages to targeted audiences.', 'mas comm.jpg', 'Arts & Communications', '04/30/23', ''),
('CID_9', 'Social Science', 'BS Psychology', 'Bachelor of Science in Psychology', 'is a four-year degree program in the Philippines that is concerned with the way humans think and behave. By taking this course, you will learn how to conduct and interpret different tests such as those aiming at evaluating a person\'s intelligence (IQ test), skills (aptitude tests), and personality (personality test); and how you can apply your findings in different settings.', 'BS PSYCHOLOGY.jpg', 'Human Service', '04/17/23', ''),
('CID_90', 'Media and Communication', 'BS DevComm', 'Bachelor of Science in Development Communication', 'is a four-year degree program in the Philippines that revolves around the role of communication in the pursuit of development. As a Development Communication student, you will learn about the different communication theories and how you can use them to plan, implement, and manage information campaigns targeted at specific audiences.', 'dev com.jpg', 'Human Service', '04/30/23', ''),
('CID_91', 'Public Administration', 'BS Foreign Service', 'Bachelor of Science in Foreign Service', 'is a four-year degree program that will will train you in maintaining peaceful relations with other countries, facilitating the flow of investments from international sources, promoting tourism, and addressing the needs of Filipinos working overseas among other things.', 'foreign service.jpg', 'Government', '04/30/23', ''),
('CID_92', 'Public Administration', 'BSIS', 'Bachelor of Science in International Studies', 'is a four-year degree program in the Philippines that will teach you about different government systems and the social, economic, cultural, geographical, and political factors that dictate or affect the way they operate.', 'int studies.jpg', 'Government', '04/30/23', ''),
('CID_93', 'Public Administration', 'BPA', 'Bachelor of Public Administration', 'is a four-year degree program in the Philippines that will prepare you for a career in public service. Enrolling in this program will help you become more familiar with the different agencies that make up the government, their relationship with each other, the people that run them, the policies they make, and how they implement them.', 'public admin.jpg', 'Government', '04/30/23', ''),
('CID_94', 'Public Administration', 'BSPS', 'Bachelor of Science in Public Safety ', 'is a four-year degree program in the Philippines that will help you acquire knowledge and skills essential to ensuring public safety', 'pub safe.jpg', 'Law & Public Safety', '04/30/23', ''),
('CID_95', 'Public Administration', 'BS Social Work', 'Bachelor of Science in Social Work', 'is a four-year degree program in the Philippines that deals with the study of social units such as families and communities, the various issues that affect them, and how social work can help improve, if not immediately resolve, these conditions.', 'social work.jpg', 'Human Service', '04/30/23', '');

-- --------------------------------------------------------

--
-- Table structure for table `course_information_job`
--

CREATE TABLE `course_information_job` (
  `CIJID` varchar(255) NOT NULL,
  `JOB_NAME` varchar(255) NOT NULL,
  `INFORMATION` text NOT NULL,
  `CID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information_job`
--

INSERT INTO `course_information_job` (`CIJID`, `JOB_NAME`, `INFORMATION`, `CID`) VALUES
('CIJID_1', 'Application Developer ', 'Applications developers make computers perform specific tasks, based on their client\'s specifications. As an applications developer you\'ll translate software requirements into workable programming code and maintain and develop programs for use in business', 'CID_1'),
('CIJID_10', 'Industrial Designer ', 'Industrial designers work primarily in offices, but they may travel to the places where the products are manufactured. Industrial designers develop the concepts for manufactured products, such as cars, home appliances, and toys.', 'CID_4'),
('CIJID_100', 'Farm Management  ', 'Farm managers are administrative leaders who work on a farm and manage operations. They are responsible for ensuring success and efficiency in daily activities involving all aspects of farm from livestock to crops and equipment. These are skilled professionals with education and experience in agriculture.', 'CID_34'),
('CIJID_101', 'Agriculture and Food Technology ', 'Test food, food additives, and food containers to ensure that they comply with established safety standards. Help food scientists with food research, development, and quality control. Analyze chemical properties of food to determine ingredients and formulas. Compile and analyze test results.', 'CID_34'),
('CIJID_102', 'Teaching ', 'Agricultural Sciences Teachers educate students about agriculture, food, and natural resources, Through these subjects, they educate students on a variety of skills, including, science, math, communications, leadership, management, and technology.', 'CID_34'),
('CIJID_103', 'Sales Representatives', 'The Sales Representative is responsible for selling products and meeting customer needs while obtaining orders from existing or potential sales outlets. They ensure that the customer is satisfied and adequately taken care of while making a purchase. This way, they can establish new accounts for their employer.', 'CID_35'),
('CIJID_104', 'Business Consultants', 'Business consultants analyze organizational practices, identify weaknesses, and recommend solutions. Business consultants often specialize in specific areas such as marketing, human resources, management, engineering, or finance and provide expert advice on that topic.', 'CID_35'),
('CIJID_105', 'Business Managers', 'A Business Manager is responsible for leading and overseeing all operations in their company. They implement strategies to ensure productivity while also evaluating how well the business performed on various tasks within a specific time frame.', 'CID_35'),
('CIJID_106', 'Academic Researcher  ', 'As an academic researcher you\'ll apply your expertise and skills developed through study and research. You\'ll aim to publish papers on your work in peer-reviewed, well-respected journals and will write reports, books or chapters of books on your specialist area of knowledge.', 'CID_36'),
('CIJID_107', 'Entrepreneur  ', 'Setting the direction and establishing the desired image for the business. Seeking new directions and ways to improve and grow the company. Overseeing financial records and taking action, such as securing a new line of credit to handle unforeseen events.', 'CID_36'),
('CIJID_108', 'Farm supervisor ', 'Farm supervisors perform some or all of the following duties: Co-ordinate, assign and supervise the work of general farm workers and harvesting labourers. Supervise and oversee breeding and other livestock-related programs. Supervise, monitor and enforce procedures to maintain animal and crop health and welfare.', 'CID_36'),
('CIJID_109', 'Architectural Design  ', 'An Architect, or Architectural Designer, is responsible for designing buildings to create unique and well-organized structures. Their duties include meeting with clients to discuss their vision, drawing up building plans and modifying their designs throughout the building process to maximize structural integrity.', 'CID_37'),
('CIJID_11', 'Professor / Art Educator ', 'Plan, develop and implement art and art history curriculum to meet learning goals. Purchase art materials and maintain the inventory of art materials.', 'CID_4'),
('CIJID_110', 'Real Estate Development', 'A real estate developer obtains and develops land, turning it into a real estate asset. Part of their job is to conduct extensive research and analyses, coordinate with experts, gather and analyze data, negotiate with land sellers, and prepare properties for development.', 'CID_37'),
('CIJID_111', 'Facility Planning', 'Plan, organize and direct planning, research and special projects in support of organizational land acquisition, development and construction activities. Coordinate planning activities for school facility, utility and equipment alteration, repair and construction projects.', 'CID_37'),
('CIJID_112', 'Landscape Design Consultancy', 'Advise on, plan, design and oversee the creation, regeneration and development of external land areas such as gardens and recreational areas, as well as residential, industrial and commercial sites.', 'CID_38'),
('CIJID_113', 'Site Planning', 'Prepare site plans, specifications, or cost estimates for land development. Present project plans or designs to public stakeholders, such as government agencies or community groups.', 'CID_38'),
('CIJID_114', 'Land Development Planning', 'Create programs and plans for land development and usage. They will usually meet with a developer, public official, or community to discuss a particular piece of land and what their client wishes to accomplish with it.', 'CID_38'),
('CIJID_115', 'Visual Design Manager', 'Develop prototypes to uniformly integrate logos and brand images into other products and platforms, including social media. Keep track of advancements in visual design technologies, applications, and industry trends.', 'CID_39'),
('CIJID_116', 'Auto-CAD Draftsman', 'Collect all drawings, data, and notes involved in a project, draft building plans, layout interiors, and even designate landscaping.', 'CID_39'),
('CIJID_117', 'Interior Designer', 'Will create functional, safe, and aesthetically pleasing spaces by assessing space requirements, determining optimal furniture placement, and selecting decorative items, all while adhering to relevant blueprint, building code, and inspection requirements.', 'CID_39'),
('CIJID_118', 'Financial Accounting', 'Keep track of their organizations\' financial operations. Responsible for maintaining financial accountability, they oversee areas like payroll, taxes, and spending.', 'CID_40'),
('CIJID_119', 'Tax Accounting Staff', 'Prepare tax provisions schedules, returns, payments, reports and maintain a company\'s tax database. Find tax solutions to complicated tax issues or errors from incorrect tax filings. Identify legal tax savings and recommend ways to improve profits.', 'CID_40'),
('CIJID_12', 'Multimedia Designer Graphic Artist ', 'Designing and producing attractive multimedia content according to website specifications. Creating digital images, video animation, and textual animations. Creating original artwork for digital image processing. Creating animated sequences using computer animation software.', 'CID_4'),
('CIJID_120', 'Internal Audit Staff', 'Is to ensure that all the business processes in a company are risk-management compliant. The operating process includes assessing certain areas for compliance with relevant laws and evaluating how effective this department has been', 'CID_40'),
('CIJID_121', 'Financial Analyst', 'Helps companies and teams make the most of their finances. They provide guidance and advice on how much they should invest in stocks or bonds.', 'CID_41'),
('CIJID_122', 'Budget Analyst', 'Summarize budgets and offer insight regarding funds requests. Review budget proposals for completeness, accuracy, and compliance.', 'CID_41'),
('CIJID_123', 'Comptroller', 'Oversee accounting departments. They need broad and deep knowledge of accounting regulations, procedures, and policies. A comptroller may maintain payroll, manage accounts payable and receivable, file state and federal taxes, and prepare financial statements.', 'CID_41'),
('CIJID_124', 'Management Trainee', 'Works under the supervision of managers and executives in organizations. Their goal is to acquire all essential knowledge to become future managers, often in particular fields, such as marketing, sales, or operations.', 'CID_42'),
('CIJID_125', 'Research Assistant', 'Is a professional who supports research projects by conducting literature searches, data management and maintaining files for project Researchers.', 'CID_42'),
('CIJID_126', 'Corporate Planning Analyst', 'They study and analyze various business data and financial information, including market trends, sales figures, and inventory control matters. Planning analysts streamline daily business operations looking for ways to cut costs, maximize sales, and increase profits.', 'CID_42'),
('CIJID_127', 'Stock Trader', 'Buy and sell stocks, bonds or any financial instrument on behalf of their clients. They usually work for a firm or independently. As a stock trader, you may spend your time studying trades, researching the market, conducting quantitative and business analyses', 'CID_43'),
('CIJID_128', 'Businessman', 'Are responsible for the growth, stability, direction and daily operation of the business. Additional job duties for a typical business owner include: Meeting with service vendors or product suppliers to facilitate delivery. Make buying trips to purchase inventory.', 'CID_43'),
('CIJID_129', 'Financial Analyst', 'Helps companies and teams make the most of their finances. They provide guidance and advice on how much they should invest in stocks or bonds.', 'CID_43'),
('CIJID_13', 'Illustrator ', 'An illustrator is an artist who specializes in enhancing writing or elucidating concepts by providing a visual representation that corresponds to the content of the associated text or idea.', 'CID_5'),
('CIJID_130', 'Administrative Assistant', 'Assist with the day-to-day operations of an office by doing tasks such as filing paperwork, answering phone calls, preparing documents for meetings, and managing the calendar of their supervisors.', 'CID_44'),
('CIJID_131', 'Training and Development Officer', 'You\'ll take a strategic approach to training, assessing the skills and knowledge within an organisation and determining what training is needed to grow and retain these skills.', 'CID_44'),
('CIJID_132', 'Entrepreneur', 'Is an individual who creates and grows a business through their creative ideas. Entrepreneurs play key roles besides generating income as they grow their businesses.', 'CID_44'),
('CIJID_133', 'Customer Service Representative', 'Works with clients who have complaints, orders, or require information about products/services purchased from the organization.', 'CID_45'),
('CIJID_134', 'Junior Sales Trainer', 'Conducting skills gap analyses, preparing learning material and evaluating results after each training session', 'CID_45'),
('CIJID_135', 'Product/Brand Assistant', 'Develop innovative marketing techniques to enhance brand image of a product or service. Conduct and document market research on latest trends in changing consumer tastes.', 'CID_45'),
('CIJID_136', 'Operations Management Assistant Responsibilities', 'Include scheduling appointments, organizing files, and distributing mail as required. Ultimately, you will work with department managers to ensure all administrative tasks are completed to keep the department running smoothly.', 'CID_46'),
('CIJID_137', 'Logistics Management', 'Supervises the movement, distribution, and storage of supplies and materials in a company. They are tasked with planning routes, analyzing budgets, and processing shipments.', 'CID_46'),
('CIJID_138', 'Warehouse Assistant', 'Includes the receiving and processing of incoming stock and materials, picking and filling orders from stock, packing and shipping orders and managing, organising and retrieving stock in the warehouse.', 'CID_46'),
('CIJID_139', 'Room Attendant', 'Include changing towels, making beds and cleaning bathrooms. You will also address clients\' queries and make sure our rooms are fully-stocked, clean and inviting at all times.', 'CID_47'),
('CIJID_14', 'Graphic Artist ', 'A graphic artist is a creative professional who produces visual material to communicate emotions, stories, and other messages to audiences. Graphic artists work in traditional and digital media and rely on artistic principles that may be abstract or novel', 'CID_5'),
('CIJID_140', 'Assistant Cook', 'Ensures the kitchen is orderly and assists Cooks to prepare and arrange food. Their duties include cleaning the kitchen area, washing dishes and utensils and ensuring that the Cook has everything required to run the kitchen efficiently.', 'CID_47'),
('CIJID_141', 'Housekeeping Supervisor', 'Responsible for ensuring that the standards of cleanliness are met. They assign tasks, inspect work to ensure it\'s up to standard, and provide training on how to best handle customers\' requests.', 'CID_47'),
('CIJID_142', 'Entrepreneur', 'Is an individual who creates and grows a business through their creative ideas. Entrepreneurs play key roles besides generating income as they grow their businesses.', 'CID_48'),
('CIJID_143', 'Business Consultant', 'Analyze organizational practices, identify weaknesses, and recommend solutions. Business consultants often specialize in specific areas such as marketing, human resources, management, engineering, or finance and provide expert advice on that topic.', 'CID_48'),
('CIJID_144', 'Businessman ', 'Are responsible for the growth, stability, direction and daily operation of the business. Additional job duties for a typical business owner include: Meeting with service vendors or product suppliers to facilitate delivery. Make buying trips to purchase inventory.', 'CID_48'),
('CIJID_145', 'Bookkeeper', 'Complete data entry, collect transactions, track debits and maintain and monitor financial records. They also pay invoices, complete payroll, file tax returns and even maintain office supplies.', 'CID_49'),
('CIJID_146', 'Office Manager', 'Responsibilities include scheduling meetings and appointments, making office supplies arrangements, greeting visitors and providing general administrative support to our employees.', 'CID_49'),
('CIJID_147', 'Executive Assistant', 'Is responsible for managing the schedules and communications of key company executives. Their duties include prioritizing emails and phone calls, gathering documents to prepare for meetings and coordinating travel arrangements.', 'CID_49'),
('CIJID_148', 'Real Estate Consultant', 'Provides clients with assistance throughout the buying and selling process of properties. Their duties include providing lease management services, performing market analysis and helping clients find the best properties to invest in.', 'CID_50'),
('CIJID_149', 'Real Estate Appraiser', 'Assess the value of a property after a thorough inspection, by researching comparable homes, properties, buildings, public records, legal descriptions, and tax records.', 'CID_50'),
('CIJID_15', 'Art Critics ', 'An art critic write reviews of individual art works or art exhibitions for the general public or for a more specialized audience. His or her articles are then published in newspapers, magazines, academic journals, and on art blogs. ', 'CID_5'),
('CIJID_150', 'Accounts Personnel', 'Duties include recording transactions, payments and expenses and processing invoices. They also send out bills and invoices, follow up on overdue payments and ensure that a company\'s invoices.', 'CID_50'),
('CIJID_151', 'Travel Account Representative', 'Advises clients regarding destinations, cultures, customs, weather and activities. Collects payments, books travel arrangements and pays applicable fees. Handles travel issues, conflicts, complaints, cancelations and refunds.', 'CID_51'),
('CIJID_152', 'Local Tourism Officer', 'Are responsible for promoting tourism and devising tourist development initiatives/campaigns with the aim of generating and increasing revenue.', 'CID_51'),
('CIJID_153', 'Tour Escort', 'Escort individuals or groups on sightseeing tours or through places of interest, such as industrial establishments, public buildings, and art galleries.', 'CID_51'),
('CIJID_154', 'Medical Technologist', 'Analyzes various biological samples to treat or diagnose different diseases. Their main duties include getting biological samples ready to test, conducting blood tests and creating reports of their findings.', 'CID_52'),
('CIJID_155', 'Medical Technologist for Medico-Legal cases ', 'Analyzes various biological samples to treat or diagnose different diseases. Their main duties include getting biological samples ready to test, conducting blood tests and creating reports of their findings.', 'CID_52'),
('CIJID_156', 'Researcher', 'Researchers gather data during the project life cycle, analyze the data and publish the findings to aid new research, enrich scholarly literature and improve the decision-making process.', 'CID_52'),
('CIJID_157', 'Midwife', 'Deliver babies and provide antenatal and postnatal advice, care and support to women, their babies, their partners and families.', 'CID_53'),
('CIJID_158', 'Health Facility Administrator', 'Oversee the day-to-day administrative operations of hospitals and other healthcare facilities. Their responsibilities include planning and supervising all medical services including monitoring budgets and updating health records.', 'CID_53'),
('CIJID_159', 'Clinic Manager', 'Oversee the day-to-day management of medical clinics and outpatient facilities. They liaise with patients and healthcare professionals, and coordinate patient care plans. Their duties include managing budgets and billing, appointing staff, and assigning tasks.', 'CID_53'),
('CIJID_16', 'Sculptor ', 'Sculptors design and shape three-dimensional works of art, either by molding and joining materials such as clay, glass, plastic, and metal or by cutting and carving forms from a block of plaster, wood, or stone. Some sculptors combine various materials to create mixed-media displays called installations.', 'CID_6'),
('CIJID_160', 'College Professor', 'Developing curricula and delivering course material. Conducting research, fieldwork, and investigations, and writing up reports. Publishing research, attending conferences, delivering presentations, and networking with others in the field.', 'CID_54'),
('CIJID_161', 'Clinic Nurse', 'Assessing patients, ordering medical tests and developing treatment plans. Providing clinical expertise for complex cases and medical emergencies.', 'CID_54'),
('CIJID_162', 'Community Health Nurse', 'Develop intervention plans to address the health, safety, and quality of life needs of individuals and communities. They may also identify health concerns that impact a specific population, conduct community assessments to identify potential problems', 'CID_54'),
('CIJID_163', 'Pharmacist', 'Receives, compounds, fills prescriptions, dispenses pharmaceuticals, consults with clients regarding the nature and use of drugs, and trains and/or supervises personnel.', 'CID_56'),
('CIJID_164', 'Clinical Researcher', 'Works directly with or uses data from patients to carry out research on health and disease and to develop new treatments. Clinical researchers design, implement and monitor clinical studies of compounds designated for clinical development.', 'CID_56'),
('CIJID_165', 'Product Manager', 'Is a professional who combines both product planning and marketing to manage the entire life cycle of one project. They\'re responsible for gathering customer requirements and defining their vision with engineering.', 'CID_56'),
('CIJID_166', 'Radiologic Technologist', 'Work at hospitals, labs and imaging centers to operate X-ray, CT, mammogram, sonogram and MRI machines among other imaging equipment. Their role is to coach the patient through a scan and use computers to collect information about their health.', 'CID_58'),
('CIJID_167', 'Ultrasound Technologist', 'Uses specialized equipment to examine parts of the human body including the abdomen, reproductive systems, prostate, heart and blood vessels.', 'CID_58'),
('CIJID_168', 'Radiation Therapy Technologist', 'Operate machines, such as linear accelerators, to deliver concentrated radiation therapy to the region of a patient\'s tumor.', 'CID_58'),
('CIJID_169', 'Respiratory Therapist', 'Interview and examine patients with breathing or cardiopulmonary disorders. Respiratory therapists care for patients who have trouble breathing—for example, because of conditions such as asthma or chronic obstructive pulmonary disease (COPD).', 'CID_59'),
('CIJID_17', 'Food Stylist ', 'Food stylists prepare and arrange food for the photography seen in cookbooks, magazines, commercials, and more.', 'CID_6'),
('CIJID_170', 'Medical Service Practitioner', 'Provides medical services to individuals in their local community. Their duties include conducting physical examinations of patients, creating treatment plans and giving general health advice.', 'CID_59'),
('CIJID_171', 'Product Specialist', 'Is to ensure the profitability and continued growth of a product for an organization. Working with the design engineering team, a product specialist reviews a product design, suggests enhancements, and oversees development to ensure marketability of the product.', 'CID_59'),
('CIJID_172', 'Librarian', 'In charge of collecting, organizing, and issuing library resources such as books, films, and audio files. They work in a range of settings including public libraries, schools, and museums.', 'CID_62'),
('CIJID_173', 'Abstractor', 'Research all documents and activities affecting ownership of properties. The work involves sifting through public records, often in a county clerk\'s office, for mentions of things like liens or bankruptcies or land boundaries.', 'CID_62'),
('CIJID_174', 'Bibliographer', 'Describes and lists books and other publications, with particular attention to such characteristics as authorship, publication date, edition, typography, etc. A person who limits such efforts to a specific field or discipline is a subject bibliographer.', 'CID_62'),
('CIJID_175', 'Wellness Trainer', 'Help people develop the knowledge, skills, and confidence to manage their own health and wellbeing. Health and Wellbeing Coaches will use health coaching, motivational interviewing and behavior change skills to empower people to make positive lifestyle changes.', 'CID_63'),
('CIJID_176', 'Gym Manager', 'It\'s their prerogative to buy, sell, and maintain on-site equipment; requisition talented staff; and manage their team of personal trainers.', 'CID_63'),
('CIJID_177', 'Fitness and Wellness Supervisor', 'Plans, coordinates, and supervises a variety of programs and activities for residents. The employee modifies programs in response to the needs of the community; publicizes program activities; and supervises the implementation of programs.', 'CID_63'),
('CIJID_178', 'Aircraft Structural Engineer', 'Will perform a variety of engineering work including technical project management, design / analysis of aircraft repairs, and of the modifications that integrate sensors and equipment onto aircraft.', 'CID_64'),
('CIJID_179', 'Aircraft Design Engineer', 'Involved primarily in designing aircraft and propulsion systems and in studying the aerodynamic performance of aircraft and construction materials. They work with the theory, technology, and practice of flight within the Earth\'s atmosphere.', 'CID_64'),
('CIJID_18', 'Visual Communicators ', 'Visual communications designers conceive and design visual concepts to best convey clients\' messages to their intended audiences.', 'CID_6'),
('CIJID_180', 'Aircraft Power Plant Engineer', 'Role will be a multi-functional role responsible for Aircraft Engine technical control and management. You will report to the Powerplant Manager under the responsibility of the CAMO.', 'CID_64'),
('CIJID_181', 'Quality Assurance Engineer', 'Creates tests that identify issues with software before a product launch. These tests entail other tasks such as developing and running new tests and reporting their results to stakeholders, who will collaborate to fix program bugs or problems.', 'CID_65'),
('CIJID_182', 'Sales Engineer', 'Provides product, service, or equipment technical and engineering information by answering questions and requests. Establishes new accounts and services accounts by identifying potential customers and planning and organizing sales call schedule.', 'CID_65'),
('CIJID_183', 'Design Engineer', 'Research and develop designs for projects in a range of sectors, from construction to software, medical equipment and manufacturing.', 'CID_65'),
('CIJID_184', 'Drug Manufacturing', 'Collaborates with the quality assurance (QA) and quality control (QC) teams. Sterilizes all equipment and keeps a safe and hygienic work environment.', 'CID_66'),
('CIJID_185', 'Environmental Management', 'Manage the development and implementation of environmental management systems within organizations by identifying, solving and alleviating environmental issues, such as pollution and waste treatment, in compliance with environmental legislation', 'CID_66'),
('CIJID_186', 'Petrochemical Engineering', 'Primary role is to develop ways to break down oil and petroleum, then use the base components to develop everyday products like plastic, rubber and synthetic fibers.', 'CID_66'),
('CIJID_187', 'City Planner Structural Engineer', 'Analyze configurations of the basic components of a structure. Liaise with professional staff such as architects and engineers. Monitor and inspect all work undertaken by contractors to ensure structural soundness.', 'CID_67'),
('CIJID_188', 'Water Resources Engineer', 'Is to manage a population\'s water use and ensure that the treatment of water is safe for human consumption. The typical day of a water resource engineer may entail charting out a community\'s water needs and frequently analyzing water resources.', 'CID_67'),
('CIJID_189', 'Traffic Engineer', 'Prepares signing, striping, temporary traffic control, signal, lighting and Intelligent Transportation construction plans and specifications to ensure compliance with standards and project schedule.', 'CID_67'),
('CIJID_19', 'Advertising Artist Graphic Artist ', 'Graphic designers create visual text and imagery concepts, by hand or using computer software, to communicate ideas that inspire, inform, or captivate consumers. They develop the overall layout and production design for advertisements, brochures, magazines, and corporate reports, etc.', 'CID_7'),
('CIJID_190', 'Network Systems Administrator', 'Determine an organization\'s system needs and install network hardware and software. Make needed upgrades and repairs to networks and ensure that systems are operating correctly. Maintain network and computer system security.', 'CID_68'),
('CIJID_191', 'Data Communications Engineer', 'You will carry out designing work for data communication products, like LAN switches, routers, network security systems and so on.', 'CID_68'),
('CIJID_192', 'Systems Developer', 'A systems developer is a type of software developer. They develop and implement applications and programs for the backend processing systems used in businesses and organizations.', 'CID_68'),
('CIJID_193', 'Radio or Television Writer', 'Writers create and develop scripts for TV and radio programmes. Examples of TV and radio projects they might work on include comedies, dramas and documentaries.', 'CID_69'),
('CIJID_194', 'Radio or Television Director', 'Plan and schedule program material for stations and networks. They determine what entertainment programs, news broadcasts, and other program material their organizations offer to the public.', 'CID_69'),
('CIJID_195', 'Radio or Television Producer', 'Generate and research ideas for programs, source on-air contributors, write and develop scripts, select music for the show and listen to recordings to edit them into stories or segments.', 'CID_69'),
('CIJID_196', 'Account Executive', 'Build relationships with new clients and manage relationships with existing ones. Account executive jobs exist across industries, serving as point of contact for clients and internal company teams, often interacting with both daily.', 'CID_70'),
('CIJID_197', 'Advertising Manager', 'Plan, implement, and manage a comprehensive advertising and marketing program for the Standard resulting in sufficient funds to support a publication that is printed twice a week.', 'CID_70'),
('CIJID_198', 'Public Relations Officer', 'Responds to requests for information from media outlets. They aim to maintain the positive image of an organization or client.', 'CID_70'),
('CIJID_199', 'Business Developer', 'Duties include identifying business opportunities, maintaining successful relationships with prospects, existing and past clients and collaborating with executives on business strategy to determine objectives to maximize business reach and potential.', 'CID_71'),
('CIJID_2', 'Game Developer ', 'Video game developers, also known as game developers, are responsible for designing and developing video games for PC, console, and mobile applications. Their job is to code the base engine from the ideas of the design team.', 'CID_1'),
('CIJID_20', 'Graphic Designer New Media Specialist ', 'The Graphic Designer New Media Specialist job includes the entire process of defining requirements, visualizing and creating graphics including illustrations, logos, layouts and photos. You\'ll be the one to shape the visual aspects of websites, books, magazines, product packaging, exhibitions and more.', 'CID_7'),
('CIJID_200', 'Project Coordinator', 'Responsible for ensuring the schedule, budget and details of a given task are well organized. They communicate with various departments to keep everyone on board about any changes to the project plan.', 'CID_71'),
('CIJID_201', 'Community Development Specialist', 'Develops program goals and plans for implementation. Develops alternative strategies for programs based on analysis and research in an assigned specialty area.', 'CID_71'),
('CIJID_202', 'Declarant', 'Liaison with customers to obtain clearance instructions and information require to complete customs declarations prior to shipment. Review of customs documentation to ensure all information has been provided before customs clearance.', 'CID_72'),
('CIJID_203', 'Customs Examiner Appraiser', 'To examine and report the value of the property. This requirement created a public- private relationship with the trade community that involved them directly in the enforcement of customs laws.', 'CID_72'),
('CIJID_204', 'Air/Sea Cargo Handling Documentation Clerk', 'Keeps record, prepares necessary paperwork, telegrams and other documentation and correspondence as necessary on various aspects of customs, shipping and expediting matters.', 'CID_72'),
('CIJID_205', 'Master Mariner', 'Communicates and coordinates with the ship owners regarding any matter concerning the vessel and crew onboard. Acts as personnel executive to ship owners and promote their welfare.', 'CID_73'),
('CIJID_206', 'Chief Officer/Chief Mate', 'Is the department head for the Deck Department. They supervise the members of the deck department including Second and Third Mates, able-seafarers, and ordinary seaman or deckhands.', 'CID_73'),
('CIJID_207', 'Navy Officer', 'Perform various tasks such as supervising enlisted men and women, organizing and executing military operations, commanding or operating major military vehicles including ships or aircraft, and providing professional support services.', 'CID_73'),
('CIJID_208', 'Food Scientist', 'Use chemistry, biology, and other sciences to study the basic elements of food. They analyze the nutritional content of food, discover new food sources, and research ways to make processed foods safe and healthy.', 'CID_74'),
('CIJID_209', 'Food Technologist', 'Research, develop and oversee the production of food stuffs. They study the physical, chemical and biological properties of food and help to improve the products in any way, from the nutritional value to the shelf-life.', 'CID_74'),
('CIJID_21', 'Costume and Fashion Designer ', 'Costume designers plan, create, and maintain clothing and accessories for all characters in a stage, film, television, dance, or opera production. Designers custom fit each character, and either create a new garment or alter an existing costume. Costume designers may also be known as theatrical designers.', 'CID_7'),
('CIJID_210', 'Microbiologist', 'Study microorganisms such as bacteria, viruses, algae, fungi, and some types of parasites. They try to understand how these organisms live, grow, and interact with their environments.', 'CID_74'),
('CIJID_211', 'Dietary Director', 'Functions as liaison between medical and nursing staff with regard to dietary concerns, advises administration on dietary matters, and counsels’ patients regarding dietary needs.', 'CID_75'),
('CIJID_212', 'Clinical Dietitian', 'Formulates a nutritional care plan. Calculates nutrition prescription, determines educational requirements, and selects/develops/revises nutrition educational materials.', 'CID_75'),
('CIJID_213', 'Menu Planner', 'Responsible for understanding the ingredients used in menu items, special dietary restrictions, and appropriate cost-effective measures for producing a quality product within budgetary constraints.', 'CID_75'),
('CIJID_214', 'Power and Energy Engineering ', 'develop solutions for improving energy consumption and use. Through research, design, documentation, and construction they implement green solutions, cutting down environmental impact and cost.', 'CID_76'),
('CIJID_215', 'Automotive Engineering ', 'Common responsibilities of an automotive engineer include designing and testing various components of vehicles, including fuel technologies and safety systems.', 'CID_76'),
('CIJID_216', 'Manufacturing Engineering ', 'They develop efficient systems, processes and machines that result in high-quality products. They may also take into account how manufacturing processes impact the environment.', 'CID_76'),
('CIJID_217', 'Research and Development Engineer ', 'conducts research in a field or specialization of an engineering discipline to discover facts, or performs research directed toward investigation, evaluation, and application of known engineering theories and principles; plans and conducts, or directs engineering personnel', 'CID_77'),
('CIJID_218', 'Failure Analysis and Reliability Engineer ', 'Failure analysis engineers check and identify problems associated with business processes. These errors primarily take place in electrical systems.', 'CID_77'),
('CIJID_219', 'Quality Assurance Engineer ', 'A QA engineer creates tests that identify issues with software before a product launch. These tests entail other tasks such as developing and running new tests and reporting their results to stakeholders, who will collaborate to fix program bugs or problems.', 'CID_77'),
('CIJID_22', 'Auditor ', 'Auditors review the accounting records, operational data, and financial records of companies to ensure their financial records are accurate and in line with generally accepted accounting principles. Auditors might inspect the accounts of the company they work for or those of other organizations.', 'CID_8'),
('CIJID_220', 'Materials Engineer ', 'create and study materials at the atomic level. They use computers to understand and model the characteristics of materials and their components.', 'CID_78'),
('CIJID_221', 'Quality Engineer ', 'They design quality tests, develop the documentation, and test procedures, keep track of quality standards, and specify the requirements that a test result must satisfy.', 'CID_78'),
('CIJID_222', 'Process Engineer ', 'designs and implements systems and equipment procedures used manufacturing facilities. Their main duties include testing and monitoring equipment, updating current system processes and conducting risk assessments.', 'CID_78'),
('CIJID_223', 'Drilling Engineering ', 'They draw up plans for drilling operations, taking account of costs and deadlines. They specify the drilling program and plan the wells, supervise the drilling crew and are responsible for safety management and ensuring that an operation follows all environmental regulations.', 'CID_79'),
('CIJID_224', 'Reservoir Engineering ', 'Collaborating with other technical professionals in devising economically viable development plans for oil and gas accumulations. Optimising recovery plans, including new well locations or projects involving enhanced recovery methods.', 'CID_79'),
('CIJID_225', 'Production Engineering ', 'Production or Plant Engineers plan, direct and coordinate the design, construction, modification, continued performance and maintenance of equipment and machines in industrial plants, and the management and planning of manufacturing activities.', 'CID_79'),
('CIJID_226', 'Power Engineer ', 'operate and maintain reactors, turbines, generators, stationary engines/auxiliary equipment to generate electrical power and to provide heat, light, refrigeration and other utility services for commercial, industrial and institutional buildings and other work sites.', 'CID_80'),
('CIJID_227', 'Design Engineer ', 'research and develop designs for projects in a range of sectors, from construction to software, medical equipment and manufacturing.', 'CID_80'),
('CIJID_228', 'Illumination Engineer ', 'supports the Lighting Designer to design and set up the lighting arrangements for live and pre-recorded events such as concerts, television shows and movies.', 'CID_80'),
('CIJID_229', 'Broadcast Engineer', 'Broadcast engineers usually work at TV or radio stations and are responsible for overseeing the transmission of signals and the automation of broadcast programs.', 'CID_81'),
('CIJID_23', 'Economic Development Officer ', 'An economic development officer\'s duties can range from co-ordinating, running, and supervising economic development programs to matching business investment opportunities with investors. This job is not about creating new businesses or jobs. It is about creating an environment where business and investment can thrive.', 'CID_8'),
('CIJID_230', 'Telecommunications Engineer', 'Telecommunication engineers usually work at telecommunication companies (e.g. PLDT/Digitel) designing and overseeing the installation of telecommunications equipment and facilities.', 'CID_81'),
('CIJID_231', 'Computer Systems Engineer', 'Computer systems engineers work for different companies specializing in different fields. They work out specific computer systems that match the company\'s operational needs.', 'CID_81'),
('CIJID_232', 'Surveyor', 'measure land features, such as depth and shape, based on reference points. They examine previous land records to verify data from on-site surveys. Surveyors also prepare maps and reports, and present results to clients.', 'CID_82'),
('CIJID_233', 'Geodetic Engineer ', 'gathering physical data on the surface of the earth with the use of precision instruments. ', 'CID_82'),
('CIJID_234', 'Photogrammetrist', 'collect and verify data used in creating maps. Cartographers and photogrammetrists collect, measure, and interpret geographic information in order to create and update maps and charts for regional planning, education, and other purposes.', 'CID_82'),
('CIJID_235', 'Geological Engineer ', 'search for mineral deposits and evaluate possible sites. Once a site is identified, they plan how the metals or minerals will be extracted in efficient and environmentally sound ways.', 'CID_83'),
('CIJID_236', 'Business Consultant ', 'analyze organizational practices, identify weaknesses, and recommend solutions. Business consultants often specialize in specific areas such as marketing, human resources, management, engineering, or finance and provide expert advice on that topic.', 'CID_83'),
('CIJID_237', 'Project Manager', 'plan and develop the project idea. They need to create and lead the team, monitor project progress, set deadlines, solve issues that arise, manage money, ensure stakeholder satisfaction, and evaluate project performance, including the performance of their team members.', 'CID_84'),
('CIJID_238', 'Strategic Planner ', 'identify the long-and-short-term goals of a company and workable strategies to accomplish these goals. They assess the company\'s goals and identify areas for improvement.', 'CID_84'),
('CIJID_239', 'Process Developer ', 'develop new or improve current process flows diagrams, lists of rules and procedures. if necessary, find better technical tools (software) that should be used for process flow optimization.', 'CID_84'),
('CIJID_24', 'Government Policy Analyst ', 'Policy analysts review and analyze political, economic, and social events. They raise public awareness of issues and shape government or organizational policy.', 'CID_8'),
('CIJID_240', 'Chief Marine Engineer', 'head of a vessel\'s technical department and operations. Their overall function is to make sure that all of the machinery in the engine room is in good working order to facilitate a problem-free voyage.', 'CID_85'),
('CIJID_241', 'Second Marine Engineer ', 'schedule and direct maintenance inside the engine room. it is the second engineer\'s responsibility to report on the plant conditions and needs.', 'CID_85'),
('CIJID_242', 'O.I.C. of an Engineering Watch ', 'shall ensure that the established watchkeeping arrangements are maintained and that, under direction, engine-room ratings, if forming part of the engineering watch, assist in the safe and efficient operation of the propulsion machinery and auxiliary equipment.', 'CID_85'),
('CIJID_243', 'Mineral Resource Development Operation and Management ', 'Responsible for all technical input for mine planning, design and scheduling, the geological and geotechnical models, hydrology, grade control, planning, drill and blast design, blending and survey activities for the mine.', 'CID_86'),
('CIJID_244', 'Mine Research and Development ', 'oversee research activities and develop knowledge-based products for a company. They develop research programs incorporating current developments to improve existing products and study the potential of new products.', 'CID_86'),
('CIJID_245', 'Mine Environmental and Enhancement Services ', 'Oversee the preparation and implementation of the Environmental Programs of the company.', 'CID_86'),
('CIJID_246', 'Sanitary Engineer Construction ', 'Inspect project sites to monitor progress and ensure conformance to design specifications and safety or sanitation standards.', 'CID_87'),
('CIJID_247', 'Manager/Engineer ', 'plan, coordinate and oversee the technical and engineering activities of an organization. They are responsible for planning engineering projects and overseeing the efficient running of projects.', 'CID_87'),
('CIJID_248', 'Environmental Engineer ', 'Environmental engineers use the principles of engineering, soil science, biology, and chemistry to develop solutions to environmental problems.', 'CID_87'),
('CIJID_249', 'News Editor ', 'curates and reviews content by other journalists to be published online, in newspapers or other forms of print media.', 'CID_88'),
('CIJID_25', 'Clinical Psychologist', 'Clinical psychologists assess, diagnose, and treat mental, emotional, and behavioral disorders. Clinical psychologists help people deal with problems ranging from short-term personal issues to severe, chronic conditions. Clinical psychologists are trained to use a variety of approaches to help individuals.', 'CID_9'),
('CIJID_250', 'Media Researcher ', 'support producers by finding information, people and places for television or radio programmes.', 'CID_88'),
('CIJID_251', 'News Analyst ', 'keep the public updated about current events and noteworthy information.', 'CID_88'),
('CIJID_252', 'Scriptwriter', 'creates blueprints and details of the script based on concepts or ideas. He/She develops story elements to translate the creative vision into stories for production, with a deep understanding of the storyline and target audience.', 'CID_89'),
('CIJID_253', 'Copywriter', 'writes clear, concise copy for ads and marketing materials. They work closely alongside web and graphic designers to ensure their message is clear, whether in an email inbox or a website landing page.', 'CID_89'),
('CIJID_254', 'Journalist', 'research, write, edit, proofread and file news stories, features and articles. Their pieces are used on television and radio or within magazines, journals and newspapers, in print and online.', 'CID_89'),
('CIJID_255', 'Public Relations Officer ', 'responds to requests for information from media outlets. They aim to maintain the positive image of an organization or client.', 'CID_90'),
('CIJID_256', 'Communication Researcher ', 'Research and write press releases, and content for the company website, infographics, blogs, and newsletters.', 'CID_90'),
('CIJID_257', 'Communication Analyst ', 'duties as a communications analyst include monitoring information system networks, troubleshooting communications equipment, and determining the structure of a computer network system.', 'CID_90'),
('CIJID_258', 'Foreign Service Officer ', 'Foreign Service Officers are key interlocutors with foreign governments, engage with foreign citizens.', 'CID_91'),
('CIJID_259', 'Ambassador', 'helps to promote a company\'s products, messaging, and image. Their purpose is to develop an efficient image by interacting with consumers.', 'CID_91'),
('CIJID_26', 'Human Resources Personnel ', 'A Human Resources (HR) Officer is responsible for managing every aspect of the employment process, including orientation and training new staff members. They also assist with payroll management, so employees receive their paychecks on time.', 'CID_9'),
('CIJID_260', '', 'TranslReading material and researching industry-specific terminology. Converting text and audio recordings in one language to one or more others. Ensuring translated texts conveys original meaning and tone.', 'CID_91'),
('CIJID_261', 'Project Coordinator ', 'responsible for ensuring the schedule, budget and details of a given task are well organized. They communicate with various departments to keep everyone on board about any changes to the project plan.', 'CID_92'),
('CIJID_262', 'Interpreter', 'interpret verbal communication from one language to another, and act as mediums where language barriers exist.', 'CID_92'),
('CIJID_263', 'International Trade Researcher', 'These individuals provide guidance to businesses involved in, or seeking involvement in, international trade by conducting research into foreign markets, import and export laws, and other relevant data points.', 'CID_92'),
('CIJID_264', 'Ambassador', 'helps to promote a company\'s products, messaging, and image. Their purpose is to develop an efficient image by interacting with consumers.', 'CID_93'),
('CIJID_265', 'Foreign Service Officer ', 'Foreign Service Officers are key interlocutors with foreign governments, engage with foreign citizens, and inform.', 'CID_93'),
('CIJID_266', 'Politician', 'As persons having the power to legislate and who represent the people, politicians will carry out their responsibility for oversight, to ensure that public administration is conducted impartially and neutrally', 'CID_93'),
('CIJID_267', 'Emergency Management Director', 'Emergency management directors prepare plans and procedures for responding to natural disasters or other emergencies. They also help lead the response during and after emergencies.', 'CID_94'),
('CIJID_268', 'Law Enforcement Officer', 'Police officers protect lives and property. Detectives and criminal investigators gather facts and collect evidence of possible crimes', 'CID_94'),
('CIJID_269', 'Correctional Officer', 'Correctional officers oversee those who have been arrested and are awaiting trial or who have been sentenced to serve time in jail or prison.', 'CID_94'),
('CIJID_27', 'Community Developer ', 'Community development workers help individuals, families or whole communities to bring about social change and improve the quality of life in their local area. They act as the link between communities and a range of other local authority and voluntary sector providers, such as the police, social workers and teachers.', 'CID_9'),
('CIJID_270', 'Human Resource Developer ', 'complete and oversee a variety of professional assignments to plan, develop, conduct, and/or evaluate training and development or other informational programs.', 'CID_95'),
('CIJID_271', 'Program Developer ', 'Researching, designing, implementing, and managing software programs. Identifying areas for modification in existing programs and subsequently developing these modifications. Writing and implementing efficient code.', 'CID_95'),
('CIJID_272', 'Project Manager ', 'plan and develop the project idea. They need to create and lead the team, monitor project progress, set deadlines, solve issues that arise, manage money, ensure stakeholder satisfaction, and evaluate project performance, including the performance of their team members.', 'CID_95'),
('CIJID_28', 'Law Enforcer ', 'Deterring crimes and assure community through high-visibility policing. Patrolling assigned areas and monitor activities to protect people/property. Investigating crimes and apprehending suspected law violators.', 'CID_10'),
('CIJID_29', 'Forensic Scientist ', 'Forensic scientists analyse evidence from crime scenes and create detailed scientific reports for legal proceedings. They spend much time in laboratories examining traces of evidence; their findings can then be used to associate or disassociate suspects with victims or crime scenes.', 'CID_10'),
('CIJID_3', 'Software Developer  ', 'A systems developer is a type of software developer. They develop and implement applications and programs for the backend processing systems used in businesses and organizations.', 'CID_1');
INSERT INTO `course_information_job` (`CIJID`, `JOB_NAME`, `INFORMATION`, `CID`) VALUES
('CIJID_30', 'Correctional Officer ', 'Correctional officers typically do the following: Enforce rules and keep order within jails or prisons. Supervise activities of people in custody. Inspect facilities to ensure that they meet security and safety standards. Conduct searches in the facility, such as of persons and property, for rule violations.', 'CID_10'),
('CIJID_31', 'Political Analyst ', 'Political analysts (also known as political scientists) study how political systems originate, develop, and operate. They research and analyze governments, political ideas, policies, political trends, and foreign relations.', 'CID_11'),
('CIJID_32', 'Program Coordinator ', 'A Program Coordinator is a professional who is responsible for overseeing projects and programs within an organization. They will plan and implement these projects with strong time management skills and team synergy with their assistants.', 'CID_11'),
('CIJID_33', 'Executive Assistant ', 'An Executive Assistant is a professional responsible for managing the schedules and communications of key executives in their company. They prioritize emails and phone calls and arrange meetings and business events.', 'CID_11'),
('CIJID_34', 'College Instructor ', 'Teach and supervise students using lectures, demonstrations, discussion groups, laboratory workshop sessions, seminars, case studies, field assignments and independent or group projects. Develop curriculum and prepare teaching materials and course outlines.', 'CID_12'),
('CIJID_35', 'Quality Assurance Specialist Proofreader ', 'A Proofreader /Quality Assurance Specialist reviews medical/legal reports (Accident Benefits, Catastrophic, Torts) to make sure that the final product is of the highest quality. The job requires attention to detail, fact checking, research and excellent customer service.', 'CID_12'),
('CIJID_36', 'Speech Writer ', 'Speech Writer develops and writes speeches, briefings, and other communications for executives. Translates the ideas, objectives, corporate position, and management philosophy into messaging that relates to the topic, speaker, and intended audience.', 'CID_12'),
('CIJID_37', 'College Instructor Linguist ', 'for the preparation of lectures and of exams, for grading papers and exams and for leading review and feedback sessions for the students. They also conduct academic research in their respective field of linguistics, publish their findings and liaise with other university colleagues.', 'CID_13'),
('CIJID_38', 'Translator / Interpreter Writer ', 'Reading material and researching industry-specific terminology. Converting text and audio recordings in one language to one or more others. Ensuring translated texts conveys original meaning and tone.', 'CID_13'),
('CIJID_39', 'Proofreader Copy Editor ', 'As a copy-editor or proofreader you\'ll ensure that material is clear, consistent, complete and credible, and that text is well written, grammatically correct and accessible. You\'ll take the initial material, or the copy, and make it ready for publication. You\'ll work on a range of publications, including: books.', 'CID_13'),
('CIJID_4', 'Historical Consultant ', 'A historical consultant is a professional who helps conduct research and verify the accuracy of existing information. They may travel to assist organizations across the country to help them learn more about historical landmarks, artwork or cultures.', 'CID_2'),
('CIJID_40', 'Customer Service Representative  ', 'A Customer Service Representative works with clients who have complaints, orders, or require information about products/services purchased from the organization. They also provide solutions that fit those individualized situations and prioritize the customers\' needs at each step of the process.', 'CID_14'),
('CIJID_41', 'Quality Assurance Specialist  ', 'A Quality Assurance Specialist is a professional who is responsible for monitoring, inspecting and proposing measures to correct or improve an organization\'s final products in order to meet established quality standards.', 'CID_14'),
('CIJID_42', 'Editorial Assistant ', 'An Editorial Assistant provides administrative support to the editorial team (including writing minutes, invoicing and diary management) and throughout the editorial process from manuscript to publication.', 'CID_14'),
('CIJID_43', 'Anthropologist', 'Anthropologists and archeologists study the origin, development, and behavior of humans. They examine the cultures, languages, archeological remains, and physical characteristics of people in various parts of the world.', 'CID_15'),
('CIJID_44', 'Museum Curator', 'Evaluating loan requests and preparing loaned items for shipment. Researching specimens and artifacts in a collection to identify and authenticate. Giving presentations and conducting educational tours. Cataloging, inventorying and maintaining records on collections according to DOI museum collections standards.', 'CID_15'),
('CIJID_45', 'Consultant ', 'Essentially, they are hired to share their expertise and knowledge to help businesses reach goals and solve problems. Sometimes, companies bring on consultants to perform day-to-day work and augment or supplement staff, without the overhead costs associated with a full-time employee.', 'CID_15'),
('CIJID_46', 'Sociologist ', 'Sociologists study human behavior, interaction, and organization. They observe the activity of social, religious, political, and economic groups, organizations, and institutions. They examine the effect of social influences, including organizations and institutions, on different individuals and groups.', 'CID_16'),
('CIJID_47', 'College instructor ', ' Teach and supervise students using lectures, demonstrations, discussion groups, laboratory workshop sessions, seminars, case studies, field assignments and independent or group projects. Develop curriculum and prepare teaching materials and course outlines.', 'CID_16'),
('CIJID_48', 'Consultant ', 'Essentially, they are hired to share their expertise and knowledge to help businesses reach goals and solve problems. Sometimes, companies bring on consultants to perform day-to-day work and augment or supplement staff, without the overhead costs associated with a full-time employee.', 'CID_16'),
('CIJID_49', 'Filipino Teacher ', 'They provide focused teaching programs that meet curriculum and assessment requirements. They display skills in planning, implementing and managing learning programs. They actively engage in collaborative learning with the professional community and other stakeholders for mutual growth and advancement.', 'CID_17'),
('CIJID_5', 'Legal Aide ', 'To advise clients as to their legal rights and obligations, and as to the working of the legal system in so far as it is relevant to those rights and obligations. To assist clients in every appropriate way, taking legal action to protect their interests. ', 'CID_2'),
('CIJID_50', 'Writer ', 'Write fiction or nonfiction scripts, biographies, and other formats. Conduct research to get factual information and authentic detail. Write advertising copy for newspapers, magazines, broadcasts, and the Internet. Present drafts to editors and clients for feedback.', 'CID_17'),
('CIJID_51', 'Interpreter ', 'Interpreters interpret verbal communication from one language to another, and act as mediums where language barriers exist. At times, Interpreters translate written communication from one language to another. Interpreters work in education, health care, insurance, legal and other industries.', 'CID_17'),
('CIJID_52', 'Questioned Documents Examiner ', 'document examiner makes scientific examinations, comparisons, and analyses of documents in order to: 1) establish genuineness or non-genuineness, 2) reveal alterations, additions, or deletions, 3) identify or eliminate persons as the source of handwriting, 4) identify or eliminate the source of machine produced documents, 5) visualize other impressions, marks, or relevant evidence of any kind, and 6) write reports and give testimony.  Other problems may involve the decipherment, restoration, or enhancement of obscured, deleted, or damaged parts of documents.', 'CID_18'),
('CIJID_53', 'Forensic Psychologist ', 'A Forensic Psychologist, sometimes referred to as a Criminal Profiler, works with law enforcement agencies to develop a brief profile of criminals, based on common psychological traits. In their line of work they study the behavior of criminals and address anything from psychological theories to legal issues.', 'CID_18'),
('CIJID_54', 'Forensic Pathologist ', 'The forensic pathologist is specially trained: to perform autopsies to determine the presence or absence of disease, injury or poisoning; to evaluate historical and law-enforcement investigative information relating to manner of death; to collect medical evidence, such as trace evidence and secretions, to document sexual assault; and to reconstruct how a person received injuries.', 'CID_18'),
('CIJID_55', 'Translator ', 'Reading material and researching industry-specific terminology. Converting text and audio recordings in one language to one or more others. Ensuring translated texts conveys original meaning and tone.', 'CID_19'),
('CIJID_56', 'Business Consultant ', 'Business consultants analyze organizational practices, identify weaknesses, and recommend solutions. Business consultants often specialize in specific areas such as marketing, human resources, management, engineering, or finance and provide expert advice on that topic.', 'CID_19'),
('CIJID_57', 'Foreign Diplomat ', 'Diplomats are responsible for overseeing international relations regarding peace deals, trade and economics, culture, human rights, and the environment. Their work also includes negotiating treaties and international agreements, long before politicians endorse them.', 'CID_19'),
('CIJID_58', 'Environmental Impact Assessor ', 'The EIA Specialist will assess the potential environmental, human health and social impacts during USAID activity development and implementation, and identify practical environmental protection and mitigation strategies, as required by USAID environmental compliance procedures.', 'CID_20'),
('CIJID_59', 'Environmental Officer ', 'Environmental officers are responsible for monitoring and enforcing health and hygiene legislation. They also investigate when there\'s an incident, such as pollution, a noise problem, toxic contamination, pest infestation or an outbreak of food poisoning.', 'CID_20'),
('CIJID_6', 'Diplomatic Service ', 'monitor and analyse overseas events. develop policies and strategies towards different countries. deal with press and communications at home and abroad.', 'CID_2'),
('CIJID_60', 'Environmental Consultant ', 'Environmental consultants provide expert assessment and advisory services for their clients on matters pertaining to the management of environmental issues. In doing so, these guys play an integral role in reducing the detrimental impact of industrial, commercial and government initiatives on the environment.', 'CID_20'),
('CIJID_61', 'Farm Supervisor  ', 'Farm supervisors perform some or all of the following duties: Co-ordinate, assign and supervise the work of general farm workers and harvesting labourers. Supervise and oversee breeding and other livestock-related programs. Supervise, monitor and enforce procedures to maintain animal and crop health and welfare.', 'CID_21'),
('CIJID_62', 'Farm Manager Horticulturist ', 'Horticulture Farm Managers are often responsible for all aspects of plant care, facility repair and maintenance at the site. They are also in-charge of marketing and selling the horticulture products as well.', 'CID_21'),
('CIJID_63', 'Processing Plant Manager Entomologist ', 'An entomologist is a type of scientist who focuses specifically on the study of insects. They examine growth, behavior, nutrition and how they interact with plants. Additionally, they design and implement research plans to support the selection of new insecticide products.', 'CID_21'),
('CIJID_64', 'Fisheries Management ', 'Fishery Managers oversee the activities that occur at a fishery, which includes but is not limited to: screening cultivation areas, monitoring fish growth, maintaining equipment, prepping food, distributing medications, and coordinate with other managers in affiliated fisheries.', 'CID_22'),
('CIJID_65', 'Fisheries Research ', 'Conducting, analysing and validating results of research projects and developing new research projects by undertaking forward planning and consultation that will meet anticipated information needs into the future.', 'CID_22'),
('CIJID_66', 'Fisheries Instruction ', 'As a fishing instructor, your duties are to provide your clients with fishing lessons. This includes showing them the basics of how to properly bait a hook and helping them to understand how to pick the appropriate lure for a given type of fishing.', 'CID_22'),
('CIJID_67', 'Volcanologist Seismologist ', 'Volcanologists monitor activity around active volcanoes, looking for signs that the magma chamber is expanding or that pressure is building up. They use a variety of tools, such as seismographs to measure earthquakes or other seismic activity and GPS devices to measure changes in a volcano\'s height.', 'CID_23'),
('CIJID_68', 'Geological Engineer ', 'Geological engineers search for mineral deposits and evaluate possible sites. Once a site is identified, they plan how the metals or minerals will be extracted in efficient and environmentally sound ways. Mining engineers often specialize in one particular mineral or metal, such as coal or gold.', 'CID_23'),
('CIJID_69', 'Environmental Lawyer ', 'An environmental lawyer works to represent clients in legal issues such as in clean technology, water law, climate change law and the management of land subject to native title and other public land. Environment laws are a large and complex specialty within the practice of law.', 'CID_23'),
('CIJID_7', 'Management Trainee ', 'A management trainee works under the supervision of managers and executives in organizations. Their goal is to acquire all essential knowledge to become future managers, often in particular fields, such as marketing, sales, or operations.', 'CID_3'),
('CIJID_70', 'Biological Laboratory Technician ', 'Biological technicians typically do the following: Set up, maintain, and clean laboratory instruments and equipment, such as microscopes, scales, pipets, and test tubes. Gather and prepare biological samples, such as blood, food, and bacteria cultures, for laboratory analysis. Conduct biological tests and experiments.', 'CID_24'),
('CIJID_71', 'pharmaceutics ', 'Provides pharmacy services to patients/medical practitioners. Receives, compounds, fills prescriptions, dispenses pharmaceuticals, consults with clients regarding the nature and use of drugs, and trains and/or supervises personnel.', 'CID_24'),
('CIJID_72', 'College Instructor ', 'Teach and supervise students using lectures, demonstrations, discussion groups, laboratory workshop sessions, seminars, case studies, field assignments and independent or group projects. Develop curriculum and prepare teaching materials and course outlines.', 'CID_24'),
('CIJID_73', 'Forensic Scientist Research Technician  ', 'orensic science technicians typically do the following: Perform chemical, biological, and microscopic analyses on evidence taken from crime scenes. Explore possible links between suspects and criminal activity, using the results of DNA or other scientific analyses.', 'CID_25'),
('CIJID_74', 'Geneticist ', 'The Geneticist will research and study the inheritance of traits at the molecular, organism or population level and may evaluate or treat patients with genetic disorders.', 'CID_25'),
('CIJID_75', 'Toxicologist  ', 'A toxicologist is a scientist who has a strong understanding of many scientific disciplines, such as biology and chemistry, and typically works with chemicals and other substances to determine if they are toxic or harmful to humans and other living organisms or the environment.', 'CID_25'),
('CIJID_76', 'Cadet Engineers ', 'The Cadet Engineer is responsible for learning system functionality and established standards & procedures on plant equipment in accordance with sound engineering principles, safety regulations and company policies & procedures.', 'CID_26'),
('CIJID_77', 'Science Research Specialist ', 'Formulating and conducting scientific experiments, performing data collection, and analyzing and evaluating test and research results. Replicating, evaluating, and refining research strategies and approaches and recommending improvements, and testing, customizing, and implementing new methods and procedures.', 'CID_26'),
('CIJID_78', 'Biophysicist ', 'biophysicists play a key role in developing new medicines to fight diseases such as cancer. Biochemists and biophysicists study the chemical and physical principles of living things and of biological processes, such as cell development, growth, heredity, and disease.', 'CID_26'),
('CIJID_79', 'Process Engineer ', 'A Process Engineer, or Manufacturing Process Engineer, designs and implements systems and equipment procedures used manufacturing facilities. Their main duties include testing and monitoring equipment, updating current system processes and conducting risk assessments.', 'CID_27'),
('CIJID_8', 'Professor ', 'Developing curricula and delivering course material. Conducting research, fieldwork, and investigations, and writing up reports. Publishing research, attending conferences, delivering presentations, and networking with others in the field.', 'CID_3'),
('CIJID_80', 'Cadet Engineers ', 'The Cadet Engineer is responsible for learning system functionality and established standards & procedures on plant equipment in accordance with sound engineering principles, safety regulations and company policies & procedures.', 'CID_27'),
('CIJID_81', 'Production Engineer ', 'Production or Plant Engineers plan, direct and coordinate the design, construction, modification, continued performance and maintenance of equipment and machines in industrial plants, and the management and planning of manufacturing activities.', 'CID_27'),
('CIJID_82', 'Analytical Chemist ', 'Analytical chemists assess the chemical structure and nature of substances. Their skills are needed for a variety of purposes including drug development, forensic analysis and toxicology. Analytical chemists can specialise in areas as varied as toxicology, pharmaceuticals and forensics.', 'CID_28'),
('CIJID_83', 'Laboratory Chemist', 'Laboratory Chemists conduct experiments in labs in order to analyze substances, develop new products or improve existing ones. They may specialize in one or more areas, such as organic chemistry, inorganic chemistry and biochemistry.', 'CID_28'),
('CIJID_84', 'Research and Development Specialist', 'A research specialist provides research and analysis for industry-specific labor and employee relations information. The research specialist designs, executes, and interprets research projects, and performs complex laboratory and data collection techniques.', 'CID_28'),
('CIJID_85', 'Network Administrator', 'Network administrators are responsible for maintaining computer networks and solving any problems that may occur with them. Typical responsibilities of the job include: installing and configuring computer networks and systems. identifying and solving any problems that arise with computer networks and systems.', 'CID_29'),
('CIJID_86', 'Database Manager ', 'Database managers develop and maintain organizations\' databases. They create data storage and retrieval systems, troubleshoot database issues, and implement database recovery procedures and safety protocols. They also supervise the daily activities of database teams.', 'CID_29'),
('CIJID_87', 'Technical Support Specialist  ', 'Technical support specialists are responsible for providing assistance for technical problems, including software and hardware issues. They are troubleshooting experts and handle a broad range of technical complications such as connection issues and unresponsive applications.', 'CID_29'),
('CIJID_88', 'Database Designer ', 'The database designer is responsible for defining the detailed database design, including tables, indexes, views, constraints, triggers, stored procedures, and other database-specific constructs needed to store, retrieve, and delete persistent objects. This information is maintained in the Artifact: Data Model.', 'CID_30'),
('CIJID_89', 'Database Administrator ', 'Database Administrators ensure that the databases run efficiently and securely. For example, they create or organize systems to store different data types, such as financial information and customer shipping records. They also make sure authorized users can access this information when needed.', 'CID_30'),
('CIJID_9', 'Writer ', 'Write fiction or nonfiction scripts, biographies, and other formats. Conduct research to get factual information and authentic detail. Write advertising copy for newspapers, magazines, broadcasts, and the Internet.', 'CID_3'),
('CIJID_90', 'Systems Developer ', 'This specialty covers the design, development, installation, implementation, modification, and support of new or existing applications software.', 'CID_30'),
('CIJID_91', 'Statistician ', 'A statistician gathers numerical data and then displays it, helping companies to make sense of quantitative data and to spot trends and make predictions. Typical responsibilities of the job include: designing data acquisition trials. assessing results.', 'CID_31'),
('CIJID_92', 'Business Intelligence Head  ', 'The Business Intelligence (BI) Manager works with commercial team to determine data requirements and provide creative, data-driven visualization and solutions to support the strategic business decision-making, reporting, and marketing activities of the Alliance.', 'CID_31'),
('CIJID_93', 'Financial Systems Consultant', 'Financial consultants typically advise clients on a range of financial services and decisions, including budgeting, saving for big purchases, retirement planning, investing, and trust and estate planning. Mention the types of advice your financial consultants provide so that qualified candidates apply.', 'CID_31'),
('CIJID_94', 'Quality Analyst Programs Analyst ', 'QA analysts look for flaws and weaknesses in the program. Quality assurance analysts – also known as localisation analysts and test analysts – test programs, games and any software to make sure they are reliable, fully functional and user-friendly before they are released to the public.', 'CID_32'),
('CIJID_95', 'Workforce Analyst ', 'Workforce analysts interpret, analyze, read, and make recommendations that improve a workforce with an eye on reducing overhead and increasing customer satisfaction and experience. They serve as a primary point of contact for workforce management policies and are subject matter experts on workforce optimization steps.', 'CID_32'),
('CIJID_96', 'Research Executive  ', 'The Research Executive analyses and presents market insights and trends for product and experience development. He/She manages research and development activities, and develops robust methods to gather and process data which provide industry insights and support knowledge sharing.', 'CID_32'),
('CIJID_97', 'Market Research Assistant  ', 'A Marketing Research Assistant links the consumers, customers, and end users to the marketer through information. They are responsible to obtaining the information used to identify and define marketing opportunities and problems; generate, refine, and evaluate marketing actions.', 'CID_33'),
('CIJID_98', 'Business Analyst', 'Business analysts assess how organisations are performing and help them improve their processes and systems. They conduct research and analysis in order to come up with solutions to business problems and help to introduce these solutions to businesses and their clients.', 'CID_33'),
('CIJID_99', 'Risk Analyst Data  ', 'Risk analysts examine a firm\'s investment portfolios, including overseas investments, and analyze the risk involved in associated decisions. They use their analytical skills to project potential losses, and make recommendations to limit risk through diversification, currency exchanges and other investment strategies.', 'CID_33');

-- --------------------------------------------------------

--
-- Table structure for table `course_percentage`
--

CREATE TABLE `course_percentage` (
  `CPID` varchar(20) NOT NULL,
  `MATH` int(20) NOT NULL,
  `SCIENCE` int(20) NOT NULL,
  `ENGLISH` int(20) NOT NULL,
  `READING_COMPREHENSION` int(20) NOT NULL,
  `CID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_percentage`
--

INSERT INTO `course_percentage` (`CPID`, `MATH`, `SCIENCE`, `ENGLISH`, `READING_COMPREHENSION`, `CID`) VALUES
('CPID_1', 15, 15, 30, 40, 'CID_2'),
('CPID_10', 15, 20, 25, 40, 'CID_11'),
('CPID_11', 10, 10, 60, 20, 'CID_12'),
('CPID_12', 20, 20, 30, 30, 'CID_13'),
('CPID_13', 20, 20, 30, 30, 'CID_14'),
('CPID_14', 10, 20, 30, 40, 'CID_15'),
('CPID_15', 10, 20, 35, 35, 'CID_16'),
('CPID_16', 20, 20, 30, 30, 'CID_17'),
('CPID_17', 30, 50, 10, 10, 'CID_18'),
('CPID_18', 10, 20, 35, 35, 'CID_19'),
('CPID_19', 30, 30, 20, 20, 'CID_20'),
('CPID_2', 10, 10, 40, 40, 'CID_3'),
('CPID_20', 30, 50, 10, 10, 'CID_21'),
('CPID_21', 40, 30, 15, 15, 'CID_22'),
('CPID_22', 40, 50, 5, 5, 'CID_23'),
('CPID_23', 25, 60, 10, 15, 'CID_24'),
('CPID_24', 35, 40, 10, 15, 'CID_25'),
('CPID_25', 50, 40, 5, 5, 'CID_26'),
('CPID_26', 50, 30, 5, 15, 'CID_27'),
('CPID_27', 30, 30, 20, 20, 'CID_28'),
('CPID_28', 30, 30, 20, 20, 'CID_29'),
('CPID_29', 40, 30, 10, 20, 'CID_30'),
('CPID_3', 20, 30, 20, 30, 'CID_4'),
('CPID_30', 60, 20, 10, 10, 'CID_31'),
('CPID_31', 70, 20, 5, 5, 'CID_32'),
('CPID_32', 50, 30, 10, 10, 'CID_33'),
('CPID_33', 30, 30, 20, 20, 'CID_34'),
('CPID_34', 30, 40, 15, 15, 'CID_35'),
('CPID_35', 25, 35, 20, 20, 'CID_36'),
('CPID_36', 40, 30, 10, 20, 'CID_37'),
('CPID_37', 30, 30, 20, 20, 'CID_38'),
('CPID_38', 35, 35, 15, 15, 'CID_39'),
('CPID_39', 40, 10, 20, 30, 'CID_40'),
('CPID_4', 20, 30, 20, 30, 'CID_5'),
('CPID_40', 40, 15, 30, 15, 'CID_41'),
('CPID_41', 35, 25, 15, 25, 'CID_42'),
('CPID_42', 40, 10, 30, 20, 'CID_43'),
('CPID_43', 30, 20, 25, 25, 'CID_44'),
('CPID_44', 20, 20, 30, 30, 'CID_45'),
('CPID_45', 30, 25, 20, 25, 'CID_48'),
('CPID_46', 20, 10, 30, 40, 'CID_49'),
('CPID_47', 40, 10, 10, 40, 'CID_50'),
('CPID_48', 35, 10, 15, 40, 'CID_51'),
('CPID_49', 25, 40, 10, 15, 'CID_52'),
('CPID_5', 20, 20, 30, 30, 'CID_6'),
('CPID_50', 15, 40, 10, 35, 'CID_53'),
('CPID_51', 10, 50, 20, 20, 'CID_54'),
('CPID_52', 25, 40, 10, 25, 'CID_55'),
('CPID_53', 30, 50, 10, 10, 'CID_56'),
('CPID_54', 20, 50, 10, 20, 'CID_57'),
('CPID_55', 30, 40, 15, 15, 'CID_58'),
('CPID_56', 25, 50, 10, 15, 'CID_59'),
('CPID_57', 25, 25, 25, 25, 'CID_60'),
('CPID_58', 25, 25, 25, 25, 'CID_61'),
('CPID_59', 10, 10, 40, 40, 'CID_62'),
('CPID_6', 10, 10, 40, 40, 'CID_7'),
('CPID_60', 30, 30, 20, 20, 'CID_1'),
('CPID_61', 40, 5, 15, 40, 'CID_46'),
('CPID_62', 10, 10, 40, 40, 'CID_47'),
('CPID_63', 15, 40, 10, 35, 'CID_63'),
('CPID_64', 35, 45, 10, 10, 'CID_64'),
('CPID_65', 40, 50, 5, 5, 'CID_65'),
('CPID_66', 40, 40, 10, 10, 'CID_66'),
('CPID_67', 40, 40, 10, 10, 'CID_67'),
('CPID_68', 40, 40, 10, 10, 'CID_68'),
('CPID_69', 15, 20, 40, 25, 'CID_69'),
('CPID_7', 40, 10, 20, 30, 'CID_8'),
('CPID_70', 10, 10, 40, 10, 'CID_70'),
('CPID_71', 10, 20, 30, 40, 'CID_71'),
('CPID_72', 30, 30, 20, 20, 'CID_72'),
('CPID_73', 10, 10, 40, 40, 'CID_73'),
('CPID_74', 30, 40, 20, 10, 'CID_74'),
('CPID_75', 25, 40, 15, 20, 'CID_75'),
('CPID_76', 40, 40, 10, 10, 'CID_76'),
('CPID_77', 40, 40, 10, 10, 'CID_77'),
('CPID_78', 40, 40, 10, 10, 'CID_78'),
('CPID_79', 40, 40, 10, 10, 'CID_79'),
('CPID_8', 30, 40, 15, 15, 'CID_9'),
('CPID_80', 50, 30, 10, 10, 'CID_80'),
('CPID_81', 40, 30, 15, 15, 'CID_81'),
('CPID_82', 50, 30, 10, 10, 'CID_82'),
('CPID_83', 40, 40, 10, 10, 'CID_83'),
('CPID_84', 40, 20, 20, 20, 'CID_84'),
('CPID_85', 50, 30, 10, 10, 'CID_85'),
('CPID_86', 40, 40, 10, 10, 'CID_86'),
('CPID_87', 30, 35, 15, 20, 'CID_87'),
('CPID_88', 5, 5, 60, 30, 'CID_88'),
('CPID_89', 5, 5, 60, 30, 'CID_89'),
('CPID_9', 20, 20, 30, 30, 'CID_10'),
('CPID_90', 5, 15, 50, 40, 'CID_90'),
('CPID_91', 15, 15, 50, 20, 'CID_91'),
('CPID_92', 15, 15, 30, 40, 'CID_92'),
('CPID_93', 15, 15, 30, 40, 'CID_93'),
('CPID_94', 30, 30, 20, 20, 'CID_94'),
('CPID_95', 10, 30, 20, 40, 'CID_95');

-- --------------------------------------------------------

--
-- Table structure for table `eq_english`
--

CREATE TABLE `eq_english` (
  `EQID` varchar(255) NOT NULL,
  `Question` text NOT NULL,
  `Choice_A` varchar(255) NOT NULL,
  `Choice_B` varchar(255) NOT NULL,
  `Choice_C` varchar(255) NOT NULL,
  `Choice_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_english`
--

INSERT INTO `eq_english` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`) VALUES
('EQEID_1', 'Many times, a formal report is read by:', 'Various Audiences at Various Levels of a Business', 'Non-Technical Audience', 'Science Professor', 'General Public', 'Various Audiences at Various Levels of a Business'),
('EQEID_10', 'What technique has the advantage of giving unfiltered record of an observation and facilitates repeated analysis of such observations?', 'Video and Audio Recordings	', 'Notetaking', 'Photography', 'Illustrations and Drawings', 'Video and Audio Recordings'),
('EQEID_2', 'Changes the words or phrasing of a passage but retain and fully communicates the original meaning.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Paraphrasing'),
('EQEID_3', 'These are papers presented in scholastic conferences, and may be revised as articles for possible publication in scholarly journals.', 'Academic Journal', 'Theses and Dissertations', 'Conference Papers', 'Manuscripts and Abstracts', 'Conference Papers'),
('EQEID_4', 'The purpose is just to pique the interest of the target audience. Condense information into 15 – 30% of the original text. (Ex. Publishing companies, libraries, and movie catalogues.)\r\n', 'Summative Abstract	', 'Descriptive Abstract', 'APA Abstract', 'MLA Abstract', 'Descriptive Abstract'),
('EQEID_5', 'In this format, the summarized idea comes after the citation. The author’s name/s is/are connected by an appropriate reporting verb.\r\n', 'In-Text Citation', 'Coverage', 'Reporting Verb', 'Author-Heading Format', 'Author-Heading Format'),
('EQEID_6', 'A research paper does not use any citation, does not include specific result statistics, and is last to be written.', 'Quantitative Abstract	', 'Qualitative Abstract', 'Descriptive Abstract', 'Research Abstract', 'Research Abstract'),
('EQEID_7', 'When the information can be view properly and not limited to fees, browser technology, or software requirements refer to what criteria in evaluating sources.\r\n', 'Coverage', 'Topic Sentence', 'Theses', 'Articles', 'Coverage'),
('EQEID_8', 'What part of a long technical report serves as the navigation device by presenting a list of heading and subheadings together with their respective page numbers?', 'Table of Contents', 'Letter of Transmittal', 'Title Page', 'Executive Summary', 'Table of Contents'),
('EQEID_9', 'What paper presents the writer’s stance or point of view regarding an issue, thereby requiring authority and confidence?', 'Concept Paper', 'Position Paper', 'Technical Report', 'Field Report', 'Position Paper');

-- --------------------------------------------------------

--
-- Table structure for table `eq_math`
--

CREATE TABLE `eq_math` (
  `EQID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Question` text NOT NULL,
  `Choice_A` varchar(255) NOT NULL,
  `Choice_B` varchar(255) NOT NULL,
  `Choice_C` varchar(255) NOT NULL,
  `Choice_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_math`
--

INSERT INTO `eq_math` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`) VALUES
('EQMID_1', 'Which of the following is a distribution with a mean of 0 and a standard deviation of 1?', 'Normal Distribution', 'Sampling Distribution', 'Standard Normal Distribution', 'Probability Distribution', 'Standard Normal Distribution'),
('EQMID_10', 'Which of the following CANNOT be considered as a probability sampling?', 'Systematic Sampling', 'Judgement Sampling	', 'Cluster Sampling', 'Stratified Sampling', 'Judgement Sampling	'),
('EQMID_2', 'Given the mean \"μ\" =45 and the standard deviation \"σ\" =6 of a population, find the X-value that corresponds to z=-1.00.', '36', '37', '38', '39', ' 39'),
('EQMID_3', 'Jane works for New York theatrical agency whose employees had an average income this past year of $48,000 with a standard deviation of $2,500. How much did Jane earn this past year if her z-score is -2.3?', '$46,500', '$45,600', '$42,250', '$45,060', '$42,250'),
('EQMID_4', 'Find the area between z=0.98 and z=2.58.', '0.1586', '0.9332', '0.0440', '0.8413', '0.1586'),
('EQMID_5', 'Four coins are tossed. Let Z be the random variable representing the number of heads that occur. Find the values of the random variable Z.', 'Z={0,1,2,3}', 'Z={1,2,3}', 'Z={0,1,2,3,4}	', 'Z={1,2,3,4}', 'Z={0,1,2,3,4}'),
('EQMID_6', 'Which of the following corresponds to the mean and standard deviation of the age of the applicants?', 'μ=20 and σ=4', 'μ=4 and σ=28', 'μ=28 and σ=4', 'μ=4 and σ=20', 'μ=28 and σ=4'),
('EQMID_7', 'Find the z-score that corresponds to the age of 20 years old.', 'z=-2.00	', 'z=2.00', 'z=1.50', 'z=2.56', 'z=-2.00	'),
('EQMID_8', 'If 500 students participated in a field demonstration, how many students belong to the upper 15% of the group?', '70 children', '75 children', '80 children', '85 children', '75 children'),
('EQMID_9', 'How do we call a sampling procedure that gives every element of the population an equal chance of being selected in the sample?', 'Quota Sampling', 'Convenience Sampling', 'Purposive Sampling', 'Random Sampling', 'Random Sampling');

-- --------------------------------------------------------

--
-- Table structure for table `eq_reading_comprehension`
--

CREATE TABLE `eq_reading_comprehension` (
  `EQID` varchar(255) NOT NULL,
  `Question` text NOT NULL,
  `Choice_A` varchar(255) NOT NULL,
  `Choice_B` varchar(255) NOT NULL,
  `Choice_C` varchar(255) NOT NULL,
  `Choice_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_reading_comprehension`
--

INSERT INTO `eq_reading_comprehension` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`) VALUES
('EQRCID_1', 'The stories are told almost entirely in dialogue simulating social network exchange', 'Digi-Fiction', 'Manga', 'Graphic Novel', 'Text-Talk Novel', 'Text-Talk Novel'),
('EQRCID_10', 'It is 50% of the narrative is presented without words and the reader must interpret the images to comprehend', 'Illustrated Novel', 'Manga', 'Doodle Fiction', 'Graphic Novel', 'Illustrated Novel'),
('EQRCID_2', 'It is defined as the circumstances that form the setting of events, statements or ideas and in the way of which it can be fully understood and assessed.', 'Imagery', 'Auditory Imagery', 'Kinesthetic Imagery', 'Context', 'Context'),
('EQRCID_3', 'What anecdote shares frightening stories of dangers that can be avoided by following regulations?', 'motivation', 'cautionary', 'reminiscence', 'entertainment', 'cautionary'),
('EQRCID_4', 'A 700-word story like Angels and Blueberries by Tara Campbell is a one-shot fiction that falls under this literary genre.', 'Flash Fiction', 'Blog', 'Hyper Poetry', 'Digi-Fiction', 'Flash Fiction'),
('EQRCID_5', 'The themes of this period was nationalism, life in the barrio, faith, love, religion and the arts.', 'Pre Colonial Literature', 'Philippine Literature during Spanish Colonization', 'Philippine Literature during American Colonization', 'Philippine Literature during Japanese Colonization', 'Philippine Literature during Japanese Colonization'),
('EQRCID_6', 'It is a type of Imagery that produced by the use of words that appeal to the actions and movement.', 'Imagery', 'Auditory Imagery', 'Kinesthetic Imagery', 'Context', 'Auditory Imagery'),
('EQRCID_7', 'Which literary themes writers explored a lot of subjects but the theme of love and youth persistence. They had also acquired mastery of English writing.', 'Pre Colonial Literature', 'Philippine Literature during Spanish Colonization', 'Philippine Literature during American Colonization', 'Philippine Literature during Japanese Colonization', 'Philippine Literature during American Colonization'),
('EQRCID_8', 'Before it was adapted into an anime, Yoshihiro Togashi’s Hunter X Hunter is a comic book series from Japan that falls under this literary genre.', 'Manga', 'Digi-Fiction', 'Graphic Novel', 'Illustrated Novel', 'Manga'),
('EQRCID_9', 'Which of the following is the reason why Philippine Literature during the Japanese regime came to a halt?', 'Filipino writers were imprisoned as mandated by the Japanese government.', 'Filipino writers were banned from using English or any language other than Nihonggo.', 'Filipino writers were charged high costs for producing or publishing texts under their names.', 'None of the above.', 'Filipino writers were banned from using English or any language other than Nihonggo.');

-- --------------------------------------------------------

--
-- Table structure for table `eq_science`
--

CREATE TABLE `eq_science` (
  `EQID` varchar(255) NOT NULL,
  `Question` text NOT NULL,
  `Choice_A` varchar(255) NOT NULL,
  `Choice_B` varchar(255) NOT NULL,
  `Choice_C` varchar(255) NOT NULL,
  `Choice_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_science`
--

INSERT INTO `eq_science` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`) VALUES
('EQSID_1', 'Which of these is the strongest intermolecular force of attraction?', 'Ionic Bond', 'Dipole-Dipole Forces', 'Hydrogen Bond', 'London Dispersion Forces', 'Hydrogen Bond'),
('EQSID_10', 'How does the temperature affect the rate of reaction?', 'By increasing the kinetic energy of the reactants', 'By decreasing the kinetic energy of the reactants', 'By increasing the potential energy of the reactants', 'By decreasing the potential energy of the reactants', 'By increasing the kinetic energy of the reactants'),
('EQSID_2', 'Which of the following molecules can exhibit hydrogen bond?', 'HF', 'HCI', 'NaF', 'NaBr', 'HF'),
('EQSID_3', 'Which of the following is the intermolecular force that is present in all types of the neighboring molecules?', 'Ionic Bond', 'Dipole-Dipole Forces', 'Hydrogen Bond', 'London Dispersion Forces', 'London Dispersion Forces'),
('EQSID_4', 'Which of the following macromolecules contains Nitrogen base?', 'Carbohydrates', 'Lipids', 'Protein ', 'Nucleic Acid', 'Nucleic Acid'),
('EQSID_5', 'Which of the following is NOT an example of carbohydrates?', 'Cellulose', 'Chitin', 'Starch', 'Sugar', 'Chitin'),
('EQSID_6', 'Which of the following is the function being performed by lipids in our body?', 'Contractile', 'Insulation', 'Structural', 'Transport', 'Insulation'),
('EQSID_7', 'Which of the following DOESN’T affect the rate of reaction?', 'Enzyme', 'Particle Size', 'Polarity', 'Reactant', 'Reactant'),
('EQSID_8', 'Which of the following is NOT a factor that affect the rate of reactions?', 'Temperature', 'Particle Size', 'Catalyst', 'Volume of Reactant', 'Volume of Reactant'),
('EQSID_9', 'What principles describes how different reaction happens at different rates?', 'Kinetic Molecular Theory', 'Collision Theory', 'Ideal Gas Law', 'Rate of Reaction', 'Collision Theory');

-- --------------------------------------------------------

--
-- Table structure for table `exam_informations`
--

CREATE TABLE `exam_informations` (
  `EID` varchar(255) NOT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `INSTRUCTION` text NOT NULL,
  `TOTAL_ITEMS` varchar(255) NOT NULL,
  `TIMELIMIT_MINUTE` varchar(255) NOT NULL,
  `TIMELIMIT_SECOND` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_informations`
--

INSERT INTO `exam_informations` (`EID`, `SUBJECT`, `INSTRUCTION`, `TOTAL_ITEMS`, `TIMELIMIT_MINUTE`, `TIMELIMIT_SECOND`) VALUES
('EID_1', 'Math', 'Choose the correct answer by solving each problem and \nselecting only the best answer from the options provided below.', '10', '15', '0'),
('EID_2', 'Science', 'Analyze the given table and sentence before the questions and select the appropriate answer for the questions below.', '10', '15', '0'),
('EID_3', 'English', 'Each sentence is followed by a series of questions. You will evaluate how the passage could be altered to improve the expression of concepts for some questions. Other questions will need you to examine how the piece could be altered to fix flaws in senten', '10', '15', '0'),
('EID_4', 'Reading_Comprehension', 'A series of questions follows each sentence or set of texts below. Choose the best response to each question based on what is stated or suggested in the passage after reading each passage or pair.', '10', '15', '0');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `ERID` varchar(255) NOT NULL,
  `MATH_SCORE` int(255) NOT NULL,
  `ENGLISH_SCORE` int(255) NOT NULL,
  `SCIENCE_SCORE` int(255) NOT NULL,
  `READING_COMPREHENSION_SCORE` int(255) NOT NULL,
  `TOTAL_SCORE` int(255) NOT NULL,
  `EXAM_RESULT` varchar(255) NOT NULL,
  `LRN` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`ERID`, `MATH_SCORE`, `ENGLISH_SCORE`, `SCIENCE_SCORE`, `READING_COMPREHENSION_SCORE`, `TOTAL_SCORE`, `EXAM_RESULT`, `LRN`, `DATE`) VALUES
('ERID_1', 7, 3, 7, 5, 22, 'Passed', '112233445566', '2023-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `ia_informations`
--

CREATE TABLE `ia_informations` (
  `IAIID` varchar(255) NOT NULL,
  `INSTRUCTION` varchar(255) NOT NULL,
  `EFID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ia_questions`
--

CREATE TABLE `ia_questions` (
  `IAQID` varchar(255) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  `HIP` varchar(255) NOT NULL,
  `IAIID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ia_questions`
--

INSERT INTO `ia_questions` (`IAQID`, `QUESTION`, `HIP`, `IAIID`) VALUES
('IAQID_1', 'do puzzles', 'Investigative', 'IAIID_1'),
('IAQID_10', 'influence or persuade people', 'Enterprising', 'IAIID_1'),
('IAQID_11', 'do experiments', 'Investigative', 'IAIID_1'),
('IAQID_12', 'teach or train people', 'Social', 'IAIID_1'),
('IAQID_13', 'help people solve their problems', 'Social', 'IAIID_1'),
('IAQID_14', 'take care of animals', 'Realistic', 'IAIID_1'),
('IAQID_15', 'have my day structured', 'Conventional', 'IAIID_1'),
('IAQID_16', 'sell things', 'Enterprising', 'IAIID_1'),
('IAQID_17', 'do creative writing', 'Artistic', 'IAIID_1'),
('IAQID_18', 'work on science projects', 'Investigative', 'IAIID_1'),
('IAQID_19', 'take on new responsibilities', 'Enterprising', 'IAIID_1'),
('IAQID_2', 'work on cars', 'Realistic', 'IAIID_1'),
('IAQID_20', 'heal people', 'Social', 'IAIID_1'),
('IAQID_21', 'figure out how things work', 'Investigative', 'IAIID_1'),
('IAQID_22', 'put things together or assemble models', 'Realistic', 'IAIID_1'),
('IAQID_23', 'be creative', 'Artistic', 'IAIID_1'),
('IAQID_24', 'pay attention to details', 'Conventional', 'IAIID_1'),
('IAQID_25', 'do filing or typing', 'Conventional', 'IAIID_1'),
('IAQID_26', 'learn about other cultures', 'Social', 'IAIID_1'),
('IAQID_27', 'analyze things like problems, situations or trends', 'Investigative', 'IAIID_1'),
('IAQID_28', 'play instruments or sing', 'Artistic', 'IAIID_1'),
('IAQID_29', 'dream about starting my own business', 'Enterprising', 'IAIID_1'),
('IAQID_3', 'attend concerts, theaters or art exhibits', 'Artistic', 'IAIID_1'),
('IAQID_30', 'cook', 'Realistic', 'IAIID_1'),
('IAQID_31', 'act in plays', 'Artistic', 'IAIID_1'),
('IAQID_32', 'think things through before making decisions', 'Realistic', 'IAIID_1'),
('IAQID_33', 'work with numbers or charts', 'Investigative', 'IAIID_1'),
('IAQID_34', 'have discussions about issues like politics or current events', 'Social', 'IAIID_1'),
('IAQID_35', 'keep records of my work', 'Conventional', 'IAIID_1'),
('IAQID_36', 'be a leader', 'Enterprising', 'IAIID_1'),
('IAQID_37', 'work outdoors', 'Realistic', 'IAIID_1'),
('IAQID_38', 'work in an office', 'Conventional', 'IAIID_1'),
('IAQID_39', 'work on math problems', 'Investigative', 'IAIID_1'),
('IAQID_4', 'work in teams', 'Social', 'IAIID_1'),
('IAQID_40', 'help people', 'Social', 'IAIID_1'),
('IAQID_41', 'draw', 'Artistic', 'IAIID_1'),
('IAQID_42', 'give speeches', 'Enterprising', 'IAIID_1'),
('IAQID_5', 'organize things like files, offices or activities', 'Conventional', 'IAIID_1'),
('IAQID_6', 'set goals for myself', 'Enterprising', 'IAIID_1'),
('IAQID_7', 'build things', 'Realistic', 'IAIID_1'),
('IAQID_8', 'read fiction, poetry or plays', 'Artistic', 'IAIID_1'),
('IAQID_9', 'have clear instructions to follow', 'Conventional', 'IAIID_1');

-- --------------------------------------------------------

--
-- Table structure for table `ia_result`
--

CREATE TABLE `ia_result` (
  `IAR` varchar(255) NOT NULL,
  `DEPARTMENT` varchar(255) NOT NULL,
  `ANSWER` varchar(255) NOT NULL,
  `INTEREST` varchar(255) NOT NULL,
  `IAQID` varchar(255) NOT NULL,
  `LRN` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `interest_assessment_result`
--

CREATE TABLE `interest_assessment_result` (
  `IARID` int(11) NOT NULL,
  `REALISTIC_SCORE` int(255) NOT NULL,
  `INVESTIGATIVE_SCORE` int(255) NOT NULL,
  `ARTISTIC_SCORE` int(255) NOT NULL,
  `SOCIAL_SCORE` int(255) NOT NULL,
  `ENTERPRISING_SCORE` int(255) NOT NULL,
  `CONVENTIONAL_SCORE` int(255) NOT NULL,
  `IA_RESULT` varchar(255) NOT NULL,
  `LRN` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interest_assessment_result`
--

INSERT INTO `interest_assessment_result` (`IARID`, `REALISTIC_SCORE`, `INVESTIGATIVE_SCORE`, `ARTISTIC_SCORE`, `SOCIAL_SCORE`, `ENTERPRISING_SCORE`, `CONVENTIONAL_SCORE`, `IA_RESULT`, `LRN`, `DATE`) VALUES
(32, 5, 2, 4, 5, 5, 6, 'R AND C', '112233445566', '2023-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `overall_result`
--

CREATE TABLE `overall_result` (
  `RID` int(255) NOT NULL,
  `MATH_OVERALL` varchar(255) NOT NULL,
  `SCIENCE_OVERALL` varchar(255) NOT NULL,
  `ENGLISH_OVERALL` varchar(255) NOT NULL,
  `READING_COMPREHENSION_OVERALL` varchar(255) NOT NULL,
  `LRN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overall_result`
--

INSERT INTO `overall_result` (`RID`, `MATH_OVERALL`, `SCIENCE_OVERALL`, `ENGLISH_OVERALL`, `READING_COMPREHENSION_OVERALL`, `LRN`) VALUES
(13, '1.3208', '1.8919', '1.0345', '1.6667', '112233445566');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `Picture_ID` int(255) NOT NULL,
  `Image` int(255) NOT NULL,
  `CPJID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_course`
--

CREATE TABLE `recommended_course` (
  `RCID` varchar(255) NOT NULL,
  `CID` varchar(255) NOT NULL,
  `RID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `save_answer`
--

CREATE TABLE `save_answer` (
  `SAID` int(255) NOT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ANSWER` varchar(255) NOT NULL,
  `EQID` varchar(255) NOT NULL,
  `LRN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `save_answer`
--

INSERT INTO `save_answer` (`SAID`, `SUBJECT`, `VALUE`, `ANSWER`, `EQID`, `LRN`) VALUES
(3858, 'Math', '1.00', '1.00', 'EQMID_10', '112233445566'),
(3859, 'Math', '0.64', '0.64', 'EQMID_11', '112233445566'),
(3860, 'Math', '0.80', '0.60', 'EQMID_13', '112233445566'),
(3861, 'Math', '0.39', '0.39', 'EQMID_16', '112233445566'),
(3862, 'Math', '8.00', '8.00', 'EQMID_15', '112233445566'),
(3863, 'Math', '0.6879', '0.6879', 'EQMID_17', '112233445566'),
(3864, 'Math', 'Bell-shaped', 'Bell-shaped', 'EQMID_18', '112233445566'),
(3865, 'Math', '3.5', '4.0', 'EQMID_14', '112233445566'),
(3866, 'Math', '0.60', '0.80', 'EQMID_12', '112233445566'),
(3867, 'Math', '1 sq. unit', '1 sq. unit', 'EQMID_19', '112233445566'),
(3868, 'Science', 'White Dwarf', 'White Dwarf', 'EQSID_10', '112233445566'),
(3869, 'Science', 'Star Formation Theory', 'Star Formation Theory', 'EQSID_1', '112233445566'),
(3870, 'Science', 'Supernova ', 'Supernova ', 'EQSID_11', '112233445566'),
(3871, 'Science', 'Henry Mosely', 'Henry Mosely', 'EQSID_12', '112233445566'),
(3872, 'Science', 'Gamma Emission', 'Beta Emission', 'EQSID_14', '112233445566'),
(3873, 'Science', 'Gamma Emission', 'Alpha Emission', 'EQSID_13', '112233445566'),
(3874, 'Science', 'Beta Emission', 'Gamma Emission', 'EQSID_15', '112233445566'),
(3875, 'Science', 'Symmetrical', 'Symmetrical', 'EQSID_18', '112233445566'),
(3876, 'Science', 'Non-Polar', 'Non-Polar', 'EQSID_17', '112233445566'),
(3877, 'Science', 'It is a Polar Molecule', 'It is a Polar Molecule', 'EQSID_16', '112233445566'),
(3878, 'English', 'Physical Setting', 'Physical Setting', 'EQEID_10', '112233445566'),
(3879, 'English', 'Formality', 'Caution', 'EQEID_1', '112233445566'),
(3880, 'English', 'Review Paper', 'Concept Paper	', 'EQEID_11', '112233445566'),
(3881, 'English', 'Exact', 'Exact', 'EQEID_14', '112233445566'),
(3882, 'English', 'Proposal Paper', 'Technical Report', 'EQEID_12', '112233445566'),
(3883, 'English', 'Preliminary Report', 'Progress Report', 'EQEID_13', '112233445566'),
(3884, 'English', 'Wrap up of all the arguments and claims', 'Identification of the debatable issue.', 'EQEID_17', '112233445566'),
(3885, 'English', 'Writing that emphasizes audience benefits.', 'Writing that requires a reader to gather additional information to comprehend the content.', 'EQEID_15', '112233445566'),
(3886, 'English', 'Collecting Data', 'Collecting Data', 'EQEID_16', '112233445566'),
(3887, 'English', 'Analyze and summarize the strong and weak points of the article, and then state your own position.', 'Go through the article and refute each of the main points, explaining how stupid the author’s views are.', 'EQEID_18', '112233445566'),
(3888, 'Reading_Comprehension', 'Pre-colonial Literature', 'Pre-colonial Literature', 'EQRCID_1', '112233445566'),
(3889, 'Reading_Comprehension', 'Digi-Fiction', 'Digi-Fiction', 'EQRCID_12', '112233445566'),
(3890, 'Reading_Comprehension', '21ST Century Literature', '21ST Century Literature', 'EQRCID_10', '112233445566'),
(3891, 'Reading_Comprehension', 'Illustrated Novel', 'Illustrated Novel', 'EQRCID_11', '112233445566'),
(3892, 'Reading_Comprehension', 'Text Talk Novel', 'Blogs', 'EQRCID_16', '112233445566'),
(3893, 'Reading_Comprehension', 'Manga', 'Chick Literature', 'EQRCID_17', '112233445566'),
(3894, 'Reading_Comprehension', 'Doodle Fiction', 'Graphic Novel', 'EQRCID_13', '112233445566'),
(3895, 'Reading_Comprehension', 'Doodle Fiction', 'Doodle Fiction', 'EQRCID_14', '112233445566'),
(3896, 'Reading_Comprehension', 'Chick Literature', 'Manga', 'EQRCID_15', '112233445566'),
(3897, 'Reading_Comprehension', 'Flash Fiction', 'Science Fiction', 'EQRCID_18', '112233445566');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `STUDENT_NO` int(11) NOT NULL,
  `STUDENT_FIRSTNAME` varchar(255) NOT NULL,
  `STUDENT_LASTNAME` varchar(255) NOT NULL,
  `LRN` varchar(14) NOT NULL,
  `EMAIL_ADDRESS` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `SHS_TRACK` varchar(255) NOT NULL,
  `EXAM_STATUS` varchar(255) NOT NULL,
  `ACCOUNT_CREATED` varchar(255) NOT NULL,
  `ACCOUNT_STATUS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`STUDENT_NO`, `STUDENT_FIRSTNAME`, `STUDENT_LASTNAME`, `LRN`, `EMAIL_ADDRESS`, `PASSWORD`, `SHS_TRACK`, `EXAM_STATUS`, `ACCOUNT_CREATED`, `ACCOUNT_STATUS`) VALUES
(20, 'Francis', 'Antonio', '123456789012', 'francis@yahoo.com', '$2y$10$qcVff4HDqrZB0SrDjx./AeNCdlJQLXL98IJ3Tx1x0uPIlVWCNSUBa', '', 'Not taken yet', '2023-05-09', 'ACTIVE'),
(21, 'Francis', 'Antonio', '112233445566', 'francis@yahoo.com', '$2y$10$RwKMopoorZc4apY3Q/VLROWqhmQrjytA2hhh2qdsE9IclhlBCZi0K', '', 'Exam Taken', '2023-05-09', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `timelimit`
--

CREATE TABLE `timelimit` (
  `TID` int(255) NOT NULL,
  `LRN` varchar(255) NOT NULL,
  `MATH_MINUTE` int(20) NOT NULL,
  `MATH_SECOND` int(20) NOT NULL,
  `SCIENCE_MINUTE` int(20) NOT NULL,
  `SCIENCE_SECOND` int(20) NOT NULL,
  `ENGLISH_MINUTE` int(20) NOT NULL,
  `ENGLISH_SECOND` int(20) NOT NULL,
  `READING_COMPREHENSION_MINUTE` int(20) NOT NULL,
  `READING_COMPREHENSION_SECOND` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timelimit`
--

INSERT INTO `timelimit` (`TID`, `LRN`, `MATH_MINUTE`, `MATH_SECOND`, `SCIENCE_MINUTE`, `SCIENCE_SECOND`, `ENGLISH_MINUTE`, `ENGLISH_SECOND`, `READING_COMPREHENSION_MINUTE`, `READING_COMPREHENSION_SECOND`) VALUES
(83, '112233445566', 0, 53, 0, 37, 0, 29, 0, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_information`
--
ALTER TABLE `course_information`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `course_information_job`
--
ALTER TABLE `course_information_job`
  ADD PRIMARY KEY (`CIJID`);

--
-- Indexes for table `course_percentage`
--
ALTER TABLE `course_percentage`
  ADD PRIMARY KEY (`CPID`);

--
-- Indexes for table `eq_english`
--
ALTER TABLE `eq_english`
  ADD PRIMARY KEY (`EQID`);

--
-- Indexes for table `eq_math`
--
ALTER TABLE `eq_math`
  ADD PRIMARY KEY (`EQID`);

--
-- Indexes for table `eq_reading_comprehension`
--
ALTER TABLE `eq_reading_comprehension`
  ADD PRIMARY KEY (`EQID`);

--
-- Indexes for table `eq_science`
--
ALTER TABLE `eq_science`
  ADD PRIMARY KEY (`EQID`);

--
-- Indexes for table `exam_informations`
--
ALTER TABLE `exam_informations`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`ERID`);

--
-- Indexes for table `ia_informations`
--
ALTER TABLE `ia_informations`
  ADD PRIMARY KEY (`IAIID`);

--
-- Indexes for table `ia_questions`
--
ALTER TABLE `ia_questions`
  ADD PRIMARY KEY (`IAQID`);

--
-- Indexes for table `ia_result`
--
ALTER TABLE `ia_result`
  ADD PRIMARY KEY (`IAR`);

--
-- Indexes for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  ADD PRIMARY KEY (`IARID`);

--
-- Indexes for table `overall_result`
--
ALTER TABLE `overall_result`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `recommended_course`
--
ALTER TABLE `recommended_course`
  ADD PRIMARY KEY (`RCID`);

--
-- Indexes for table `save_answer`
--
ALTER TABLE `save_answer`
  ADD PRIMARY KEY (`SAID`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`STUDENT_NO`);

--
-- Indexes for table `timelimit`
--
ALTER TABLE `timelimit`
  ADD PRIMARY KEY (`TID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  MODIFY `IARID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `overall_result`
--
ALTER TABLE `overall_result`
  MODIFY `RID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `save_answer`
--
ALTER TABLE `save_answer`
  MODIFY `SAID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3898;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `STUDENT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `timelimit`
--
ALTER TABLE `timelimit`
  MODIFY `TID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
