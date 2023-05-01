-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 06:17 PM
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
  `IAQID` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information`
--

INSERT INTO `course_information` (`CID`, `FIELD`, `ACRONYM`, `COURSE_NAME`, `INFORMATION`, `HEADER_PICTURE`, `IAQID`, `DATE`) VALUES
('CID_1', 'Computer Science', 'BSCS', 'Bachelor of Science in Computer Science ', 'Bachelor of Science in Computer Science is a four-year degree program in the Philippines that is generally concerned with the effective use of computation methods to analyze, solve, and come up with practical solutions for different problems, often through the use of computers or computer programs designed to perform specific tasks.', 'BSCS Computer science.jpg', 'IAQID_23', '02/02/02'),
('CID_10', 'Criminology', 'BS Criminology', 'Bachelor of Science in Criminology', 'The Bachelor of Science in Criminology (BS Crim) is a four-year degree program in the Philippines that is mainly concerned with the nature of crimes and criminals. Taking up this course will help you understand what is crime, how do crimes occur, and what makes people more likely to commit a crime or be a victim of it. It will also teach you how the justice system works, how alleged and convicted criminals should be handled, and the methods that can be used to reform them. ', 'BS CRIMINOLOGY.jpg', 'IAQID_15', '04/17/23'),
('CID_11', 'Political Science', 'AB Political Science', 'Bachelor of Arts in Political Science', 'Bachelor of Arts in Political Science (AB PS or AB Pol Sci) is a four-year degree program in the Philippines that will help you gain the skills needed to make political and policy analyses that can be used to introduce changes that will be beneficial to both the government and the general public. ', 'AB POLITICAL SCIENCE.jpg', 'IAQID_15', '04/17/23'),
('CID_12', 'English', 'AB English', 'Bachelor of Arts in English', 'The Bachelor of Arts in English (AB English) is a four-year degree program in the Philippines that will teach you about the structure; development; theories; and applications of languages, and how to use your knowledge of them to write and speak effectively, especially in English. ', 'AB ENGLISH.jpg', 'IAQID_16', '04/17/23'),
('CID_13', 'Linguistics', 'AB Linguistics', 'Bachelor of Arts in Linguistics', 'The Bachelor of Arts in Linguistics (AB Linguistics) is a four-year degree program in the Philippines that will teach you about languages, their origins, development, and their social significance to man. It will also teach you about the structures and properties of languages, and how you can apply the knowledge you\'ll gain from this on a wide variety of fields including sociology, psychology, neuroscience, and computer science to name a few. ', 'AB LINGUISTICS.jpg', 'IAQID_16', '04/17/23'),
('CID_14', 'Literature', 'AB Literature', 'Bachelor of Arts in Literature', 'The Bachelor of Arts in Literature (AB Lit) is a four-year degree program in the Philippines that will teach you about the different literatures of the world, their history, forms, structures, modes, techniques, and how you can use your knowledge of them to produce new literary works or review existing ones. ', 'AB LITERATURE.jpg', 'IAQID_16', '04/17/23'),
('CID_15', 'Anthropology', 'AB Anthropology', 'Bachelor of Arts in Anthropology', 'The Bachelor of Arts in Anthropology (AB Anthropology) is a four-year degree program in the Philippines that will teach you about the origin and evolution of human beings including gradual changes in their genetic makeup, behavior, languages, and social relations. ', 'AB ANTHROPOLOGY.jpg', 'IAQID_17', '04/17/23'),
('CID_16', 'Sociology', 'AB Sociology', 'Bachelor of Arts in Sociology', 'The Bachelor of Arts in Sociology (AB Sociology) is a four-year degree program in the Philippines that will teach you about human society, its structure, history, development, and how different cultural groups vary from one to another. ', 'AB SOCIOLOGY.jpg', 'IAQID_17', '04/17/23'),
('CID_17', 'Filipino', 'AB Filipino', 'Bachelor of Arts in Filipino', 'Bachelor of Arts in Filipino (ABF) is a four-year degree program that will teach you about the structure of the Filipino language, the things that make it distinct from other languages, literary works that were written in the Filipino language, and how to translate written works from a foreign language to Tagalog and vice versa. ', 'AB FILIPINO.jpg', 'IAQID_18', '04/17/23'),
('CID_18', 'Forensic Science', 'BSFS', 'Bachelor of Science in Forensic Science', 'The Bachelor of Forensic Science is a four-year degree program in the Philippines that will train you in using scientific principles and techniques to solve different crimes.', 'BSFS FORENSIC SCIENCE.jpg', 'IAQID_15', '04/17/23'),
('CID_19', 'Islamic Studies', 'AB Islamic Studies', 'Bachelor of Arts in Islamic Studies', 'The Bachelor of Arts in Islamic Studies (ABIS) is a four-year degree program in the Philippines that is concerned with the study Islam as a way of life in the context of economic, social, cultural, political, and legal aspects. It has two specializations: Political Economy and Islamic Arts and Multimedia Technologies. ', 'AB ISLAMIC STUDIES.jpg', 'IAQID_18', '04/17/23'),
('CID_2', 'History', 'BA History', 'Bachelor of Arts in History', 'Is a four-year degree program in the Philippines that deals with the study of events from the past. By taking this program you’ll learn about the different civilizations that existed throughout history the people that composed them, their basic structures, their relationship with one another, the transformations they went through, and their roles and impacts on the society we know today. ', 'AB HISTORY.jpg', 'IAQID_13', '04/17/23'),
('CID_20', 'Environmental Science', 'BSES', 'Bachelor of Science in Environmental Science', 'The Bachelor of Science in Environmental Science (BSES) is a four-year degree program in the Philippines that is concerned with the environment and the effects of man\'s activities on it. It usually covers such issues as conservation of natural resources, pollution, deforestation, and overpopulation among a couple of others.  ', 'BS ENVIROMENTAL SCIENCE.jpg', 'IAQID_19', '04/17/23'),
('CID_21', 'Forestry', 'BS Forestry', 'Bachelor of Science in Forestry', 'The Bachelor of Science in Forestry (BS Forestry) is a four-year degree program in the Philippines that will train you in managing the social, economic, and environmental dimensions of forestry resources, performing research that can advance the growth of forestry science, and educating the public of the proper conservation and development of forest resources through extension activities. ', 'BS FORESTRY.jpg', 'IAQID_19', '04/17/23'),
('CID_22', 'Fisheries', 'BSFi', 'Bachelor of Science in Fisheries', 'The Bachelor of Science in Fisheries (BSFi) is a four-year degree program in the Philippines that will train you in aquaculture, capture fisheries, post-harvest fisheries, aquatic ecology, and fisheries- related research. ', 'BS FISHERIES.jpg', 'IAQID_19', '04/17/23'),
('CID_23', 'Geology', 'BS Geology', 'Bachelor of Science in Geology', 'The Bachelor of Science in Geology (BS Geology) is a four-year degree program in the Philippines that is concerned with the origins of the earth, its traits and characteristics, composition, and the changes that it goes through. It deals with issues such as pollution and waste disposal, use and conservation of natural resources, and preventing or reducing the harmful effects of natural disasters. ', 'BS GEOLOGY.jpg', 'IAQID_20', '04/17/23'),
('CID_24', 'Biology', 'BS Biology', 'Bachelor of Science in Biology', 'The Bachelor of Science in Biology (BS Biology) is a four-year degree program in the Philippines that deals with the study of living things. Some of the things that you may learn as a biology student are the forms and structures of living things; their general characteristics; their origins; the places they live in; and their relationship with man, their environment, and with one another. ', 'BS BIOLOGY.jpg', 'IAQID_21', '04/17/23'),
('CID_25', 'Molecular Biology', 'BS Molecular Biology', 'Bachelor of Science in Molecular Biology', 'The Bachelor of Science in Molecular Biology is a four-year degree program in the Philippines that is primarily concerned with identifying, describing, and manipulating the components of cells and organisms including Deoxyribonucleic acid (DNA), Ribonucleic acid (RNA), and proteins. Among its many practical applications are the detection of diseases, gene therapy, in vitro fertilization, and DNA profiling to name a few. ', 'BS Molecular biology.jpg', 'IAQID_21', '04/17/23'),
('CID_26', 'Physics', 'BS Physics', 'Bachelor of Science in Physics', 'Bachelor of Science in Physics (BS Physics) is a four-year degree program in the Philippines that will teach you about the laws of nature and how to use these laws to understand and explain how the things around us work.', 'BS PHYSICS.jpg', 'IAQID_22', '04/17/23'),
('CID_27', 'Applied Physics', 'BS Applied Physics', 'Bachelor of Science in Applied Physics', 'Bachelor of Science in Applied Physics (BS Applied Physics) is a four-year degree program in the Philippines that will train you in using the principles of Physics to come up with practical solutions to existing programs in a wide variety of fields including but not limited to medicine, engineering, computer science, and business to name a few. ', 'BS APPLIED PHYSICS.jpg', 'IAQID_22', '04/17/23'),
('CID_28', 'Chemistry', 'BS Chemistry', 'Bachelor of Science in Chemistry', 'The Bachelor of Science in Chemistry (BS Chem) is a four-year degree program in the Philippines that will teach you about the study of chemicals, their composition, their properties, the way they react with one another, and how you can use your knowledge of this information to come up with helpful products in a wide variety of fields including medicine, food science, and engineering to name a few.  ', 'BS CHEMISTRY.jpg', 'IAQID_22', '04/17/23'),
('CID_29', 'Information Technology', 'BSIT', 'Bachelor of Science in Information Technology', 'The Bachelor of Science in Information Technology (BSIT) is a four-year degree program in the Philippines that deals with the processing and distribution of data with emphasis on its application on businesses. By enrolling in this program, you will learn how to write, design, and maintain computer programs; check them for errors; determine appropriate solutions to fix problems, and rewrite codes to accommodate necessary changes. Since this course is more about the business application of the systems or applications you will create, you may also be taking up a few business subjects such as Accounting and Human Resource Management.  ', 'BSIT Information technology.jpg', 'IAQID_23', '04/17/23'),
('CID_3', 'Philosophy', 'BA Philosophy', 'Bachelor of Arts in Philosophy', 'Is a four-year degree program in the Philippines that is mostly concerned with the underlying principles of reality, knowledge, morality and existence and how they apply in the variety of real-world fields. ', 'AB PHILOSOPHY.jpg', 'IAQID_13', '04/17/23'),
('CID_30', 'Information Systems', 'BSIS', 'Bachelor of Science in Information Systems', 'Bachelor of Science in Information Systems (BSIS) is a four-year degree program in the Philippines that will train you in designing, developing, and managing information systems such as office automation systems, transaction processing systems, transport information systems, navigation systems, and other systems that provide related services. ', 'BSIS Information system.jpg', 'IAQID_23', '04/17/23'),
('CID_31', 'Mathematics', 'BS Mathematics', 'Bachelor of Science in Mathematics', 'Bachelor of Science in Mathematics (BS Math) is a four-year degree program in the Philippines that will expose you to the breadth and depth of mathematical theories, concepts, and applications in order to prepare you for future careers that require critical and analytical thinking skills. ', 'BS MATHEMATICS.jpg', 'IAQID_24', '04/17/23'),
('CID_32', 'Applied Mathematics', 'BS Applied Math', 'Bachelor of Science in Applied Mathematics', 'Bachelor of Science in Applied Mathematics (BS Applied Mathematics) is a four-year degree program in the Philippines that will train you in using mathematical theories, concepts, and formulas to come up with practical solutions to problems in the fields of business, engineering, and information technology among other things. ', 'BS APPLIED MATH.jpg', 'IAQID_24', '04/17/23'),
('CID_33', 'Statistics', 'BS Stat', 'Bachelor of Science in Statistics', 'The Bachelor of Science in Statistics (BS Statistics) is a four-year degree program in the Philippines that will teach you about different statistical methods and how to use them to analyze and interpret data. ', 'BS STAT.jpg', 'IAQID_24', '04/17/23'),
('CID_34', 'Agriculture', 'BSA', 'Bachelor of Science in Agriculture', 'The Bachelor of Science in Agriculture (BSA) is a four-year degree program in the Philippines that is concerned with applying the principles of science, ethics, and business management in the production, development, and processing of plants and animals used for food, recreation, industrial, and medical purposes among others. ', 'BSA AGRICULTURE.jpg', 'IAQID_25', '04/17/23'),
('CID_35', 'Agribusiness', 'BSAB', 'Bachelor of Science in Agribusiness', 'The Bachelor of Science in Agribusiness (BSAB) is a four-year degree program in the Philippines that will train you in in the manufacturing and distribution of farm supplies and other related products according to the country\'s bio-physical, socio-cultural, political, economic, and development needs. ', 'BS AGRIBUSINESS.jpg', 'IAQID_25', '04/17/23'),
('CID_36', 'Agroforestry', 'BSAF', 'Bachelor of Science in Agroforestry', 'Bachelor of Science in Agroforestry (BSAF) is a four-year degree program in the Philippines that will train you in producing, managing, and utilizing trees, agricultural crops, animals, and soils for the purpose of conservation and socio-economic productivity. ', 'BS AGROFORESTRY.jpg', 'IAQID_25', '04/17/23'),
('CID_37', 'Architecture', 'BS Architecture', 'Bachelor of Science in Architecture', 'The Bachelor of Science in Architecture (BS Architecture) is a five-year degree program in the Philippines that is concerned with the design and planning of architectural structures such as residential and commercial buildings, roads, dams, tunnels, bridges, and the like. By studying Architecture, you will not only learn how to design buildings that are pleasing to the eyes, you will also learn how to plan structures and facilities that are functional, cost-effective, flexible to change, and most importantly, resilient against natural and man-made disasters. ', 'BS ARCHITECTURE.jpg', 'IAQID_26', '04/17/23'),
('CID_38', 'Landscape Architecture', 'BLA', 'Bachelor in Landscape Architecture', 'Bachelor in Landscape Architecture (BLA) is a four-year degree program in the Philippines that is mainly concerned with the design and planning of land areas. It is closely related with Bachelor of Science in Architecture, although BS Architecture is primarily concerned with the construction of buildings and infrastructures while Bachelor of Landscape Architecture is more focused on the planning and development of the land that surrounds a particular structure. By enrolling in this program, you will not only learn about the visual aspects of architectural design, you will also gain a deeper understanding of the factors that need to be considered when designing and developing land areas such as accessibility, functionality, amenability to future design changes, and overall safety among other things. ', 'BS LANDSCAPE ARCHITECTURE.jpg', 'IAQID_26', '04/17/23'),
('CID_39', 'Interior Design', 'BS Interior Design', 'Bachelor of Science in Interior Design', 'The Bachelor of Science in Interior Design (BS Interior Design) is a four-year degree program in the Philippines that will teach you about the principles of interior design, space planning, application of colors, basic furniture production, and budget management among other things. ', 'BS INTERIOR DESIGN.jpg', 'IAQID_26', '04/17/23'),
('CID_4', 'Industrial Design', 'BFA Industrial Design', 'Bachelor of Fine Arts Major in Industrial Design', 'is a four-year degree program in the Philippines that is primarily concerned with the design and development of usable products as well as the designing packaging and systems. ', 'BFA INDUSTRIAL DESGIN.jpg', 'IAQID_14', '04/17/23'),
('CID_40', 'Accountancy', 'BSA', 'Bachelor of Science in Accountancy', 'The Bachelor of Science in Accountancy (BSA) is a four-year degree program in the Philippines that is primarily concerned with the effective management of a person\'s, group\'s, or company\'s financial resources including the proper ways of monitoring and documenting the flow of money or goods within the system and the applicable laws related to it. ', 'BS ACCOUNTANCY.jpg', 'IAQID_27', '04/17/23'),
('CID_41', 'Accounting Technology', 'BSACT', 'Bachelor of Science in Accounting Technology', 'The Bachelor of Science in Accounting Technology (BSAcT) is a four-year degree program in the Philippines that will train you in maintaining systematic records of business transactions, verifying and recording them, using computers to calculate, prepare and process financial records. ', 'BS ACCOUNTING TECHNOLOGY.jpg', 'IAQID_27', '04/17/23'),
('CID_42', 'Business Economics', 'BSBA-BE', 'Bachelor of Science in Business Administration Major in Business Economics', 'The Bachelor of Science in Business Administration Major in Business Economics (BSBA- Business Economics) is a four-year business program in the Philippines that is concerned with the various factors that affect businesses. Through this major, you\'ll gain a better understanding of economic development by learning the characteristics and problems of less developed countries, the criteria for growth and development, the obstacles to economic growth, and the policies for promoting it. ', 'BSBA MAJOR IN BUSINESS ECOM.jpg', 'IAQID_27', '04/17/23'),
('CID_43', 'Financial Management', 'BSBA-FM', 'Bachelor of Science in Business Administration Major in Financial Management', 'The Bachelor of Science in Business Administration Major in Financial Management (BSBA- Financial Management) is a four-year business program in the Philippines that focuses on the financial aspects of managing a business. As a BSBA Financial Management student, you will learn about financial institutions and how they make profits; how prices of goods and services are set; how to manage your assets and liabilities, and the different government regulations that have a direct effect on businesses. ', 'BSBA major in finance management.jpg', 'IAQID_27', '04/17/23'),
('CID_44', 'Human Resource Development', 'BSBA – HRDM', 'Bachelor of Science in Business Administration Major in Human Resource Development', 'The Bachelor of Science in Business Administration Major in Human Resource Development Management (BSBA – HRDM) is a four-year business program in the Philippines will prepare you for a career in Human Resource Management (HRM) in various organizations and businesses. HRM is the branch of Business Administration that will teach you how to manage your workforce. This includes teaching you how you can recruit the best individuals for your company, how to prepare them for the tasks they will be expected to perform, and how to help them blend in with their new environment. ', 'BSBA HUMAN RESOURCE.jpg', 'IAQID_27', '04/17/23'),
('CID_45', 'Marketing Management', 'BSBA-MM', 'Bachelor of Science in Business Administration Major in Marketing Management', 'The Bachelor of Science in Business Administration Major in Marketing Management (BSBA- Marketing Management) is a four-year business program in the Philippines that will prepare you for a Marketing career in various organizations and businesses. By enrolling in this program, you will learn how to identify business opportunities, assess their strengths and weaknesses, and devise plans that will help you make more profits while controlling your possible losses at the same time. You will also be taught how to create, introduce, and promote your own products using various tools and techniques ranging from the traditional to the more technologically advanced ones. ', 'BSBA MARKETING MANAGEMENT.jpg', 'IAQID_27', '04/17/23'),
('CID_46', 'Operations Management', 'BSBA-Operations Management', 'Bachelor of Science in Business Administration Major in Operations Management', 'The Bachelor of Science in Business Administration Major in Operations Management (BSBA-Operations Management) is a four-year degree program in the Philippines that revolves around the day-to-day operation of businesses. This includes the processes involved in the production and distribution of goods, the delivery of services, and managing the equipment and facilities used to run a business. ', 'BSBA OPERATIONS MANAGEMENT.jpg', 'IAQID_27', '04/17/23'),
('CID_47', 'Hotel and Restaurant Management', 'BS HRM', 'Bachelor of Science in Bachelor of Science in Hotel and Restaurant Management', 'The Bachelor of Science in Hotel and Restaurant Management (BS HRM) is a four-year degree program in the Philippines that will prepare you for working in the hotel and restaurant industry and managing your own hotel and restaurant business someday. With the help of this course, you\'ll learn not only how to manage the day-to-day operations of your hotel or restaurant. You\'ll also learn how to devise plans and strategies that can increase your company\'s profits. ', 'BS HRM HOTEL AND RESTAURANT MANAGEMENT.jpg', 'IAQID_27', '04/17/23'),
('CID_48', 'Entrepreneurship', 'BS Entrep', 'Bachelor of Science in Entrepreneurship', 'The Bachelor of Science in Entrepreneurship (BS Entre) is a four-year degree program in the Philippines that will train you in identifying opportunities, developing and preparing business plans, and starting and managing your own business. ', 'BS ENTREP.jpg', 'IAQID_27', '04/17/23'),
('CID_49', 'Office Administration', 'BSOA', 'Bachelor of Science in Office Administration', 'Bachelor of Science in Office Administration (BSOA) is a four-year degree program in the Philippines that will train you in performing a wide variety of administrative tasks including but not limited to clerical duties, personnel management, events management, and customer service. ', 'BSOA OFFICE ADMINISTRATOR.jpg', 'IAQID_27', '04/17/23'),
('CID_5', 'Painting', 'BFA Painting', 'Bachelor of Fine Arts Major in Painting', 'is a four-year degree program in the Philippines that is concerned with producing artistic representations through the use of paint. This program focuses on developing the student\'s perceptual and technical skills in painting. Taking this major will help you learn about the basics of drawing, the different tools used in painting, the types of surfaces paintings are usually done in, and the use of visual perception in introducing different concepts in your paintings. ', 'BFA PAINTING.jpg', 'IAQID_14', '04/17/23'),
('CID_50', 'Real Estate Management', 'BS REM', 'Bachelor of Science in Real Estate Management', 'The Bachelor of Science in Real Estate Management (BS REM) is a four-year degree program in the Philippines that will train you in real estate salesmanship, brokerage, appraisal, and consultancy including properties that fall within public domain. ', 'BS REM REAL ESTATE MANAGEMENT.jpg', 'IAQID_27', '04/17/23'),
('CID_51', 'Tourism Management', 'BSTM', 'Bachelor of Science in Tourism Management', 'The Bachelor of Science in Tourism Management (BSTM) is a four-year degree program in the Philippines that will train you in developing and implementing tourism campaigns, organizing and managing events, and following policies and standards related to investments, business regulations, procurement, and other miscellaneous procedures. ', 'BSTM tourism management.jpg', 'IAQID_27', '04/17/23'),
('CID_52', 'Medical Technology', 'BS Med Tech', 'Bachelor of Science in Medical Technology', 'The Bachelor of Science in Medical Technology (BS Medical Technology) also known as Bachelor of Science in Medical Laboratory Science (BS Medical Laboratory Science) is a four-year degree program in the Philippines that deals with the use of modern technology in detecting, identifying, and predicting the possible course of diseases that can put a person\'s health at risk. Pursuing this degree will help you gain a better understanding of the nature of diseases, the things that cause them, the way they spread, and the way to stop them or slow their growth down. It will also give you some background information on the natural composition of the human body and how you can use that information to detect potential or existing problems. ', 'BS MED TECH.jpg', 'IAQID_39', '04/17/23'),
('CID_53', 'Midwifery', 'BS Midwifery', 'Bachelor of Science in Midwifery', 'The Bachelor of Science in Midwifery (BS Midwifery) is a four-year degree program in the Philippines that will train you in addressing the needs of expecting mothers and their children starting from the early stages of pregnancy up to the first few weeks following childbirth. By taking this course, you will learn everything you\'ll need to know about reproductive health; family planning; pregnancy, labor, and delivery; neonatal care; and the moral and legal principles involved in the practice of midwifery in the Philippines. ', 'BS MIDWIFERY.jpg', 'IAQID_41', '04/17/23'),
('CID_54', 'Nursing', 'BSN', 'Bachelor of Science in Nursing', 'Bachelor of Science in Nursing (BSN) is a four-year degree program in the Philippines that revolves around caring for the sick or injured. This does not only involve addressing immediate threats to the patient\'s health, but also guiding the patient all the way through physical, mental, and emotional recovery. As a nursing student you will be trained to conduct health assessments, provide patients with preoperative, intraoperative, and postoperative care, perform life-saving interventions, respond to disaster and emergency situations, and keep medical documentations. ', 'BS NURSING.jpg', 'IAQID_39', '04/17/23'),
('CID_55', 'Occupational Therapy', 'BSOT', 'Bachelor of Science in Occupational Therapy', 'The Bachelor of Science in Occupational Therapy (BSOT) is a five-year degree program in the Philippines that is concerned with using different methods and strategies to help people with serious physical, mental, or emotional conditions that keep them from functioning the way they are supposed to. It\'s mostly similar to Physical Therapy in the sense that it aims to help a person recover from an injury or learn to live with it if it can no longer be remedied, but contrary to Physical Therapy that is more focused on the physical functioning of a person such as walking or moving his body, Occupational Therapy is more focused on restoring or uplifting the mental or emotional well-being of a patient. ', 'BS OCCUPATIONAL THERAPY.jpg', 'IAQID_40', '04/17/23'),
('CID_56', 'Pharmacy', 'BS Pharmacy', 'Bachelor of Science in Pharmacy', '', 'BS PHARMACIST.jpg', 'IAQID_42', '04/17/23'),
('CID_57', 'Physical Therapy', 'BSPT', 'Bachelor of Science in Physical Therapy', 'The Bachelor of Science in Physical Therapy (BSPT) is a five-year degree program in the Philippines that is concerned with using various treatments and exercises to restore the function of a broken bone or to compensate for the loss of a certain body part', 'BS PHYSICAL THERAPY.jpg', 'IAQID_40', '04/17/23'),
('CID_58', 'Radiologic Technology', 'BS Rad Tech', 'Bachelor of Science in Radiologic Technology', 'The Bachelor of Science in Radiologic Technology (BSRT) is a four-year degree program in the Philippines that will train you in applying x-ray energy to assist in the diagnosis or treatment of diseases, performing radiographic or nuclear medicine procedur', 'BS RADIOLOGIC TECHNOLOGY.jpg', 'IAQID_42', '04/17/23'),
('CID_59', 'Respiratory Therapy', 'BSRT', 'Bachelor of Science in Respiratory Therapy', 'The Bachelor of Science in Respiratory Therapy is a four-year degree program in the Philippines that will train you in providing clinical pulmonary care procedures that will help in the proper diagnosis, treatment, and prevention of diseases. ', 'Respiratory therapist.jpg', 'IAQID_42', '04/17/23'),
('CID_6', 'Sculpture', 'BFA Sculpture', 'Bachelor of Fine Arts Major in Sculpture ', 'is a four-year degree program in the Philippines that is concerned with expressing interests and ideas in three-dimensional (3-D) art. As a branch of Fine Arts, it shares a lot of similar courses with BFA Major in Painting; however, contrary to the latter', 'BFA SCULPTURES.jpg', 'IAQID_14', '04/17/23'),
('CID_60', 'Secondary Education', 'BSED', 'Bachelor in Secondary Education', 'The Bachelor of Secondary Education (BSEd) is a four-year degree program in the Philippines that will prepare you in teaching in secondary school. It has several areas of specialization: English, Filipino, Islamic Studies, Mathematics, Music, Arts, Physic', 'BSED SECONDARY EDUCATION.jpg', 'IAQID_30', '04/17/23'),
('CID_61', 'Elementary Education', 'BEED', 'Bachelor in Elementary Education', 'The Bachelor of Elementary Education (BEED) is a four-year degree program in the Philippines that will train you in teaching grade school students. BEED has two specializations: Bachelor in Elementary Education Major in Preschool Education and Bachelor in', 'BEED ELEMENTARY EDUCATION.jpg', 'IAQID_29', '04/17/23'),
('CID_62', 'Library and Information Science', 'BLIS', 'Bachelor of Library and Information Science in the Philippines', 'The Bachelor of Library and Information Science (BLIS) is a four-year degree program in the Philippines that will teach you about the different sources of information, how to acquire them, and how to develop and maintain a collection of reference material', 'BLIS Library and information science.jpg', 'IAQID_28', '04/17/23'),
('CID_63', 'Physical Education', 'BPE', 'Bachelor of Physical Education', 'The Bachelor of Physical Education is a four-year degree program in the Philippines that will train you in developing and maintaining the optimal physical fitness and functionality individuals. It has two majors: School Physical Education which is a teach', 'BPE PHYSICAL EDUCATION.jpg', 'IAQID_31', '04/17/23'),
('CID_64', 'Aeronautical Engineering', 'BS AeroE', 'Bachelor of Science in Aeronautical Engineering', 'The Bachelor of Science in Aeronautical Engineering (BS AeroE) is a five-year degree program in the Philippines that is concerned with aircrafts and air transportation. Some of the things you will learn through this program are aircraft design; aircraft', 'BSAERO AERONATICAL ENGINEER.jpg', 'IAQID_44', '04/17/23'),
('CID_65', 'Ceramic Engineering', 'BSCerE', 'Bachelor of Science in Ceramic Engineering', 'The Bachelor of Science in Ceramic Engineering (BS CerE) is a five-year degree program in the Philippines that will train you in applying knowledge of mathematics, physical sciences, and engineering sciences to the practice of ceramic engineering.', 'BSCERE CERAMIC ENGINEER.jpg', 'IAQID_44', '04/17/23'),
('CID_66', 'Chemical Engineering', 'BSChE', 'Bachelor of Science in Chemical Engineering', 'The Bachelor of Science in Chemical Engineering (BS ChE) is a five-year degree program in the Philippines that is concerned with the application of different sciences (ie. natural, social, formal, applied sciences) to come up with safe, ethical and econom', 'BSCHE CHEMICAL ENGINEER.jpg', 'IAQID_45', '04/17/23'),
('CID_67', 'Civil Engineering', 'BSCE', 'Bachelor of Science in Civil Engineering', 'The Bachelor of Science in Civil Engineering (BSCE) is a five-year degree program in the Philippines that is concerned with the use of scientific and mathematical principles in the construction of buildings and infrastructures such as roads, bridges, tunn', 'Civil engineer.jpg', 'IAQID_44', '04/17/23'),
('CID_68', 'Computer Engineering', 'BSCpE', 'Bachelor of Science in Computer Engineering', 'Bachelor of Science in Computer Engineering (BS CPE) is a five-year degree program in the Philippines that will train you in the design, development, and maintenance of computer systems including both hardware and software.Aside from the technical aspects', 'BSCPE COMPUTER ENGINEER.jpg', 'IAQID_46', '04/17/23'),
('CID_69', 'Broadcasting', 'AB Broadcasting', 'Bachelor of Arts in Broadcasting', 'The Bachelor of Arts in Broadcasting (AB Broadcasting) is a four-year degree program in the Philippines that will prepare you for a career in the media industry, particularly in television and radio networks. Being a subfield of Class Communication, AB Br', 'AB BROADCASTING.jpg', 'IAQID_48', '04/17/23'),
('CID_7', 'Visual Communication', 'BFA Visual Communication', 'Bachelor of Fine Arts Major in Visual Communication', 'is a four-year degree program in the Philippines that is concerned with using both traditional and modern technology to create effective advertisements, web and new media designs. Through this major you will learn about the types of letters and their stru', 'BFA VISUAL COMM.jpg', 'IAQID_14', '04/17/23'),
('CID_70', 'Communication', 'AB Communication', 'Bachelor of Arts in Communication', 'The Bachelor of Arts in Communication (AB Communication) is a four-year degree program in the Philippines that will prepare you for a career in the media or similar industries — advertising agencies and public relations firms in particular ', 'AB COMMUNICATION.jpg', 'IAQID_48', '04/17/23'),
('CID_71', 'Community Development', 'BS Community Development', 'Bachelor of Science in Community Development', 'The Bachelor of Science in Community Development is a four-year degree program in the Philippines that will train you in building and developing communities by providing their inhabitants with knowledge and resources that they can use to improve the quali', 'BS COMMUNITY DEVELOPMENT.jpg', 'IAQID_34', '04/17/23'),
('CID_72', 'Customs Administration', 'BSCA', 'Bachelor of Science in Customs Administration', 'The Bachelor of Science in Customs Administration is a four-year degree program in the Philippines that will train you in handling import and export operations. Some examples of courses that you may take while enrolled in this program include: Principles ', 'BSCA CUSTOMS ADMINISTRATOR.jpg', 'IAQID_35', '04/17/23'),
('CID_73', 'Marine Transportation', 'BSMT', 'Bachelor of Science in Marine Transportation', 'The Bachelor of Science in Marine Transportation (BSMT) is a four-year degree program in the Philippines that will train you in performing and fulfilling the duties and responsibilities of a marine deck officer including navigation, radio communication, a', 'BSMT MARINE TRASPORATATIO.jpg', 'IAQID_50', '04/17/23'),
('CID_74', 'Food Technology', 'BSFT', 'Bachelor of Science in Food Technology', 'The Bachelor of Science in Food Technology (BSFT) is a four-year degree program in the Philippines that will train you in applying principles of science and other related fields in the handling, preparation, processing, packaging, storage, and distributio', 'BS FOOD TECH.jpg', 'IAQID_32', '04/17/23'),
('CID_75', 'Nutrition and Dietetics', 'BS Nutrition and Dietetics', 'Bachelor of Science in Nutrition and Dietetics', 'The Bachelor of Science in Nutrition and Dietetics (BS ND) is a four-year degree program in the Philippines that will train you in planning, implementing, monitoring, and documenting nutrition programs for a given individual, group or community. It will a', 'BS NUTRITION AND DIETETICS.jpg', 'IAQID_33', '04/17/23'),
('CID_76', 'Engineering', 'BSME', 'Bachelor of Science in Mechanical Engineering', 'is a five-year degree program in the Philippines that focuses on the fundamental knowledge and skills of mechanical engineering. This revolves around the design, production, and maintenance of machines from simple home appliances, gadgets, and automobiles, to more complicated industrial equipment, robots, and jet engines.', 'mech eng.jpg', 'IAQID_44', '04/30/23'),
('CID_77', 'Engineering', 'BSMetE', 'Bachelor of Science in Metallurgical Engineering', 'is a five-year degree program in the Philippines that is mainly concerned with metals and their conversion into useful products. Among the things that you may learn while enrolled in this program are the characteristics of metals and minerals, the processes involved in converting them into new products, the equipment and testing devices used in these processes', 'metal eng.jpg', 'IAQID_44', '04/30/23'),
('CID_78', 'Engineering', 'BSMatE', 'Bachelor of Science in Materials Engineering', 'is a five-year degree program in the Philippines that will teach you about the different materials that are used or can be used to produce a wide array of products including their characteristics, uses, and advantages or disadvantages over the others.', 'mat eng.jpg', 'IAQID_45', '04/30/23'),
('CID_79', 'Engineering', 'BSPetE', 'Bachelor of Science in Petroleum Engineering', 'is a five-year degree program that is concerned with the extraction of oil, petroleum, and other natural gases from the earth and their subsequent delivery to processing facilities as well as the design and development of new technology that will speed up the process while keeping the operational cost to a minimum.', 'pet eng.jpg', 'IAQID_45', '04/30/23'),
('CID_8', 'Economics', 'AB Economics', 'Bachelor of Arts in Economics', 'The Bachelor of Arts in Economics (AB Economics) is a four-year degree program in the Philippines that will help you gain a better understanding of economic systems and their structure. This includes the entities that compose them, their relationship with', 'AB ECONOMICS.jpg', 'IAQID_15', '04/17/23'),
('CID_80', 'Engineering', 'BSEE', 'Bachelor of Science in Electrical Engineering', 'is a five-year degree program in the Philippines that is concerned with electricity, its production, transmission, distribution, and usage. Its curriculum covers everything from the design of electrical systems up to their operation and maintenance as well as cheaper and safer ways of completing engineering projects.', 'electric man.jpeg', 'IAQID_46', '04/30/23'),
('CID_81', 'Engineering', 'BSECE', 'Bachelor of Science in Electronics and Communications Engineering', 'is a five-year degree program in the Philippines that is mainly concerned with the conceptualization, design and development of any electronic, computer or communication products, systems, services and processes.', 'electric com eng.jpg', 'IAQID_46', '04/30/23'),
('CID_82', 'Engineering', 'BSGE', 'Bachelor of Science in Geodetic Engineering', 'is a five-year degree program in the Philippines that is concerned with gathering data related to the earth\'s surface and using them to produce spatial information systems, maps, plans, charts and other products.', 'geo eng.jpg', 'IAQID_47', '04/30/23'),
('CID_83', 'Engineering', 'BSGeoE', 'Bachelor of Science in Geological Engineering', 'is a five-year degree program that will train you in applying scientific principles to solve engineering and environmental problems such as pollution, landslides, earthquakes, and scouting for mineral resources to name a few.', 'geological eng.jpg', 'IAQID_47', '04/30/23'),
('CID_84', 'Engineering', 'BSIE', 'Bachelor of Science in Industrial Engineering', 'is a five-year degree program in the Philippines that is concerned with the design, operation, management, and maintenance of different systems, processes, and facilities to ensure their maximum efficiency.', 'industrial eng.jpg', 'IAQID_47', '04/30/23'),
('CID_85', 'Engineering', 'BSMarE', 'Bachelor of Science in Marine Engineering', 'is a five-year degree program in the Philippines that is concerned with the construction and development of marine vessels and their component parts. This may include anything from private vessels such as fishing boats and cruise ships to military vehicles such as submarines, battleships, and aircraft carriers.', 'marine eng.jpg', 'IAQID_47', '04/30/23'),
('CID_86', 'Engineering ', 'BSEM', 'Bachelor of Science in Mining Engineering', 'is a five-year degree program in the Philippines that is concerned with mines and mining. This includes evaluating the potential of a piece of land or area for mining, designing and building a mine, managing its operations, and making sure it follows environmental laws and other regulations among other things.', 'mine eng.jpg', 'IAQID_47', '04/30/23'),
('CID_87', 'Engineering', 'BSSE', 'Bachelor of Science in Sanitary Engineering', 'a five-year degree program in the Philippines that is primarily concerned with the designing, planning, operation, and maintenance of sanitation facilities; soil, water, and air pollution control; and the general hygienic projects of residential, commercial, and industrial buildings.', 'sanitary eng.jpg', 'IAQID_47', '04/30/23'),
('CID_88', 'Journalism', 'AB Journalism', 'Bachelor of Arts in Journalism', 'is a four-year degree program in the Philippines that will prepare you for a career in the media industry. Like AB Broadcasting and AB Communication, which are sub-fields of Mass Communication, AB in Journalism revolves around the communication process and the role mass media plays in it.', 'journalist.jpg', 'IAQID_48', '04/30/23'),
('CID_89', 'Mass Communication', 'AB MassComm', 'Bachelor of Arts in Mass Communication', 'is a four-year degree program in the Philippines that will train you in the effective use of different media in order to send out specific messages to targeted audiences.', 'mas comm.jpg', 'IAQID_48', '04/30/23'),
('CID_9', 'Psychology', 'BS Psychology', 'Bachelor of Science in Psychology', 'The Bachelor of Science in Psychology (BS Psychology) is a four-year degree program in the Philippines that is concerned with the way humans think and behave. By taking this course, you will learn how to conduct and interpret different tests such as those', 'BS PSYCHOLOGY.jpg', 'IAQID_15', '04/17/23'),
('CID_90', 'Development Communication', 'BS DevComm', 'Bachelor of Science in Development Communication', 'is a four-year degree program in the Philippines that revolves around the role of communication in the pursuit of development. As a Development Communication student, you will learn about the different communication theories and how you can use them to plan, implement, and manage information campaigns targeted at specific audiences.', 'dev com.jpg', 'IAQID_49', '04/30/23'),
('CID_91', 'Foreign Service', 'BS Foreign Service', 'Bachelor of Science in Foreign Service', 'is a four-year degree program that will will train you in maintaining peaceful relations with other countries, facilitating the flow of investments from international sources, promoting tourism, and addressing the needs of Filipinos working overseas among other things.', 'foreign service.jpg', 'IAQID_35', '04/30/23'),
('CID_92', 'International Studies', 'BSIS', 'Bachelor of Science in International Studies', 'is a four-year degree program in the Philippines that will teach you about different government systems and the social, economic, cultural, geographical, and political factors that dictate or affect the way they operate.', 'int studies.jpg', 'IAQID_35', '04/30/23'),
('CID_93', 'Public Administration', 'BPA', 'Bachelor of Public Administration', 'is a four-year degree program in the Philippines that will prepare you for a career in public service. Enrolling in this program will help you become more familiar with the different agencies that make up the government, their relationship with each other, the people that run them, the policies they make, and how they implement them.', 'public admin.jpg', 'IAQID_36', '04/30/23'),
('CID_94', 'Public Safety', 'BSPS', 'Bachelor of Science in Public Safety ', 'is a four-year degree program in the Philippines that will help you acquire knowledge and skills essential to ensuring public safety', 'pub safe.jpg', 'IAQID_37', '04/30/23'),
('CID_95', 'Social Work', 'BS Social Work', 'Bachelor of Science in Social Work', 'is a four-year degree program in the Philippines that deals with the study of social units such as families and communities, the various issues that affect them, and how social work can help improve, if not immediately resolve, these conditions.', 'social work.jpg', 'IAQID_38', '04/30/23');

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
('CIJID_15', 'Art Critics ', 'An art critic write reviews of individual art works or art exhibitions for the general public or for a more specialized audience. His or her articles are then published in newspapers, magazines, academic journals, and on art blogs. Art critics base their ', 'CID_5'),
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
('CIJID_16', 'Sculptor ', 'Sculptors design and shape three-dimensional works of art, either by molding and joining materials such as clay, glass, plastic, and metal or by cutting and carving forms from a block of plaster, wood, or stone. Some sculptors combine various materials to', 'CID_6'),
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
('CIJID_17', 'Food Stylist ', 'A food stylist designs, prepares and styles food for photography or on-air demonstration. They will consult with marketing and food production as to which foods should be photographed. They also may at times conduct live demonstrations at industry or priv', 'CID_6'),
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
('CIJID_18', 'Visual Communicators ', 'Visual communications designers conceive and design visual concepts to best convey clients\' messages to their intended audiences. In other words, as a visual communications designer you\'ll use visual stimuli to persuade your audience to do or feel somethi', 'CID_6'),
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
('CIJID_217', 'Research and Development Engineer ', 'conducts research in a field or specialization of an engineering discipline to discover facts, or performs research directed toward investigation, evaluation, and application of known engineering theories and principles', 'CID_77'),
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
('CIJID_29', 'Forensic Scientist ', 'Forensic scientists analyse evidence from crime scenes and create detailed scientific reports for legal proceedings. They spend much time in laboratories examining traces of evidence; their findings can then be used to associate or disassociate suspects with victims or crime scenes.', 'CID_10');
INSERT INTO `course_information_job` (`CIJID`, `JOB_NAME`, `INFORMATION`, `CID`) VALUES
('CIJID_3', 'Software Developer  ', 'Software developers create the computer applications that allow users to do specific tasks and the underlying systems that run the devices or control networks. Software quality assurance analysts and testers design and execute software tests to identify p', 'CID_1'),
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
('CIJID_67', 'Volcanologist Seismologist ', 'Volcanologists monitor activity around active volcanoes, looking for signs that the magma chamber is expanding or that pressure is building up. They use a variety of tools, such as seismographs to measure earthquakes or other seismic activity and GPS devices to measure changes in a volcano\'s height.\r\n', 'CID_23'),
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
('CIJID_85', 'Network Administrator', 'Network administrators are responsible for maintaining computer networks and solving any problems that may occur with them. Typical responsibilities of the job include: installing and configuring computer networks and systems. identifying and solving any problems that arise with computer networks and systems.\r\n', 'CID_29'),
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
  `MATH` varchar(20) NOT NULL,
  `SCIENCE` varchar(20) NOT NULL,
  `ENGLISH` varchar(20) NOT NULL,
  `READING_COMPREHENSION` varchar(20) NOT NULL,
  `CID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_percentage`
--

INSERT INTO `course_percentage` (`CPID`, `MATH`, `SCIENCE`, `ENGLISH`, `READING_COMPREHENSION`, `CID`) VALUES
('CPID_1', '15', '15', '30', '40', 'CID_2'),
('CPID_10', '15', '20', '25', '40', 'CID_11'),
('CPID_11', '10', '10', '60', '20', 'CID_12'),
('CPID_12', '20', '20', '30', '30', 'CID_13'),
('CPID_13', '20', '20', '30', '30', 'CID_14'),
('CPID_14', '10', '20', '30', '40', 'CID_15'),
('CPID_15', '10', '20', '35', '35', 'CID_16'),
('CPID_16', '20', '20', '30', '30', 'CID_17'),
('CPID_17', '99', '99', '99', '99', 'CID_18'),
('CPID_18', '10', '20', '35', '35', 'CID_19'),
('CPID_19', '30', '30', '20', '20', 'CID_20'),
('CPID_2', '10', '10', '40', '40', 'CID_3'),
('CPID_20', '30', '50', '10', '10', 'CID_21'),
('CPID_21', '40', '30', '15', '15', 'CID_22'),
('CPID_22', '40', '50', '5', '5', 'CID_23'),
('CPID_23', '25', '60', '10', '15', 'CID_24'),
('CPID_24', '35', '40', '10', '15', 'CID_25'),
('CPID_25', '50', '40', '5', '5', 'CID_26'),
('CPID_26', '50', '30', '5', '15', 'CID_27'),
('CPID_27', '30', '30', '20', '20', 'CID_28'),
('CPID_28', '30', '30', '20', '20', 'CID_29'),
('CPID_29', '40', '30', '10', '20', 'CID_30'),
('CPID_3', '20', '30', '20', '30', 'CID_4'),
('CPID_30', '60', '20', '10', '10', 'CID_31'),
('CPID_31', '70', '20', '5', '5', 'CID_32'),
('CPID_32', '50', '30', '10', '10', 'CID_33'),
('CPID_33', '30', '30', '20', '20', 'CID_34'),
('CPID_34', '30', '40', '15', '15', 'CID_35'),
('CPID_35', '25', '35', '20', '20', 'CID_36'),
('CPID_36', '40', '30', '10', '20', 'CID_37'),
('CPID_37', '30', '30', '20', '20', 'CID_38'),
('CPID_38', '35', '35', '15', '15', 'CID_39'),
('CPID_39', '40', '10', '20', '30', 'CID_40'),
('CPID_4', '20', '30', '20', '30', 'CID_5'),
('CPID_40', '40', '15', '30', '15', 'CID_41'),
('CPID_41', '35', '25', '15', '25', 'CID_42'),
('CPID_42', '40', '10', '30', '20', 'CID_43'),
('CPID_43', '30', '20', '25', '25', 'CID_44'),
('CPID_44', '20', '20', '30', '30', 'CID_45'),
('CPID_45', '30', '25', '20', '25', 'CID_48'),
('CPID_46', '20', '10', '30', '40', 'CID_49'),
('CPID_47', '40', '10', '10', '40', 'CID_50'),
('CPID_48', '35', '10', '15', '40', 'CID_51'),
('CPID_49', '25', '40', '10', '15', 'CID_52'),
('CPID_5', '20', '20', '30', '30', 'CID_6'),
('CPID_50', '15', '40', '10', '35', 'CID_53'),
('CPID_51', '10', '50', '20', '20', 'CID_54'),
('CPID_52', '25', '40', '10', '25', 'CID_55'),
('CPID_53', '30', '50', '10', '10', 'CID_56'),
('CPID_54', '20', '50', '10', '20', 'CID_57'),
('CPID_55', '30', '40', '15', '15', 'CID_58'),
('CPID_56', '25', '50', '10', '15', 'CID_59'),
('CPID_57', '25', '25', '25', '25', 'CID_60'),
('CPID_58', '25', '25', '25', '25', 'CID_61'),
('CPID_59', '10', '10', '40', '40', 'CID_62'),
('CPID_6', '10', '10', '40', '40', 'CID_7'),
('CPID_7', '40', '10', '20', '30', 'CID_8'),
('CPID_8', '30', '40', '15', '15', 'CID_9'),
('CPID_9', '20', '20', '30', '30', 'CID_10');

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
  `Answer` varchar(255) NOT NULL,
  `EID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_english`
--

INSERT INTO `eq_english` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EID`) VALUES
('EQEID_1', 'It also means care that is required to avoid sweeping generalizations.', 'Objectivity', 'Formality', 'Caution', 'Cohesiveness', 'Caution', 'EID_1'),
('EQEID_10', 'It pertains collectively to characteristics of an occupied space and the human use of such place where observations are being conducted:', 'Physical Setting', 'Objects and Material Culture	', 'Behavior Cycle	', 'Use of Language', 'Physical Setting', 'EID_10'),
('EQEID_11', 'What paper generally serves the purpose of providing in-depth discussion of a topic that the writer has a strong position on, usually with the intent of obtaining funding for the project from sponsors?', 'Research Paper', 'Concept Paper	', 'Position Paper', 'Review Paper', 'Concept Paper	', 'EID_11'),
('EQEID_12', 'Also known as scientific report, it is a document that describes a process, progress, or results of technical or scientific research:       ', 'Concept Paper', 'Business Correspondence', 'Proposal Paper', 'Technical Report', 'Technical Report', 'EID_12'),
('EQEID_13', 'It gives a history of an undertaking over a limited period, or from the date of beginning until the date of writing. It is narrative in style and usually follows the chronological order.', 'Progress Report', 'Examination Report', 'Preliminary Report', 'Periodic Report', 'Progress Report', 'EID_13'),
('EQEID_14', 'One significant difference between technical language and lay language is that technical language tends to be more:', 'Abstract', 'Subjective', 'Exact', 'Sophisticated', 'Exact', 'EID_14'),
('EQEID_15', 'Which of the following represents POOR writing in technical documents?', 'Writing that takes less time to comprehend.', 'Writing that emphasizes audience benefits.', 'Writing that takes a short time to read.', 'Writing that requires a reader to gather additional information to comprehend the content.', 'Writing that requires a reader to gather additional information to comprehend the content.', 'EID_15'),
('EQEID_16', 'In what stage of technical report writing does the writer conduct library research and recording of data?', 'Planning', 'Designing', 'Collecting Data', 'Rough Drafting', 'Collecting Data', 'EID_16'),
('EQEID_17', 'The first few sentences in the introduction of a position paper should be dedicated to:', 'Statement of position on the issue.', 'Identification of the debatable issue.', 'Exposition of the strongest argument or claim.', 'Wrap up of all the arguments and claims', 'Identification of the debatable issue.', 'EID_17'),
('EQEID_18', 'If you are assigned to read a newspaper article and argue against the opinions in the article, you should NOT:', 'Go through the article and refute each of the main points, explaining how stupid the author’s views are.', 'Analyze and summarize the strong and weak points of the article, and then state your own position.', 'Summarize the author’s main arguments and logically express your own views. ', 'Examine all the claims of the author and find loopholes or flaws in the light of logical explanations.', 'Go through the article and refute each of the main points, explaining how stupid the author’s views are.', 'EID_18'),
('EQEID_19', 'Whether at work or at school, the first step for writing any assignment is to:', 'Check resources for credibility and sufficiency.', 'Take good and concise notes during the research phase of the writing process.', 'Make sure you understand the assignment’s purpose and requirements.', 'Create an outline of main points and sub-points of your arguments.', 'Make sure you understand the assignment’s purpose and requirements.', 'EID_19'),
('EQEID_2', 'It means that academic writing must be impersonal and maintains a certain level of social distance.', 'Objectivity', 'Credibility', 'Partiality', 'Contextuality', 'Objectivity', 'EID_2'),
('EQEID_20', 'Usually, the purpose of a formal technical report revolves around:', 'Recommending a Course of Action', 'Making a Claim	', 'Selling a Product', 'Solving a Problem', 'Recommending a Course of Action', 'EID_20'),
('EQEID_21', 'Which part of a technical report provides information helpful in understanding the report such as subject and its scope, discussion of the problem, and what has been previously done to solve it', 'Discussion', 'Title Page	', 'Introduction', 'Summary Page', 'Discussion', 'EID_21'),
('EQEID_22', 'What technical report determines whether something is feasible or not, hence presenting, interpreting, and summarizing the data relevant to study?', 'Progress Report		', 'Field Report	', 'Feasibility Report	', 'Preliminary Report', 'Feasibility Report	', 'EID_22'),
('EQEID_23', 'Which section of a technical report provides an analysis, interpretation, and summary of results or findings?', 'Conclusions', 'Recommendations', 'Executive Summary	', 'Discussion', 'Conclusions', 'EID_23'),
('EQEID_24', 'What part of a concept paper gives an overview of how the project will be carried out together with any innovative approaches, techniques, and processes employed?', 'Purpose', 'Project Description', 'Methodology		', 'Introduction', 'Purpose', 'EID_24'),
('EQEID_25', 'Which definition structure is in essay length text that uses different rhetorical patterns to show meaning of a particular term or concept?', 'Extended Definition', 'Informal Definition', 'Sentence Definition', 'Formal Definition', 'Extended Definition', 'EID_25'),
('EQEID_26', 'It is the initial part of the interview when questions that will make respondents more at ease are asked.', 'Definition', 'Title Page	', 'Experiment', 'Warm-up Stage', 'Warm-up Stage', 'EID_26'),
('EQEID_27', 'Directly answers or addresses your research questions.', 'Informal Definition', 'Survey', 'Observation', 'Valid', 'Survey', 'EID_27'),
('EQEID_28', 'The subjects are not aware that they are being observed.', 'Covert Observation	', 'Research Instrument', 'Survey Report', 'Concept Paper', 'Covert Observation	', 'EID_28'),
('EQEID_29', 'Occurs when the researcher has a list of behaviors that he/she wants to observe.', 'Pre-Interview Stage', 'Structured Observation', 'Main Interview Stage', 'Survey report', 'Structured Observation', 'EID_29'),
('EQEID_3', 'It is defined as the copying verbatim of language and ideas of other writers and taking credit for them.', 'Research', 'Plagiarism', 'Citation', 'Crediting', 'Plagiarism', 'EID_3'),
('EQEID_30', 'Foundation of the full proposal.', 'Concept Paper (uses)', 'Overt Observation', 'Main interview stage', 'Concept Paper for a Project', 'Concept Paper for a Project', 'EID_30'),
('EQEID_31', 'In this academic paper, it highlights and shows the authors’ expertise.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Direct Quoting', 'EID_31'),
('EQEID_32', 'Is usually a short part of the text.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Direct Quoting', 'EID_32'),
('EQEID_33', 'Matches the source word for word.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Direct Quoting', 'EID_33'),
('EQEID_34', 'A text that convey powerful message.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Direct Quoting', 'EID_34'),
('EQEID_35', 'Cited part appears between quotation marks.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Direct Quoting', 'EID_35'),
('EQEID_36', 'Involves putting a passage from a source into your own words.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Paraphrasing', 'EID_36'),
('EQEID_37', 'Presents a broad overview; so is usually much shorter than the original text.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Summarizing', 'EID_37'),
('EQEID_38', 'A short text with one or two sentences or a paragraph with a maximum of five sentences.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Paraphrasing', 'EID_38'),
('EQEID_39', 'Involves putting the main ideas/s into your own words, but including only the main point/s.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Summarizing', 'EID_39'),
('EQEID_4', 'Many times, a formal report is read by:', 'Various Audiences at Various Levels of a Business', 'Non-Technical Audience', 'Science Professor', 'General Public', 'Various Audiences at Various Levels of a Business', 'EID_4'),
('EQEID_40', 'Changes the words or phrasing of a passage but retain and fully communicates the original meaning.', 'Direct Quoting', 'Paraphrasing', 'Summarizing', 'Notetaking', 'Paraphrasing', 'EID_40'),
('EQEID_41', 'It may require only 200-250 words for its abstract.', 'Academic Journal', 'Descriptive Abstract', 'APA Abstract', 'MLA Abstract', 'Academic Journal', 'EID_41'),
('EQEID_42', 'These are papers presented in scholastic conferences, and may be revised as articles for possible publication in scholarly journals.', 'Academic Journal', 'Theses and Dissertations', 'Conference Papers', 'Manuscripts and Abstracts', 'Conference Papers', 'EID_42'),
('EQEID_43', 'Published in scholarly journals, this type of academic text offers results of research and development that can either\r\nimpact the academic community or provide relevance to nation-building.\r\n', 'Academic Journal', 'Theses and Dissertations', 'Articles', 'Manuscripts and Abstracts', 'Articles', 'EID_43'),
('EQEID_44', 'The purpose is just to pique the interest of the target audience. Condense information into 15 – 30% of the original text. (Ex. Publishing companies, libraries, and movie catalogues.)\r\n', 'Summative Abstract	', 'Descriptive Abstract', 'APA Abstract', 'MLA Abstract', 'Descriptive Abstract', 'EID_44'),
('EQEID_45', 'Introduce by signal phrases that announce the purpose, scope, or direction of the text as well as its focus.', 'Thesis Statement', 'Purpose Statement', 'Topic Sentence	', 'Abstract', 'Purpose Statement', 'EID_45'),
('EQEID_46', 'In this format, the summarized idea comes after the citation. The author’s name/s is/are connected by an appropriate reporting verb.\r\n', 'In-Text Citation', 'Coverage', 'Reporting Verb', 'Author-Heading Format', 'Author-Heading Format', 'EID_46'),
('EQEID_47', 'A research paper does not use any citation, does not include specific result statistics, and is last to be written.', 'Quantitative Abstract	', 'Qualitative Abstract', 'Descriptive Abstract', 'Research Abstract', 'Research Abstract', 'EID_47'),
('EQEID_48', 'Checking the list of authors credential and its domain is preferred (.edu, .gov, .org, or .net) refers to what criteria in \r\nevaluating sources.\r\n', 'Research', 'Authority', 'Theses', 'Articles', 'Research', 'EID_48'),
('EQEID_49', 'When the information can be view properly and not limited to fees, browser technology, or software requirements refer to what criteria in evaluating sources.\r\n', 'Coverage', 'Topic Sentence', 'Theses', 'Articles', 'Coverage', 'EID_49'),
('EQEID_5', 'Which categories of workers are largely responsible for preparing technical reports and communications?', 'Teachers and Professors', 'Marketing Consultants	', 'Language Experts', 'Professional and Technical Communicators', 'Professional and Technical Communicators', 'EID_5'),
('EQEID_50', 'It provides accurate information with limited advertising, refers to what criteria in evaluating sources.', 'Research', 'Authority', 'Theses', 'Objectivity', 'Objectivity', 'EID_50'),
('EQEID_6', 'What part of a long technical report serves as the navigation device by presenting a list of heading and subheadings together with their respective page numbers?', 'Table of Contents', 'Letter of Transmittal', 'Title Page', 'Executive Summary', 'Table of Contents', 'EID_6'),
('EQEID_7', 'What paper presents the writer’s stance or point of view regarding an issue, thereby requiring authority and confidence?', 'Concept Paper', 'Position Paper', 'Technical Report', 'Field Report', 'Position Paper', 'EID_7'),
('EQEID_8', 'What technique has the advantage of giving unfiltered record of an observation and facilitates repeated analysis of such observations?', 'Video and Audio Recordings	', 'Notetaking', 'Photography', 'Illustrations and Drawings', 'Video and Audio Recordings', 'EID_8'),
('EQEID_9', 'Which technical report documents an observation of people, places, or events to identify common themes in relation to the research problem underpinning the study?', 'Feasibility Report	', 'Field Report', 'Recommendation Report', 'Operations Report', 'Field Report', 'EID_9');

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
  `Answer` varchar(255) NOT NULL,
  `EID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_math`
--

INSERT INTO `eq_math` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EID`) VALUES
('EQMID_10', 'What is the probability that you will obtain a score AT LEAST 20? ', '0.50', '0.30', '0.80	', '1.00', '1.00', 'EID_10'),
('EQMID_11', 'What is the probability that three or more copies will be demanded in a particular day?', '0.60', '0.80', '0.64', '0.74', '0.64', 'EID_11'),
('EQMID_12', 'What is the probability that the demand will be at least two?\r\n', '0.60', '0.80', '0.64', '0.74', '0.80', 'EID_12'),
('EQMID_13', 'What is the probability that the demand will be at least two but not more than six?', '0.60', '0.80', '0.64', '0.74', '0.60', 'EID_13'),
('EQMID_14', 'What is the mean of the probability distribution?', '1.5', '2.0', '3.5', '4.0', '4.0', 'EID_14'),
('EQMID_15', 'What is the variance of the probability distribution?', '4.15', '6.35', '8.00', '7.50', '8.00', 'EID_15'),
('EQMID_16', 'What is the expected number of defective parts that will be manufactured in one day?', '0.51', '0.39', '0.46', '0.27', '0.39', 'EID_16'),
('EQMID_17', 'What is the variance of the probability distribution?', '0.9876', '0.6789', '0.6879', '0.8679', '0.6879', 'EID_17'),
('EQMID_18', 'Which of the following is the shape of a normal curve?', 'Bell-shaped', 'Cone-shaped', 'V-shaped', 'Heart-shaped', 'Bell-shaped', 'EID_18'),
('EQMID_19', 'What is the total are under the normal curve?', '100 sq. unit', '1 sq. unit', '0.5 sq. unit', '50 sq. unit', '1 sq. unit', 'EID_19'),
('EQMID_20', 'Which of the following is a distribution with a mean of 0 and a standard deviation of 1?', 'Normal Distribution', 'Sampling Distribution', 'Standard Normal Distribution', 'Probability Distribution', 'Standard Normal Distribution', 'EID_20'),
('EQMID_21', 'Given the mean \"μ\" =50 and the standard deviation \"σ\" =4 of a population, find the z-value that corresponds to a score X=58', '1.00	', '2.00', '3.00', '4.00', '2.00', 'EID_21'),
('EQMID_22', 'Given the mean \"μ\" =45 and the standard deviation \"σ\" =6 of a population, find the X-value that corresponds to z=-1.00.', '36', '37', '38', '39', ' 39', 'EID_22'),
('EQMID_23', 'A certain tire company recorded that the average mileage per tire that they produced last year was 40,000 mi. with a standard deviation of 5300 mi. The z-score for one tire was -2.33. What mileage did this tire provide?', '27,651 mi', '31,280 mi', '32,108 mi', '31, 208 mi', '27,651 mi', 'EID_23'),
('EQMID_24', 'Jane works for New York theatrical agency whose employees had an average income this past year of $48,000 with a standard deviation of $2,500. How much did Jane earn this past year if her z-score is -2.3?', '$46,500', '$45,600', '$42,250', '$45,060', '$42,250', 'EID_24'),
('EQMID_25', 'Which of the following cumulative area corresponds to the area of the region at the left of z=-0.56?', '0.2088', '0.2877', '0.1808', '0.2054', '0.2877', 'EID_25'),
('EQMID_26', 'What is the cumulative area that corresponds to the area of the region at the left to z=1.32?', '0.9382', '0.9192', '0.9082', '0.9066', '0.9066', 'EID_26'),
('EQMID_27', 'Find the area that corresponds to the area of the region at the right of z=1.05.', '0.1469', '0.6149', '0.1496', '0.1649', '0.1469', 'EID_27'),
('EQMID_28', 'Which of the following corresponds to the area of the region at the right of z=2.18?', '0.4016', '0.1046', '0.0146', '0.6041', '0.0146', 'EID_28'),
('EQMID_29', 'Find the proportion of area above z=-1.', '0.1586', '0.9332', '0.0440', '0.8413', '0.8413', 'EID_29'),
('EQMID_30', 'Find the area to the left of z=1.5.', '0.1586', '0.9332', '0.0440', '0.8413', '0.9332', 'EID_30'),
('EQMID_31', 'Find the area between z=0.98 and z=2.58.', '0.1586', '0.9332', '0.0440', '0.8413', '0.1586', 'EID_31'),
('EQMID_32', 'Which of the following corresponds to the mean and standard deviation of the age of the applicants?', 'μ=20 and σ=4', 'μ=4 and σ=28', 'μ=28 and σ=4', 'μ=4 and σ=20', 'μ=28 and σ=4', 'EID_32'),
('EQMID_33', 'Find the z-score that corresponds to the age of 20 years old.', 'z=-2.00	', 'z=2.00', 'z=1.50', 'z=2.56', 'z=-2.00	', 'EID_33'),
('EQMID_34', 'What is the area of the region corresponding the given problem?', '0.2280', '0.9772 ', '0.4772', '0.0228', '0.0228', 'EID_34'),
('EQMID_35', 'If a total of 3000 applicants applied for the job last 2022, how many applicants are  below 20 years old?  ', '1,432 applicants	', '684 applicants', '69 applicants', '2,932 applicants', '69 applicants', 'EID_35'),
('EQMID_36', 'What is the probability that a student, picked at random, has a height greater than 116cm?', '0.1587', '0.5187', '0.8157', '0.7158', '0.1587', 'EID_36'),
('EQMID_37', 'What is the probability that the height of a student, picked at random, is less than 104cm?', '0.7158', '0.8157', '0.1587', '0.5187', '0.1587', 'EID_37'),
('EQMID_38', 'If 500 students participated in a field demonstration, how many students belong to the upper 15% of the group?', '70 children', '75 children', '80 children', '85 children', '75 children', 'EID_38'),
('EQMID_39', 'How do we call a sampling procedure that gives every element of the population an equal chance of being selected in the sample?', 'Quota Sampling', 'Convenience Sampling', 'Purposive Sampling', 'Random Sampling', 'Random Sampling', 'EID_39'),
('EQMID_40', 'Which of the following CANNOT be considered as a probability sampling?', 'Systematic Sampling', 'Judgement Sampling	', 'Cluster Sampling', 'Stratified Sampling', 'Judgement Sampling	', 'EID_40'),
('EQMID_41', 'This sampling method involves selecting a simple random sample from EACH of a given number of groups also known as strata?', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Stratified Random Sampling', 'EID_41'),
('EQMID_42', 'Which of the following sampling method involves dividing the population into groups known as clusters where a simple random sample will be taken from SELECTED clusters only.', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Cluster Random Sampling', 'EID_42'),
('EQMID_43', 'It is a sampling method that involves the random selection of one of the first k elements in an ordered population?', 'Simple Random Sampling	', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Stratified Random Sampling', 'EID_43'),
('EQMID_44', 'Which of the following terms corresponds to a computed measure that describes the population of the study?', 'Population', 'Parameter', 'Sample', 'Statistics', 'Parameter', 'EID_44'),
('EQMID_45', 'These are descriptive measures computed from a sample that are used as estimate of the parameter.', 'Population', 'Parameter', 'Sample', 'Statistics', 'Statistics', 'EID_45'),
('EQMID_46', 'The teacher randomly selects 20 boys and 15 girls from a batch of learners to be the members of a group that will go on a field trip.', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Stratified Random Sampling', 'EID_46'),
('EQMID_47', 'A sample of 10 mice are selected at random from a set of 40 mice to test the effect of a certain medicine.', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Simple Random Sampling', 'EID_47'),
('EQMID_48', 'Two out of five people in a certain seminar are asked what they think of the president', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Simple Random Sampling', 'EID_48'),
('EQMID_49', 'A barangay health worker asks every 4th house in the village for the ages of the children living in those households.', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Systematic Random Sampling', 'EID_49'),
('EQMID_5', 'Four coins are tossed. Let Z be the random variable representing the number of heads that occur. Find the values of the random variable Z.', 'Z={0,1,2,3}', 'Z={1,2,3}', 'Z={0,1,2,3,4}	', 'Z={1,2,3,4}', 'Z={0,1,2,3,4}', 'EID_5'),
('EQMID_50', 'Bea, a Statistics student, wants to determine who cares more about their physical appearances – the male or the female students. She wants to limit her study to Grade 11 students; however, there are more females than males which are 279 and 250, respectively. If Bea wants her sample to consist only of 50 students, which sampling method will she use?', 'Simple Random Sampling', 'Cluster Random Sampling', 'Systematic Random Sampling', 'Stratified Random Sampling', 'Stratified Random Sampling', 'EID_50'),
('EQMID_6', 'From a box containing 4 black balls and 2 green balls, 3 balls are drawn in succession. Each ball is placed back in the box before the next draw is made. Let G be a random variable representing the number of green balls that occur. Find the values of the random variable G.', 'G={0,1,2}', 'G={1,2}', 'G={0,1,2,3}', 'G={1,2,3}', 'G={0,1,2}', 'EID_6'),
('EQMID_7', 'What is the probability that you will obtain a score EXACTLY 22?', '0.50', '0.30', '0.80	', '1.00', '0.30', 'EID_7'),
('EQMID_8', 'What is the probability that you will obtain a score AT LEAST 21?', '0.50', '0.30', '0.80	', '1.00', '0.80	', 'EID_8'),
('EQMID_9', 'What is the probability that you will obtain a score AT MOST 21?', '0.50', '0.30', '0.80	', '1.00', '0.50', 'EID_9');

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
  `Answer` varchar(255) NOT NULL,
  `EID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_reading_comprehension`
--

INSERT INTO `eq_reading_comprehension` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EID`) VALUES
('EQRCID_1', 'The period that includes all kinds of literature produced by our native ancestors before any colonization.', 'Pre-colonial Literature', 'Philippine Literature during Spanish Colonization', 'Philippine Literature during American Colonization', 'Philippine Literature during Japanese Colonization', 'Pre-colonial Literature', 'EID_1'),
('EQRCID_10', 'All literary works written and published after the Period of the Third Republic.', 'Spanish and American Literature', '21ST Century Literature', 'New Literature', 'None of the above', '21ST Century Literature', 'EID_10'),
('EQRCID_11', 'It is 50% of the narrative is presented without words and the reader must interpret the images to comprehend', 'Illustrated Novel', 'Manga', 'Doodle Fiction', 'Graphic Novel', 'Illustrated Novel', 'EID_11'),
('EQRCID_12', 'It is a Triple Media Literature.', 'Digi-Fiction', 'Manga', 'Chick Lit', 'Science Fiction', 'Digi-Fiction', 'EID_12'),
('EQRCID_13', 'The narrative work in which the story is conveyed to the reader using a comic form.', 'Manga', 'Graphic Novel', 'Doodle Fiction', 'Text Talk Novels', 'Graphic Novel', 'EID_13'),
('EQRCID_14', 'The literary presentation where the author incorporates doodle writing, drawings and handwritten graphics in place of the traditional font.', 'Manga', 'Doodle Fiction', 'Text Talk Novel', 'Blogs', 'Doodle Fiction', 'EID_14'),
('EQRCID_15', 'It is used in the English-speaking world as a generic term for all comic books and graphic novels originally published in Japan.', 'Manga', 'Blogs', 'Chick Literature', 'Text Talk Novel', 'Manga', 'EID_15'),
('EQRCID_16', 'Accounts of daily life and adventures, advice, tutorials which are regularly updated are found here.', 'Manga', 'Blogs', 'Chick Lit', 'Text Talk Novel', 'Blogs', 'EID_16'),
('EQRCID_17', 'The genre fiction which addresses issues of modern womanhood, often humorously and lightheartedly.', 'Manga', 'Blogs', 'Chick Literature', 'Text Talk Novel', 'Chick Literature', 'EID_17'),
('EQRCID_18', 'It is a genre of speculative fiction dealing with imaginative  concepts  such as futuristic science and technology, space travel, time travel, faster than light travel, a parallel universe and extraterrestrial life.', 'Six word flash fiction', 'Science Fiction', 'Flash Fiction', 'Creative NonFiction', 'Science Fiction', 'EID_18'),
('EQRCID_19', 'The style of fictional literature of extreme brevity.', 'Six word flash fiction', 'Science Fiction', 'Flash Fiction', 'Creative NonFiction', 'Flash Fiction', 'EID_19'),
('EQRCID_2', 'These are literary genre examples of Philippine Literature during Spanish Colonization.', 'Riddle, Proverbs, Chants, Myths, Folks Songs, Epic', 'Christian Doctrines, Senakulo, Pasyon, Awit', 'Poetry, Short Story, Publications, Drama', 'None of the above', 'None of the above', 'EID_2'),
('EQRCID_20', 'The genre of writing that uses literary styles and techniques to create factually accurate narratives.', 'Six word flash fiction', 'Science Fiction', 'Flash Fiction', 'Creative NonFiction', 'Creative NonFiction', 'EID_20'),
('EQRCID_21', 'A factual story is written using literary devices and techniques.', 'Creative Nonfiction', 'Digi-Fiction', 'Doodle Fiction', 'Illustrated Novel', 'Creative Nonfiction', 'EID_21'),
('EQRCID_22', 'Literature that uses hypertext mark-up to connect to other parts of the piece.', 'Blog', 'Flash Fiction', 'Digi-fiction', 'Hyper Poetry', 'Hyper Poetry', 'EID_22'),
('EQRCID_23', 'The stories are told almost entirely in dialogue simulating social network exchange', 'Digi-Fiction', 'Manga', 'Graphic Novel', 'Text-Talk Novel', 'Text-Talk Novel', 'EID_23'),
('EQRCID_24', 'It is defined as the circumstances that form the setting of events, statements or ideas and in the way of which it can be fully understood and assessed.', 'Imagery', 'Auditory Imagery', 'Kinesthetic Imagery', 'Context', 'Context', 'EID_24'),
('EQRCID_25', 'It is creating a picture in the reader’s mind by using words that appeal to the senses.', 'Imagery', 'Auditory Imagery', 'Kinesthetic Imagery', 'Context', 'Imagery', 'EID_25'),
('EQRCID_26', 'This genre of speculative fiction deals with concepts of time, travel, parallel universe, extraterrestrial life and futuristic technology.', 'Digi-Fiction', 'Doodle Fiction', 'Creative Nonfiction', 'Science Fiction', 'Science Fiction', 'EID_26'),
('EQRCID_27', 'A 700-word story like Angels and Blueberries by Tara Campbell is a one-shot fiction that falls under this literary genre.', 'Flash Fiction', 'Blog', 'Hyper Poetry', 'Digi-Fiction', 'Flash Fiction', 'EID_27'),
('EQRCID_28', 'It is a type of Imagery that produced by the use of words that appeal to the sense of hearing.', 'Imagery', 'Auditory Imagery', 'Kinesthetic Imagery', 'Context', 'Auditory Imagery', 'EID_28'),
('EQRCID_29', 'It is a type of Imagery that produced by the use of words that appeal to the actions and movement.', 'Imagery', 'Auditory Imagery', 'Kinesthetic Imagery', 'Context', 'Auditory Imagery', 'EID_29'),
('EQRCID_3', 'Which literary themes writers explored a lot of subjects but the theme of love and youth persistence. They had also acquired mastery of English writing.', 'Pre Colonial Literature', 'Philippine Literature during Spanish Colonization', 'Philippine Literature during American Colonization', 'Philippine Literature during Japanese Colonization', 'Philippine Literature during American Colonization', 'EID_3'),
('EQRCID_30', 'Miranda Dickinson’s It started with a Kiss is an example of this genre.', 'Chick Lit', 'Digi-Fiction', 'Hyper Poetry', 'Text-Talk Novel', 'Chick Lit', 'EID_30'),
('EQRCID_31', 'Before it was adapted into an anime, Yoshihiro Togashi’s Hunter X Hunter is a comic book series from Japan that falls under this literary genre.', 'Manga', 'Digi-Fiction', 'Graphic Novel', 'Illustrated Novel', 'Manga', 'EID_31'),
('EQRCID_32', 'It is 50% of the narrative is presented without words and the reader must interpret the images to comprehend', 'Illustrated Novel', 'Manga', 'Doodle Fiction', 'Graphic Novel', 'Illustrated Novel', 'EID_32'),
('EQRCID_33', 'The literary presentation where the author incorporates doodle writing, drawings and handwritten graphics in place of the traditional font.', 'Manga', 'Doodle Fiction', 'Text Talk Novel', 'Blog', 'Doodle Fiction', 'EID_33'),
('EQRCID_34', 'A weblog, a website containing short articles called posts that are changed regularly.', 'Manga', 'Blog', 'Chick Lit', 'Text Talk Novel', 'Blog', 'EID_34'),
('EQRCID_35', 'To get the full story, students must engage in navigation, reading and viewing in all three forms.', 'Manga', 'Digi-Fiction', 'Graphic Novel', 'Illustrated Novel', 'Digi-Fiction', 'EID_35'),
('EQRCID_36', 'It is based on facts and the author\'s opinion about the subject.', 'Poetry', 'Drama', 'Fiction', 'Non-Fiction', 'Non-Fiction', 'EID_36'),
('EQRCID_37', 'It is a composition in prose or verse presenting in dialogue or pantomime, a story involving conflict, more contrast of character especially intended to be acted on stage.', 'Poetry', 'Drama', 'Fiction', 'Non-Fiction', 'Drama', 'EID_37'),
('EQRCID_38', 'It is an imaginative awareness of experience expressed through meaning, sound and rhythmic language choices to evoke an emotional response.', 'Poetry                     ', 'Drama                     ', 'Fiction', 'Non-Fiction', 'Poetry                     ', 'EID_38'),
('EQRCID_39', 'PowerPoint application is used to________.', 'design animations', 'create slideshow presentations', 'process and store digital presentations', 'generate ideas from people thru mapping', 'create slideshow presentations', 'EID_39'),
('EQRCID_4', 'These are literary samples of Philippine Literature during the American Colonization.', 'These are literary samples of Philippine Literature during the American Colonization.', 'Christian Doctrines, Senakulo, Pasyon, Awit,', 'Poetry, Short Story, Publications, Drama', 'None of the above', 'Poetry, Short Story, Publications, Drama', 'EID_4'),
('EQRCID_40', 'This refers to an electronic medium for recording, copying, playing back, broadcasting, and displaying moving visual media.', 'audio', 'video', 'computer', 'animation', 'video', 'EID_40'),
('EQRCID_41', 'Which of the following statements is TRUE?', 'Multimedia use in learning is expensive.', 'Multimedia solely uses graphics and animation.', 'Learners are encouraged to use only one multimedia format.', 'Integration of multimedia in studying literature enhances learner’s ICT skills.', 'Integration of multimedia in studying literature enhances learner’s ICT skills.', 'EID_41'),
('EQRCID_42', 'It is used to describe any sound in terms of receiving, transmitting or   reproducing its specific frequency', 'audio', 'noise', 'video', 'frequency', 'audio', 'EID_42'),
('EQRCID_43', 'Mind mapping is a tool used to visually organize information that helps us to analyze, synthesize, recall and__________new ideas.', 'draw', 'estimate', 'evaluate', 'generate', 'evaluate', 'EID_43'),
('EQRCID_44', 'What kind of context is featured in the paragraph below.\r\n\"The short story depicted the usual atmosphere of the Philippines around the hostile environment the war had created—one of which had American soldiers around the vicinity\"\r\n', 'Text', 'Writer’s ', 'Reader’s', 'Socio-Cultural', 'Socio-Cultural', 'EID_44'),
('EQRCID_45', 'What kind of context is being described below?\r\n\r\n\"It is part of the larger text such as newspaper, history, events, translated in it.\" \r\n', 'Text’s', 'Writer’s ', 'Reader’s', 'Socio-Cultural', 'Text’s', 'EID_45'),
('EQRCID_46', 'What does someone talk about when he/she shares an anecdote?', 'opinions', 'personal experiences', 'plans and dreams in life', 'biography of other people', 'personal experiences', 'EID_46'),
('EQRCID_47', 'What anecdote shares frightening stories of dangers that can be avoided by following regulations?', 'motivation', 'cautionary', 'reminiscence', 'entertainment', 'cautionary', 'EID_47'),
('EQRCID_48', 'What is the purpose of the anecdote below?\r\n\r\n\"Oh, I would never dream of assuming I know all Hogwarts\' secrets, Igor. Only this morning, for instance, I took a wrong turn on the way to the bathroom and found myself in a beautifully proportioned room I had never seen before, containing a really rather magnificent collection of chamber pots. When I went back to investigate more closely, I discovered that the room had vanished.\"\r\n', 'cautionary', 'motivational', 'inspirational', 'reminiscence', 'reminiscence', 'EID_48'),
('EQRCID_49', 'Before beginning a lecture on not following traffic rules, a father tells his son an incident of collision that caused many lives due to ignoring traffic signs. What is the purpose of this anecdote?', 'cautionary', 'motivational', 'inspirational', 'reminiscence', 'cautionary', 'EID_49'),
('EQRCID_5', 'The themes of this period was nationalism, life in the barrio, faith, love, religion and the arts.', 'Pre Colonial Literature', 'Philippine Literature during Spanish Colonization', 'Philippine Literature during American Colonization', 'Philippine Literature during Japanese Colonization', 'Philippine Literature during Japanese Colonization', 'EID_5'),
('EQRCID_50', 'Most of the writers use anecdote to___________________________________.', 'tell a story', 'deal with differences of opinions', 'share helpful tips on making a living', 'impart a lesson in an entertaining way', 'impart a lesson in an entertaining way', 'EID_50'),
('EQRCID_6', 'The Haiku,Tanaga and Filipino drama are literary genre of_____________________________', 'Pre Colonial Literature', 'Philippine Literature during Spanish Colonization', 'Philippine Literature during American Colonization', 'Philippine Literature during Japanese Colonization', 'Philippine Literature during Japanese Colonization', 'EID_6'),
('EQRCID_7', 'The period in Philippine Literature is based on oral tradition. During this time, folk songs, epics, narratives and sung narratives were popular which are passed from generation to generation.', 'Pre-Colonial Period', 'Spanish Colonial Period', 'American Colonial Period', 'Philippine Literature under the Republic', 'Pre-Colonial Period', 'EID_7'),
('EQRCID_8', 'A 21st century poetry where readers move from one site to another because of the embedded links in the words.', 'Digi-fiction', 'Graphic-novel', 'Six-word stories', 'Hypertext Poetry', 'Hypertext Poetry', 'EID_8'),
('EQRCID_9', 'Which of the following is the reason why Philippine Literature during the Japanese regime came to a halt?', 'Filipino writers were imprisoned as mandated by the Japanese government.', 'Filipino writers were banned from using English or any language other than Nihonggo.', 'Filipino writers were charged high costs for producing or publishing texts under their names.', 'None of the above.', 'Filipino writers were banned from using English or any language other than Nihonggo.', 'EID_9');

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
  `Answer` varchar(255) NOT NULL,
  `EID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_science`
--

INSERT INTO `eq_science` (`EQID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EID`) VALUES
('EQSID_1', 'Which of the following asserts that stars are formed when a dense region of molecular cloud collapse?', 'Big Bang Theory ', 'Evolution', 'Creation Theory ', 'Star Formation Theory', 'Star Formation Theory', 'EID_1'),
('EQSID_10', 'At what stage does the outer covering of a star blow due to insufficient energy?', 'Protostar', 'Red Giant', 'Supernova ', 'White Dwarf', 'White Dwarf', 'EID_10'),
('EQSID_11', 'What will happen to a star if its core can no longer produce the needed energy?', 'Protostar', 'Red Giant', 'Supernova ', 'White Dwarf', 'Supernova ', 'EID_11'),
('EQSID_12', 'Who predicted new elements based on the atomic number of known elements?', 'Ernest Rutherford', 'John Newlands', 'Henry Mosely', 'Plato', 'Henry Mosely', 'EID_12'),
('EQSID_13', 'What type of nuclear reaction emits a particle with two protons and two neutrons?', 'Alpha Emission', 'Beta Emission', 'Gamma Emission', 'Fusion', 'Alpha Emission', 'EID_13'),
('EQSID_14', 'What type of nuclear reaction emits electrons?', 'Alpha Emission', 'Beta Emission', 'Gamma Emission', 'Fusion', 'Beta Emission', 'EID_14'),
('EQSID_15', 'What type of nuclear reaction emits gamma rays?', 'Alpha Emission', 'Beta Emission', 'Gamma Emission', 'Fusion', 'Gamma Emission', 'EID_15'),
('EQSID_16', 'Which of the following statement is TRUE about water?', 'It is a Polar Molecule', 'It is a Non-Polar Molecule', 'It is a both Polar & Non-Polar', 'It has no Polarity', 'It is a Polar Molecule', 'EID_16'),
('EQSID_17', 'Which of the following will be the solvent if a non-polar substance dissolves in an unknown liquid?', 'Non-Polar', 'Polar ', 'Water', 'All of the above', 'Non-Polar', 'EID_17'),
('EQSID_18', 'Which of the following is a shape a non-polar molecule will form?', 'Asymmetrical', 'Symmetrical', 'Square', 'Octagonal', 'Symmetrical', 'EID_18'),
('EQSID_19', 'Which of the following is an example of non-polar molecule?', 'CO2', 'H2O', 'NH3 ', 'SO2', 'CO2', 'EID_19'),
('EQSID_2', 'Which refers to the fragments of cloud that contract and form a stellar core?', 'Protostar', 'Red Giant', 'Supernova', 'White Dwarf', 'Protostar', 'EID_2'),
('EQSID_20', 'Which of the following is an example of polar molecule?', 'CO2', 'H2O', 'CCI4', 'XeF4', 'H2O', 'EID_20'),
('EQSID_21', 'Which of the following is an intermolecular force of attraction that is present only in polar molecules?', 'Covalent Bond', 'Dipole-Dipole Forces', 'Hydrogen Bond', 'London Dispersion Forces', 'Dipole-Dipole Forces', 'EID_21'),
('EQSID_22', 'Which of these is the strongest intermolecular force of attraction?', 'Ionic Bond', 'Dipole-Dipole Forces', 'Hydrogen Bond', 'London Dispersion Forces', 'Hydrogen Bond', 'EID_22'),
('EQSID_23', 'Which of the following molecules can exhibit hydrogen bond?', 'HF', 'HCI', 'NaF', 'NaBr', 'HF', 'EID_23'),
('EQSID_24', 'What explains the very high boiling point of water?', 'A strong hydrogen bond exists between water molecules.', 'Dispersion forces are present in all molecules.', 'The shape of the polar bond is asymmetrical.', 'There is a strong dipole-dipole bonds between water molecules.', 'A strong hydrogen bond exists between water molecules.', 'EID_24'),
('EQSID_25', 'Which of the following is TRUE concerning substances with weaker intermolecular forces of attraction?', 'The lower is the heat of vaporization. ', 'The lower its vapor pressure at a given temperature.', 'The lower is the rate of evaporation.', 'The higher the values of its melting point. ', 'The lower is the heat of vaporization. ', 'EID_25'),
('EQSID_26', 'Which of the following is the intermolecular force that is present in all types of the neighboring molecules?', 'Ionic Bond', 'Dipole-Dipole Forces', 'Hydrogen Bond', 'London Dispersion Forces', 'London Dispersion Forces', 'EID_26'),
('EQSID_27', 'Which set is correctly ordered from the weakest to strongest intermolecular attractions?', 'London Dispersion Forces, Dipole-Dipole, Hydrogen Bond', 'Dipole-Dipole, Hydrogen Bond, London Dispersion Forces', 'Dipole-Dipole, London Dispersion Forces, Hydrogen Bond', 'London Dispersion Forces, Hydrogen Bond, Dipole-Dipole', 'London Dispersion Forces, Dipole-Dipole, Hydrogen Bond', 'EID_27'),
('EQSID_28', 'Which type of intermolecular force of attraction is present in the molecule HF?', 'Ionic Bond', 'Dipole-Dipole ', 'Dispersion', 'Hydrogen Bond', 'Hydrogen Bond', 'EID_28'),
('EQSID_29', 'Which of the following properties decreases once the strength of its intermolecular forces increases?', 'Viscosity', 'Melting Point', 'Boiling Point', 'Evaporation rate', 'Evaporation rate', 'EID_29'),
('EQSID_3', 'What will be formed when a protostar attains its gravitational equilibrium? ', 'Main Sequence Star', 'Red Giant', 'Supernova', 'White Dwarf', 'Main Sequence Star', 'EID_3'),
('EQSID_30', 'Which of the following trends is correct about substances with stronger intermolecular attractions? ', 'Higher melting and higher boiling points', 'Lower melting points and higher boiling points', 'Lower melting and boiling points', 'Higher melting points and lower boiling points', 'Higher melting and higher boiling points', 'EID_30'),
('EQSID_31', 'Which of the following macromolecules contains Carbon, Oxygen and Hydrogen?', 'Carbohydrates', 'Lipids', 'Protein', 'Nucleic Acid', 'Carbohydrates', 'EID_31'),
('EQSID_32', 'Which type of bond exists between amino acids?', 'Ester', 'Glycosidic', 'Peptide', 'Phosphodiester', 'Peptide', 'EID_32'),
('EQSID_33', 'Which of the following macromolecules contains Nitrogen base?', 'Carbohydrates', 'Lipids', 'Protein ', 'Nucleic Acid', 'Nucleic Acid', 'EID_33'),
('EQSID_34', 'Which of the following is NOT an example of carbohydrates?', 'Cellulose', 'Chitin', 'Starch', 'Sugar', 'Chitin', 'EID_34'),
('EQSID_35', 'Which of the following is NOT an example of amino acid?', 'Alanine', 'Ascorbic Acid', 'Lysine', 'Valine', 'Ascorbic Acid', 'EID_35'),
('EQSID_36', 'Which refers to the smallest unit of macromolecule?', 'Amino Acid', 'Monomer', 'Polymer', 'Sucrose', 'Monomer', 'EID_36'),
('EQSID_37', 'Which of the following serves as storage of energy for plants?', 'Chitin ', 'Cellulose', 'Glycogen', 'Starch', 'Glycogen', 'EID_37'),
('EQSID_38', 'Which is NOT an example of lipids?', 'Fats', 'Starch', 'Steroid', 'Wax', 'Starch', 'EID_38'),
('EQSID_39', 'Which of the following is the function being performed by lipids in our body?', 'Contractile', 'Insulation', 'Structural', 'Transport', 'Insulation', 'EID_39'),
('EQSID_4', 'Where do hydrogen and helium fuse in a main sequence star?', 'Core', 'Crust', 'Inner Core', 'Mantle', 'Core', 'EID_4'),
('EQSID_40', 'Carrying genetic materials is performed by what biological macromolecule?', 'Carbohydrates', 'Lipids', 'Protein', 'Nucleic Acid', 'Nucleic Acid', 'EID_40'),
('EQSID_41', 'Which of the following is the minimum amount of energy needed to start a reaction?', 'Activation Energy', 'Entropy of reaction', 'Energy Reaction', 'Temperature', 'Activation Energy', 'EID_41'),
('EQSID_42', 'Which of the following is a substance which lowers the activation energy of a reaction?', 'Enzyme', 'Polarity', 'Reactant', 'Temperature', 'Enzyme', 'EID_42'),
('EQSID_43', 'Which of the following DOESN’T affect the rate of reaction?', 'Enzyme', 'Particle Size', 'Polarity', 'Reactant', 'Reactant', 'EID_43'),
('EQSID_44', 'Which of the following is TRUE about catalysts?', 'Decreases activation energy', 'Decreases temperature', 'Increases the activation energy', 'Increases particle size', 'Decreases activation energy', 'EID_44'),
('EQSID_45', 'Which of the following is TRUE about temperature?', 'Decreases activation energy', 'Decreases particle movement', 'Increases the activation energy', 'Increases particle movement', 'Increases the activation energy', 'EID_45'),
('EQSID_46', 'Which of the following refers to a process that leads to the chemical transformation of the reactants?', 'Activation Energy', 'Rate of Reaction', 'Chemical Reaction', 'Collision Theory ', 'Chemical Reaction', 'EID_46'),
('EQSID_47', 'Which of the following is NOT a factor that affect the rate of reactions?', 'Temperature', 'Particle Size', 'Catalyst', 'Volume of Reactant', 'Volume of Reactant', 'EID_47'),
('EQSID_48', 'What principles describes how different reaction happens at different rates?', 'Kinetic Molecular Theory', 'Collision Theory', 'Ideal Gas Law', 'Rate of Reaction', 'Collision Theory', 'EID_48'),
('EQSID_49', 'What refers to a factor which affects the rate of reaction denoting the increase in concentration is equivalent to an increase in the rate of reaction?', 'Catalyst ', 'Concentration', 'Particle Size', 'Temperature', 'Concentration', 'EID_49'),
('EQSID_5', 'Helium will be converted into what after its fusion with two more helium atoms?', 'Argon', 'Carbon', 'Chlorine', 'Oxygen', 'Carbon', 'EID_5'),
('EQSID_50', 'How does the temperature affect the rate of reaction?', 'By increasing the kinetic energy of the reactants', 'By decreasing the kinetic energy of the reactants', 'By increasing the potential energy of the reactants', 'By decreasing the potential energy of the reactants', 'By increasing the kinetic energy of the reactants', 'EID_50'),
('EQSID_6', 'When a star has used up all the hydrogen in its core, hydrogen will be converted into helium in the layer immediately surrounding the core. What stage of star formation is this?', 'Protostar', 'Red Giant', 'Supernova', 'White Dwarf', 'Red Giant', 'EID_6'),
('EQSID_7', 'During red giant formation, what element will be produced by the fusion of oxygen with helium?', 'Helium', 'Hydrogen', 'Neon', 'Silicon', 'Neon', 'EID_7'),
('EQSID_8', 'During red giant formation, what element will be produced by the fusion of neon with helium?', 'Carbon ', 'Magnesium ', 'Manganese', 'Silicon', 'Magnesium ', 'EID_8'),
('EQSID_9', 'During red giant formation, what element will be produced by the fusion of silicon with another silicon atom?', 'Argon', 'Boron', 'Iron', 'Gold', 'Iron', 'EID_9');

-- --------------------------------------------------------

--
-- Table structure for table `exams_form`
--

CREATE TABLE `exams_form` (
  `EFID` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exams_form`
--

INSERT INTO `exams_form` (`EFID`, `STATUS`, `DATE`) VALUES
('EFID_1', 'ACTIVE', '01/02/23');

-- --------------------------------------------------------

--
-- Table structure for table `exam_informations`
--

CREATE TABLE `exam_informations` (
  `EID` varchar(255) NOT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `INSTRUCTION` varchar(255) NOT NULL,
  `TOTAL_ITEMS` varchar(255) NOT NULL,
  `TIMELIMIT_HOUR` varchar(255) NOT NULL,
  `TIMELIMIT_MINUTE` varchar(255) NOT NULL,
  `EFID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_informations`
--

INSERT INTO `exam_informations` (`EID`, `SUBJECT`, `INSTRUCTION`, `TOTAL_ITEMS`, `TIMELIMIT_HOUR`, `TIMELIMIT_MINUTE`, `EFID`) VALUES
('EID_1', 'Math', 'Choose the correct answer by solving each problem and \r\nselecting only the best answer from the options provided below.', '10', '00', '40', 'EFID_1'),
('EID_2', 'Science', 'Analyze the given table and sentence before the questions and select the appropriate answer for the questions below.', '10', '00', '40', 'EFID_1'),
('EID_3', 'English', 'Each sentence is followed by a series of questions. You will evaluate how the passage could be altered to improve the expression of concepts for some questions. Other questions will need you to examine how the piece could be altered to fix flaws in senten', '10', '00', '40', 'EFID_1'),
('EID_4', 'Reading_Comprehension', 'A series of questions follows each sentence or set of texts below. Choose the best response to each question based on what is stated or suggested in the passage after reading each passage or pair.', '10', '00', '40', 'EFID_1');

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
  `FIELD` varchar(255) NOT NULL,
  `POSITION` varchar(255) NOT NULL,
  `IAIID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ia_questions`
--

INSERT INTO `ia_questions` (`IAQID`, `QUESTION`, `FIELD`, `POSITION`, `IAIID`) VALUES
('IAQID_1', 'Humanities', 'Humanities', '0', 'IAIID_1'),
('IAQID_10', 'Public Administration', 'Public Administration', '0', 'IAIID_1'),
('IAQID_11', 'Transportation', 'Transportation', '0', 'IAIID_1'),
('IAQID_12', 'Nutrition', 'Nutrition', '0', 'IAIID_1'),
('IAQID_13', 'Do you like learning about different ideas and cultures, and understanding how people and societies work?', 'Humanities', '1', 'IAIID_1'),
('IAQID_14', 'Do you have an interested in developing skills related to visual communication, creativity, and aesthetics? who enjoy art, design, and expressing their creativity.', 'Humanities', '1', 'IAIID_1'),
('IAQID_15', 'Are you curious about how people live together and make rules for their communities? If you like thinking deeply about social and political issues, and enjoy learning about how people behave and interact with each other.', 'Social Sciences', '1', 'IAIID_1'),
('IAQID_16', 'Are you interested in studying language, literature, and culture? who enjoy reading, writing, and analyzing different types of texts in a critical manner.', 'Social Sciences', '1', 'IAIID_1'),
('IAQID_17', 'Are you interested in learning about people, their cultures, and how societies function?', 'Social Sciences', '1', 'IAIID_1'),
('IAQID_18', 'Do you have an interest in studying culture, language, and religion? who explore other cultures and belief systems.', 'Social Sciences', '1', 'IAIID_1'),
('IAQID_19', 'Do you have an interest in environmental conservation, sustainability, and protecting natural resources?', 'Natural Sciences', '1', 'IAIID_1'),
('IAQID_2', 'Social Sciences', 'Social Sciences', '0', 'IAIID_1'),
('IAQID_20', 'Are you interested in learning about rocks, minerals, and other materials that make up the Earth, as well as the natural resources we use from the planet?', 'Natural Sciences', '1', 'IAIID_1'),
('IAQID_21', 'Do you like to learn about animals, plants, and other living things in the world around us?', 'Natural Sciences', '1', 'IAIID_1'),
('IAQID_22', 'Do you enjoy learning about how things work in the physical world?', 'Natural Sciences', '1', 'IAIID_1'),
('IAQID_23', 'Are you someone who likes to solve problems, think analytically, and work with technology? you might also enjoy designing, building, and working with computer systems.', 'Formal Sciences', '1', 'IAIID_1'),
('IAQID_24', 'If you like working with numbers, logic, and patterns, and enjoy using math to solve problems and analyze data.', 'Formal Sciences', '1', 'IAIID_1'),
('IAQID_25', 'Are you interested in learning about managing, producing, and marketing agricultural products?', 'Professions and Applied Sciences', '1', 'IAIID_1'),
('IAQID_26', 'If you like learning about how buildings are made, the materials used, and how to make them look good and work well for people\'s needs.', 'Professions and Applied Sciences', '1', 'IAIID_1'),
('IAQID_27', 'Are are interested in the field of business and management, who are interested in pursuing careers in business, finance, and management', 'Professions and Applied Sciences', '1', 'IAIID_1'),
('IAQID_28', 'Are interested in books, reading, research, and organizing information, who enjoy helping others find information ', 'Education', '1', 'IAIID_1'),
('IAQID_29', 'Do you want to teach, or are you passionate about teaching children the basic concept and theories?', 'Education', '1', 'IAIID_1'),
('IAQID_3', 'Natural Sciences', 'Natural Sciences', '0', 'IAIID_1'),
('IAQID_30', 'Do you want to teach adolescents student / secondary student that are interested in biology, TLE, MAPEH, English, and many more?', 'Education', '1', 'IAIID_1'),
('IAQID_31', 'Do you have an interest in sports and fitness, enjoy teaching others about physical activity.', 'Education', '1', 'IAIID_1'),
('IAQID_32', 'Are you interested in learning the production, processing, preservation, packaging, and distribution of food products? ', 'Nutrition', '1', 'IAIID_1'),
('IAQID_33', 'Are you interested in developing recipes, creating meal plans, educating others on proper nutrition, or conducting research on the effects of certain diets or supplements?', 'Nutrition', '1', 'IAIID_1'),
('IAQID_34', 'Are you Interested in developing and implementing community-based projects and programs focused on helping and improving a specific community or area? ', 'Public Administration', '1', 'IAIID_1'),
('IAQID_35', 'Interested in understanding how different countries and cultures interact with one another, and how global issues are addressed.', 'Public Administration', '1', 'IAIID_1'),
('IAQID_36', 'Interested in public service and administration.', 'Public Administration', '1', 'IAIID_1'),
('IAQID_37', 'Interested in developing the knowledge and skills necessary to manage and respond to a range of public safety issues.', 'Public Administration', '1', 'IAIID_1'),
('IAQID_38', 'Interested in studying of human behavior and social welfare.', 'Public Administration', '1', 'IAIID_1'),
('IAQID_39', 'Interested in patient care and laboratory analysis.', 'Health Sciences', '1', 'IAIID_1'),
('IAQID_4', 'Formal Sciences', 'Formal Sciences', '0', 'IAIID_1'),
('IAQID_40', 'Interested in rehabilitation and physical therapy.', 'Health Sciences', '1', 'IAIID_1'),
('IAQID_41', 'Interested in the care of expectant mothers and newborns.', 'Health Sciences', '1', 'IAIID_1'),
('IAQID_42', 'Interested in diagnostic testing and medication administration.', 'Health Sciences', '1', 'IAIID_1'),
('IAQID_44', 'Interested in the design, construction, and maintenance of structures and machines.', 'Engineering', '1', 'IAIID_1'),
('IAQID_45', 'Interested in the chemical and physical processes involved in the production of materials and energy.', 'Engineering', '1', 'IAIID_1'),
('IAQID_46', 'Interested in the design and development of electronic and communication systems.', 'Engineering', '1', 'IAIID_1'),
('IAQID_47', 'Interested in management of natural resources and environmental conservation', 'Engineering', '1', 'IAIID_1'),
('IAQID_48', 'Interested in various aspects of media and communication, such as journalism, broadcasting, and mass communication. ', 'Media and Communication', '1', 'IAIID_1'),
('IAQID_49', 'Interested in communication with a specific emphasis on the role of communication in development work. ', 'Media and Communication', '1', 'IAIID_1'),
('IAQID_5', 'Professions and Applied Sciences', 'Professions and Applied Sciences', '0', 'IAIID_1'),
('IAQID_50', 'Do you like ships and the sea? This course might be the one for you. Will this course train you in performing and fulfilling the duties and responsibilities of a marine deck officer and much more related to marines?', 'Transportation', '1', 'IAIID_1'),
('IAQID_6', 'Health Sciences', 'Health Sciences', '0', 'IAIID_1'),
('IAQID_7', 'Education', 'Education', '0', 'IAIID_1'),
('IAQID_8', 'Engineering', 'Engineering', '0', 'IAIID_1'),
('IAQID_9', 'Media and Communication', 'Media and Communication', '0', 'IAIID_1');

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
  `LRN` int(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `overall_result`
--

CREATE TABLE `overall_result` (
  `RID` varchar(255) NOT NULL,
  `ERID` varchar(255) NOT NULL,
  `IRID` varchar(255) NOT NULL,
  `RECOMMENDED_COURSE` varchar(255) NOT NULL,
  `LRN` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3203, 'Math', '0.64', '0.80', 'EQMID_12', '123456789012'),
(3204, 'Math', '0.74', '0.60', 'EQMID_13', '123456789012'),
(3205, 'Math', '0.80', '0.64', 'EQMID_11', '123456789012'),
(3206, 'Math', '1.00', '1.00', 'EQMID_10', '123456789012'),
(3207, 'Math', '2.0', '4.0', 'EQMID_14', '123456789012'),
(3208, 'Math', '8.00', '8.00', 'EQMID_15', '123456789012'),
(3209, 'Math', '0.5 sq. unit', '1 sq. unit', 'EQMID_19', '123456789012'),
(3210, 'Math', 'Cone-shaped', 'Bell-shaped', 'EQMID_18', '123456789012'),
(3211, 'Math', '0.39', '0.39', 'EQMID_16', '123456789012'),
(3212, 'Math', '0.8679', '0.6879', 'EQMID_17', '123456789012'),
(3213, 'Science', 'Red Giant', 'White Dwarf', 'EQSID_10', '123456789012'),
(3214, 'Science', 'Big Bang Theory ', 'Star Formation Theory', 'EQSID_1', '123456789012'),
(3215, 'Science', 'Non-Polar', 'Non-Polar', 'EQSID_17', '123456789012'),
(3216, 'Science', 'John Newlands', 'Henry Mosely', 'EQSID_12', '123456789012'),
(3217, 'Science', 'Asymmetrical', 'Symmetrical', 'EQSID_18', '123456789012'),
(3218, 'Science', 'Gamma Emission', 'Gamma Emission', 'EQSID_15', '123456789012'),
(3219, 'Science', 'Fusion', 'Beta Emission', 'EQSID_14', '123456789012'),
(3220, 'Science', 'Alpha Emission', 'Alpha Emission', 'EQSID_13', '123456789012'),
(3221, 'Science', 'Supernova ', 'Supernova ', 'EQSID_11', '123456789012'),
(3222, 'Science', 'It is a Non-Polar Molecule', 'It is a Polar Molecule', 'EQSID_16', '123456789012'),
(3223, 'English', 'Position Paper', 'Concept Paper	', 'EQEID_11', '123456789012'),
(3224, 'English', 'Exposition of the strongest argument or claim.', 'Identification of the debatable issue.', 'EQEID_17', '123456789012'),
(3225, 'English', 'Cohesiveness', 'Caution', 'EQEID_1', '123456789012'),
(3226, 'English', 'Analyze and summarize the strong and weak points of the article, and then state your own position.', 'Go through the article and refute each of the main points, explaining how stupid the author’s views are.', 'EQEID_18', '123456789012'),
(3227, 'English', 'Technical Report', 'Technical Report', 'EQEID_12', '123456789012'),
(3228, 'English', 'Objects and Material Culture	', 'Physical Setting', 'EQEID_10', '123456789012'),
(3229, 'English', 'Examination Report', 'Progress Report', 'EQEID_13', '123456789012'),
(3230, 'English', 'Designing', 'Collecting Data', 'EQEID_16', '123456789012'),
(3231, 'English', 'Writing that requires a reader to gather additional information to comprehend the content.', 'Writing that requires a reader to gather additional information to comprehend the content.', 'EQEID_15', '123456789012'),
(3232, 'English', 'Exact', 'Exact', 'EQEID_14', '123456789012'),
(3233, 'Reading_Comprehension', 'Philippine Literature during Spanish Colonization', 'Pre-colonial Literature', 'EQRCID_1', '123456789012'),
(3234, 'Reading_Comprehension', 'Blogs', 'Doodle Fiction', 'EQRCID_14', '123456789012'),
(3235, 'Reading_Comprehension', 'Spanish and American Literature', '21ST Century Literature', 'EQRCID_10', '123456789012'),
(3236, 'Reading_Comprehension', 'Blogs', 'Manga', 'EQRCID_15', '123456789012'),
(3237, 'Reading_Comprehension', 'Manga', 'Graphic Novel', 'EQRCID_13', '123456789012'),
(3238, 'Reading_Comprehension', 'Manga', 'Blogs', 'EQRCID_16', '123456789012'),
(3239, 'Reading_Comprehension', 'Graphic Novel', 'Illustrated Novel', 'EQRCID_11', '123456789012'),
(3240, 'Reading_Comprehension', 'Science Fiction', 'Science Fiction', 'EQRCID_18', '123456789012'),
(3241, 'Reading_Comprehension', 'Text Talk Novel', 'Chick Literature', 'EQRCID_17', '123456789012'),
(3242, 'Reading_Comprehension', 'Manga', 'Digi-Fiction', 'EQRCID_12', '123456789012');

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
(1, 'Vince', 'Braca', '123123123123', 'Vince@gmail.com', 'Vince72102', '', 'Not taken yet', '2023-03-27', 'ACTIVE'),
(2, 'david', 'Braca', '321321321321', 'david@gmail.com', 'David72102', '', 'Not taken yet', '2023-03-27', 'ACTIVE'),
(3, 'scsc', 'scsacsac', '353535325525', 'cascs@csa.com', 'D242ccsc', '', 'Not taken yet', '2023-04-17', 'ACTIVE'),
(4, 'Francis', 'Antonio', '123456789012', 'francis@gmail.com', 'Fantonio123', '', 'Not taken yet', '2023-04-17', 'ACTIVE');

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
-- Indexes for table `exams_form`
--
ALTER TABLE `exams_form`
  ADD PRIMARY KEY (`EFID`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  MODIFY `IARID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `save_answer`
--
ALTER TABLE `save_answer`
  MODIFY `SAID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3243;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `STUDENT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
