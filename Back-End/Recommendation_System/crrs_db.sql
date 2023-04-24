-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 06:55 PM
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
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information`
--

INSERT INTO `course_information` (`CID`, `FIELD`, `ACRONYM`, `COURSE_NAME`, `INFORMATION`, `HEADER_PICTURE`, `DATE`) VALUES
('CID_1', 'Computer Sciences ', 'BSCS', 'Bachelor of Science in Computer Science ', 'Bachelor of Science in Computer Science is a four-year degree program in the Philippines that is generally concerned with the effective use of computation methods to analyze, solve, and come up with practical solutions for different problems, often through the use of computers or computer programs designed to perform specific tasks.', 'BSCS Computer science.jpg', '02/02/02'),
('CID_10', 'Criminology', 'BS Criminology', 'Bachelor of Science in Criminology', 'The Bachelor of Science in Criminology (BS Crim) is a four-year degree program in the Philippines that is mainly concerned with the nature of crimes and criminals. Taking up this course will help you understand what is crime, how do crimes occur, and what makes people more likely to commit a crime or be a victim of it. It will also teach you how the justice system works, how alleged and convicted criminals should be handled, and the methods that can be used to reform them. ', 'BS CRIMINOLOGY.jpg', '04/17/23'),
('CID_11', 'Political Science', 'AB Political Science', 'Bachelor of Arts in Political Science', 'Bachelor of Arts in Political Science (AB PS or AB Pol Sci) is a four-year degree program in the Philippines that will help you gain the skills needed to make political and policy analyses that can be used to introduce changes that will be beneficial to both the government and the general public. ', 'AB POLITICAL SCIENCE.jpg', '04/17/23'),
('CID_12', 'English', 'AB English', 'Bachelor of Arts in English', 'The Bachelor of Arts in English (AB English) is a four-year degree program in the Philippines that will teach you about the structure; development; theories; and applications of languages, and how to use your knowledge of them to write and speak effectively, especially in English. ', 'AB ENGLISH.jpg', '04/17/23'),
('CID_13', 'Linguistics', 'AB Linguistics', 'Bachelor of Arts in Linguistics', 'The Bachelor of Arts in Linguistics (AB Linguistics) is a four-year degree program in the Philippines that will teach you about languages, their origins, development, and their social significance to man. It will also teach you about the structures and properties of languages, and how you can apply the knowledge you\'ll gain from this on a wide variety of fields including sociology, psychology, neuroscience, and computer science to name a few. ', 'AB LINGUISTICS.jpg', '04/17/23'),
('CID_14', 'Literature', 'AB Literature', 'Bachelor of Arts in Literature', 'The Bachelor of Arts in Literature (AB Lit) is a four-year degree program in the Philippines that will teach you about the different literatures of the world, their history, forms, structures, modes, techniques, and how you can use your knowledge of them to produce new literary works or review existing ones. ', 'AB LITERATURE.jpg', '04/17/23'),
('CID_15', 'Anthropology', 'AB Anthropology', 'Bachelor of Arts in Anthropology', 'The Bachelor of Arts in Anthropology (AB Anthropology) is a four-year degree program in the Philippines that will teach you about the origin and evolution of human beings including gradual changes in their genetic makeup, behavior, languages, and social relations. ', 'AB ANTHROPOLOGY.jpg', '04/17/23'),
('CID_16', 'Sociology', 'AB Sociology', 'Bachelor of Arts in Sociology', 'The Bachelor of Arts in Sociology (AB Sociology) is a four-year degree program in the Philippines that will teach you about human society, its structure, history, development, and how different cultural groups vary from one to another. ', 'AB SOCIOLOGY.jpg', '04/17/23'),
('CID_17', 'Filipino', 'AB Filipino', 'Bachelor of Arts in Filipino', 'Bachelor of Arts in Filipino (ABF) is a four-year degree program that will teach you about the structure of the Filipino language, the things that make it distinct from other languages, literary works that were written in the Filipino language, and how to translate written works from a foreign language to Tagalog and vice versa. ', 'AB FILIPINO.jpg', '04/17/23'),
('CID_18', 'Forensic Science', 'BSFS', 'Bachelor of Science in Forensic Science', 'The Bachelor of Forensic Science is a four-year degree program in the Philippines that will train you in using scientific principles and techniques to solve different crimes.', 'BSFS FORENSIC SCIENCE.jpg', '04/17/23'),
('CID_19', 'Islamic Studies', 'AB Islamic Studies', 'Bachelor of Arts in Islamic Studies', 'The Bachelor of Arts in Islamic Studies (ABIS) is a four-year degree program in the Philippines that is concerned with the study Islam as a way of life in the context of economic, social, cultural, political, and legal aspects. It has two specializations: Political Economy and Islamic Arts and Multimedia Technologies. ', 'AB ISLAMIC STUDIES.jpg', '04/17/23'),
('CID_2', 'History', 'BA History', 'Bachelor of Arts in History', 'Is a four-year degree program in the Philippines that deals with the study of events from the past. By taking this program you’ll learn about the different civilizations that existed throughout history the people that composed them, their basic structures, their relationship with one another, the transformations they went through, and their roles and impacts on the society we know today. ', 'AB HISTORY.jpg', '04/17/23'),
('CID_20', 'Environmental Science', 'BSES', 'Bachelor of Science in Environmental Science', 'The Bachelor of Science in Environmental Science (BSES) is a four-year degree program in the Philippines that is concerned with the environment and the effects of man\'s activities on it. It usually covers such issues as conservation of natural resources, pollution, deforestation, and overpopulation among a couple of others.  ', 'BS ENVIROMENTAL SCIENCE.jpg', '04/17/23'),
('CID_21', 'Forestry', 'BS Forestry', 'Bachelor of Science in Forestry', 'The Bachelor of Science in Forestry (BS Forestry) is a four-year degree program in the Philippines that will train you in managing the social, economic, and environmental dimensions of forestry resources, performing research that can advance the growth of forestry science, and educating the public of the proper conservation and development of forest resources through extension activities. ', 'BS FORESTRY.jpg', '04/17/23'),
('CID_22', 'Fisheries', 'BSFi', 'Bachelor of Science in Fisheries', 'The Bachelor of Science in Fisheries (BSFi) is a four-year degree program in the Philippines that will train you in aquaculture, capture fisheries, post-harvest fisheries, aquatic ecology, and fisheries- related research. ', 'BS FISHERIES.jpg', '04/17/23'),
('CID_23', 'Geology', 'BS Geology', 'Bachelor of Science in Geology', 'The Bachelor of Science in Geology (BS Geology) is a four-year degree program in the Philippines that is concerned with the origins of the earth, its traits and characteristics, composition, and the changes that it goes through. It deals with issues such as pollution and waste disposal, use and conservation of natural resources, and preventing or reducing the harmful effects of natural disasters. ', 'BS GEOLOGY.jpg', '04/17/23'),
('CID_24', 'Biology', 'BS Biology', 'Bachelor of Science in Biology', 'The Bachelor of Science in Biology (BS Biology) is a four-year degree program in the Philippines that deals with the study of living things. Some of the things that you may learn as a biology student are the forms and structures of living things; their general characteristics; their origins; the places they live in; and their relationship with man, their environment, and with one another. ', 'BS BIOLOGY.jpg', '04/17/23'),
('CID_25', 'Molecular Biology', 'BS Molecular Biology', 'Bachelor of Science in Molecular Biology', 'The Bachelor of Science in Molecular Biology is a four-year degree program in the Philippines that is primarily concerned with identifying, describing, and manipulating the components of cells and organisms including Deoxyribonucleic acid (DNA), Ribonucleic acid (RNA), and proteins. Among its many practical applications are the detection of diseases, gene therapy, in vitro fertilization, and DNA profiling to name a few. ', 'BS Molecular biology.jpg', '04/17/23'),
('CID_26', 'Physics', 'BS Physics', 'Bachelor of Science in Physics', 'Bachelor of Science in Physics (BS Physics) is a four-year degree program in the Philippines that will teach you about the laws of nature and how to use these laws to understand and explain how the things around us work.', 'BS PHYSICS.jpg', '04/17/23'),
('CID_27', 'Applied Physics', 'BS Applied Physics', 'Bachelor of Science in Applied Physics', 'Bachelor of Science in Applied Physics (BS Applied Physics) is a four-year degree program in the Philippines that will train you in using the principles of Physics to come up with practical solutions to existing programs in a wide variety of fields including but not limited to medicine, engineering, computer science, and business to name a few. ', 'BS APPLIED PHYSICS.jpg', '04/17/23'),
('CID_28', 'Chemistry', 'BS Chemistry', 'Bachelor of Science in Chemistry', 'The Bachelor of Science in Chemistry (BS Chem) is a four-year degree program in the Philippines that will teach you about the study of chemicals, their composition, their properties, the way they react with one another, and how you can use your knowledge of this information to come up with helpful products in a wide variety of fields including medicine, food science, and engineering to name a few.  ', 'BS CHEMISTRY.jpg', '04/17/23'),
('CID_29', 'Information Technology', 'BSIT', 'Bachelor of Science in Information Technology', 'The Bachelor of Science in Information Technology (BSIT) is a four-year degree program in the Philippines that deals with the processing and distribution of data with emphasis on its application on businesses. By enrolling in this program, you will learn how to write, design, and maintain computer programs; check them for errors; determine appropriate solutions to fix problems, and rewrite codes to accommodate necessary changes. Since this course is more about the business application of the systems or applications you will create, you may also be taking up a few business subjects such as Accounting and Human Resource Management.  ', 'BSIT Information technology.jpg', '04/17/23'),
('CID_3', 'Philosophy', 'BA Philosophy', 'Bachelor of Arts in Philosophy', 'Is a four-year degree program in the Philippines that is mostly concerned with the underlying principles of reality, knowledge, morality and existence and how they apply in the variety of real-world fields. ', 'AB PHILOSOPHY.jpg', '04/17/23'),
('CID_30', 'Information Systems', 'BSIS', 'Bachelor of Science in Information Systems', 'Bachelor of Science in Information Systems (BSIS) is a four-year degree program in the Philippines that will train you in designing, developing, and managing information systems such as office automation systems, transaction processing systems, transport information systems, navigation systems, and other systems that provide related services. ', 'BSIS Information system.jpg', '04/17/23'),
('CID_31', 'Mathematics', 'BS Mathematics', 'Bachelor of Science in Mathematics', 'Bachelor of Science in Mathematics (BS Math) is a four-year degree program in the Philippines that will expose you to the breadth and depth of mathematical theories, concepts, and applications in order to prepare you for future careers that require critical and analytical thinking skills. ', 'BS MATHEMATICS.jpg', '04/17/23'),
('CID_32', 'Applied Mathematics', 'BS Applied Math', 'Bachelor of Science in Applied Mathematics', 'Bachelor of Science in Applied Mathematics (BS Applied Mathematics) is a four-year degree program in the Philippines that will train you in using mathematical theories, concepts, and formulas to come up with practical solutions to problems in the fields of business, engineering, and information technology among other things. ', 'BS APPLIED MATH.jpg', '04/17/23'),
('CID_33', 'Statistics', 'BS Stat', 'Bachelor of Science in Statistics', 'The Bachelor of Science in Statistics (BS Statistics) is a four-year degree program in the Philippines that will teach you about different statistical methods and how to use them to analyze and interpret data. ', 'BS STAT.jpg', '04/17/23'),
('CID_34', 'Agriculture', 'BSA', 'Bachelor of Science in Agriculture', 'The Bachelor of Science in Agriculture (BSA) is a four-year degree program in the Philippines that is concerned with applying the principles of science, ethics, and business management in the production, development, and processing of plants and animals used for food, recreation, industrial, and medical purposes among others. ', 'BSA AGRICULTURE.jpg', '04/17/23'),
('CID_35', 'Agribusiness', 'BSAB', 'Bachelor of Science in Agribusiness', 'The Bachelor of Science in Agribusiness (BSAB) is a four-year degree program in the Philippines that will train you in in the manufacturing and distribution of farm supplies and other related products according to the country\'s bio-physical, socio-cultural, political, economic, and development needs. ', 'BS AGRIBUSINESS.jpg', '04/17/23'),
('CID_36', 'Agroforestry', 'BSAF', 'Bachelor of Science in Agroforestry', 'Bachelor of Science in Agroforestry (BSAF) is a four-year degree program in the Philippines that will train you in producing, managing, and utilizing trees, agricultural crops, animals, and soils for the purpose of conservation and socio-economic productivity. ', 'BS AGROFORESTRY.jpg', '04/17/23'),
('CID_37', 'Architecture', 'BS Architecture', 'Bachelor of Science in Architecture', 'The Bachelor of Science in Architecture (BS Architecture) is a five-year degree program in the Philippines that is concerned with the design and planning of architectural structures such as residential and commercial buildings, roads, dams, tunnels, bridges, and the like. By studying Architecture, you will not only learn how to design buildings that are pleasing to the eyes, you will also learn how to plan structures and facilities that are functional, cost-effective, flexible to change, and most importantly, resilient against natural and man-made disasters. ', 'BS ARCHITECTURE.jpg', '04/17/23'),
('CID_38', 'Landscape Architecture', 'BLA', 'Bachelor in Landscape Architecture', 'Bachelor in Landscape Architecture (BLA) is a four-year degree program in the Philippines that is mainly concerned with the design and planning of land areas. It is closely related with Bachelor of Science in Architecture, although BS Architecture is primarily concerned with the construction of buildings and infrastructures while Bachelor of Landscape Architecture is more focused on the planning and development of the land that surrounds a particular structure. By enrolling in this program, you will not only learn about the visual aspects of architectural design, you will also gain a deeper understanding of the factors that need to be considered when designing and developing land areas such as accessibility, functionality, amenability to future design changes, and overall safety among other things. ', 'BS LANDSCAPE ARCHITECTURE.jpg', '04/17/23'),
('CID_39', 'Interior Design', 'BS Interior Design', 'Bachelor of Science in Interior Design', 'The Bachelor of Science in Interior Design (BS Interior Design) is a four-year degree program in the Philippines that will teach you about the principles of interior design, space planning, application of colors, basic furniture production, and budget management among other things. ', 'BS INTERIOR DESIGN.jpg', '04/17/23'),
('CID_4', 'Industrial Design', 'BFA Industrial Design', 'Bachelor of Fine Arts Major in Industrial Design', 'is a four-year degree program in the Philippines that is primarily concerned with the design and development of usable products as well as the designing packaging and systems. ', 'BFA INDUSTRIAL DESGIN.jpg', '04/17/23'),
('CID_40', 'Accountancy', 'BSA', 'Bachelor of Science in Accountancy', 'The Bachelor of Science in Accountancy (BSA) is a four-year degree program in the Philippines that is primarily concerned with the effective management of a person\'s, group\'s, or company\'s financial resources including the proper ways of monitoring and documenting the flow of money or goods within the system and the applicable laws related to it. ', 'BS ACCOUNTANCY.jpg', '04/17/23'),
('CID_41', 'Accounting Technology', 'BSACT', 'Bachelor of Science in Accounting Technology', 'The Bachelor of Science in Accounting Technology (BSAcT) is a four-year degree program in the Philippines that will train you in maintaining systematic records of business transactions, verifying and recording them, using computers to calculate, prepare and process financial records. ', 'BS ACCOUNTING TECHNOLOGY.jpg', '04/17/23'),
('CID_42', 'Business Economics', 'BSBA-BE', 'Bachelor of Science in Business Administration Major in Business Economics', 'The Bachelor of Science in Business Administration Major in Business Economics (BSBA- Business Economics) is a four-year business program in the Philippines that is concerned with the various factors that affect businesses. Through this major, you\'ll gain a better understanding of economic development by learning the characteristics and problems of less developed countries, the criteria for growth and development, the obstacles to economic growth, and the policies for promoting it. ', 'BSBA MAJOR IN BUSINESS ECOM.jpg', '04/17/23'),
('CID_43', 'Financial Management', 'BSBA-FM', 'Bachelor of Science in Business Administration Major in Financial Management', 'The Bachelor of Science in Business Administration Major in Financial Management (BSBA- Financial Management) is a four-year business program in the Philippines that focuses on the financial aspects of managing a business. As a BSBA Financial Management student, you will learn about financial institutions and how they make profits; how prices of goods and services are set; how to manage your assets and liabilities, and the different government regulations that have a direct effect on businesses. ', 'BSBA major in finance management.jpg', '04/17/23'),
('CID_44', 'Human Resource Developmen', 'BSBA – HRDM', 'Bachelor of Science in Business Administration Major in Human Resource Development', 'The Bachelor of Science in Business Administration Major in Human Resource Development Management (BSBA – HRDM) is a four-year business program in the Philippines will prepare you for a career in Human Resource Management (HRM) in various organizations and businesses. HRM is the branch of Business Administration that will teach you how to manage your workforce. This includes teaching you how you can recruit the best individuals for your company, how to prepare them for the tasks they will be expected to perform, and how to help them blend in with their new environment. ', 'BSBA HUMAN RESOURCE.jpg', '04/17/23'),
('CID_45', 'Marketing Management', 'BSBA-MM', 'Bachelor of Science in Business Administration Major in Marketing Management', 'The Bachelor of Science in Business Administration Major in Marketing Management (BSBA- Marketing Management) is a four-year business program in the Philippines that will prepare you for a Marketing career in various organizations and businesses. By enrolling in this program, you will learn how to identify business opportunities, assess their strengths and weaknesses, and devise plans that will help you make more profits while controlling your possible losses at the same time. You will also be taught how to create, introduce, and promote your own products using various tools and techniques ranging from the traditional to the more technologically advanced ones. ', 'BSBA MARKETING MANAGEMENT.jpg', '04/17/23'),
('CID_46', 'Operations Management', 'BSBA-Operations Management', 'Bachelor of Science in Business Administration Major in Operations Management', 'The Bachelor of Science in Business Administration Major in Operations Management (BSBA-Operations Management) is a four-year degree program in the Philippines that revolves around the day-to-day operation of businesses. This includes the processes involved in the production and distribution of goods, the delivery of services, and managing the equipment and facilities used to run a business. ', 'BSBA OPERATIONS MANAGEMENT.jpg', '04/17/23'),
('CID_47', 'Hotel and Restaurant Management', 'BS HRM', 'Bachelor of Science in Bachelor of Science in Hotel and Restaurant Management', 'The Bachelor of Science in Hotel and Restaurant Management (BS HRM) is a four-year degree program in the Philippines that will prepare you for working in the hotel and restaurant industry and managing your own hotel and restaurant business someday. With the help of this course, you\'ll learn not only how to manage the day-to-day operations of your hotel or restaurant. You\'ll also learn how to devise plans and strategies that can increase your company\'s profits. ', 'BS HRM HOTEL AND RESTAURANT MANAGEMENT.jpg', '04/17/23'),
('CID_48', 'Entrepreneurship', 'BS Entrep', 'Bachelor of Science in Entrepreneurship', 'The Bachelor of Science in Entrepreneurship (BS Entre) is a four-year degree program in the Philippines that will train you in identifying opportunities, developing and preparing business plans, and starting and managing your own business. ', 'BS ENTREP.jpg', '04/17/23'),
('CID_49', 'Office Administration', 'BSOA', 'Bachelor of Science in Office Administration', 'Bachelor of Science in Office Administration (BSOA) is a four-year degree program in the Philippines that will train you in performing a wide variety of administrative tasks including but not limited to clerical duties, personnel management, events management, and customer service. ', 'BSOA OFFICE ADMINISTRATOR.jpg', '04/17/23'),
('CID_5', 'Painting', 'BFA Painting', 'Bachelor of Fine Arts Major in Painting', 'is a four-year degree program in the Philippines that is concerned with producing artistic representations through the use of paint. This program focuses on developing the student\'s perceptual and technical skills in painting. Taking this major will help you learn about the basics of drawing, the different tools used in painting, the types of surfaces paintings are usually done in, and the use of visual perception in introducing different concepts in your paintings. ', 'BFA PAINTING.jpg', '04/17/23'),
('CID_50', 'Real Estate Management', 'BS REM', 'Bachelor of Science in Real Estate Management', 'The Bachelor of Science in Real Estate Management (BS REM) is a four-year degree program in the Philippines that will train you in real estate salesmanship, brokerage, appraisal, and consultancy including properties that fall within public domain. ', 'BS REM REAL ESTATE MANAGEMENT.jpg', '04/17/23'),
('CID_51', 'Tourism Management', 'BSTM', 'Bachelor of Science in Tourism Management', 'The Bachelor of Science in Tourism Management (BSTM) is a four-year degree program in the Philippines that will train you in developing and implementing tourism campaigns, organizing and managing events, and following policies and standards related to investments, business regulations, procurement, and other miscellaneous procedures. ', 'BSTM tourism management.jpg', '04/17/23'),
('CID_52', 'Medical Technology', 'BS Med Tech', 'Bachelor of Science in Medical Technology', 'The Bachelor of Science in Medical Technology (BS Medical Technology) also known as Bachelor of Science in Medical Laboratory Science (BS Medical Laboratory Science) is a four-year degree program in the Philippines that deals with the use of modern technology in detecting, identifying, and predicting the possible course of diseases that can put a person\'s health at risk. Pursuing this degree will help you gain a better understanding of the nature of diseases, the things that cause them, the way they spread, and the way to stop them or slow their growth down. It will also give you some background information on the natural composition of the human body and how you can use that information to detect potential or existing problems. ', 'BS MED TECH.jpg', '04/17/23'),
('CID_53', 'Midwifery', 'BS Midwifery', 'Bachelor of Science in Midwifery', 'The Bachelor of Science in Midwifery (BS Midwifery) is a four-year degree program in the Philippines that will train you in addressing the needs of expecting mothers and their children starting from the early stages of pregnancy up to the first few weeks following childbirth. By taking this course, you will learn everything you\'ll need to know about reproductive health; family planning; pregnancy, labor, and delivery; neonatal care; and the moral and legal principles involved in the practice of midwifery in the Philippines. ', 'BS MIDWIFERY.jpg', '04/17/23'),
('CID_54', 'Nursing', 'BSN', 'Bachelor of Science in Nursing', 'Bachelor of Science in Nursing (BSN) is a four-year degree program in the Philippines that revolves around caring for the sick or injured. This does not only involve addressing immediate threats to the patient\'s health, but also guiding the patient all the way through physical, mental, and emotional recovery. As a nursing student you will be trained to conduct health assessments, provide patients with preoperative, intraoperative, and postoperative care, perform life-saving interventions, respond to disaster and emergency situations, and keep medical documentations. ', 'BS NURSING.jpg', '04/17/23'),
('CID_55', 'Occupational Therapy', 'BSOT', 'Bachelor of Science in Occupational Therapy', 'The Bachelor of Science in Occupational Therapy (BSOT) is a five-year degree program in the Philippines that is concerned with using different methods and strategies to help people with serious physical, mental, or emotional conditions that keep them from functioning the way they are supposed to. It\'s mostly similar to Physical Therapy in the sense that it aims to help a person recover from an injury or learn to live with it if it can no longer be remedied, but contrary to Physical Therapy that is more focused on the physical functioning of a person such as walking or moving his body, Occupational Therapy is more focused on restoring or uplifting the mental or emotional well-being of a patient. ', 'BS OCCUPATIONAL THERAPY.jpg', '04/17/23'),
('CID_56', 'Pharmacy', 'BS Pharmacy', 'Bachelor of Science in Pharmacy', '', 'BS PHARMACIST.jpg', '04/17/23'),
('CID_57', 'Physical Therapy', 'BSPT', 'Bachelor of Science in Physical Therapy', 'The Bachelor of Science in Physical Therapy (BSPT) is a five-year degree program in the Philippines that is concerned with using various treatments and exercises to restore the function of a broken bone or to compensate for the loss of a certain body part', 'BS PHYSICAL THERAPY.jpg', '04/17/23'),
('CID_58', 'Radiologic Technology', 'BS Rad Tech', 'Bachelor of Science in Radiologic Technology', 'The Bachelor of Science in Radiologic Technology (BSRT) is a four-year degree program in the Philippines that will train you in applying x-ray energy to assist in the diagnosis or treatment of diseases, performing radiographic or nuclear medicine procedur', 'BS RADIOLOGIC TECHNOLOGY.jpg', '04/17/23'),
('CID_59', 'Respiratory Therapy', 'BSRT', 'Bachelor of Science in Respiratory Therapy', 'The Bachelor of Science in Respiratory Therapy is a four-year degree program in the Philippines that will train you in providing clinical pulmonary care procedures that will help in the proper diagnosis, treatment, and prevention of diseases. ', 'Respiratory therapist.jpg', '04/17/23'),
('CID_6', 'Sculpture', 'BFA Sculpture', 'Bachelor of Fine Arts Major in Sculpture ', 'is a four-year degree program in the Philippines that is concerned with expressing interests and ideas in three-dimensional (3-D) art. As a branch of Fine Arts, it shares a lot of similar courses with BFA Major in Painting; however, contrary to the latter', 'BFA SCULPTURES.jpg', '04/17/23'),
('CID_60', 'Secondary Education', 'BSED', 'Bachelor in Secondary Education', 'The Bachelor of Secondary Education (BSEd) is a four-year degree program in the Philippines that will prepare you in teaching in secondary school. It has several areas of specialization: English, Filipino, Islamic Studies, Mathematics, Music, Arts, Physic', 'BSED SECONDARY EDUCATION.jpg', '04/17/23'),
('CID_61', 'Elementary Education', 'BEED', 'Bachelor in Elementary Education', 'The Bachelor of Elementary Education (BEED) is a four-year degree program in the Philippines that will train you in teaching grade school students. BEED has two specializations: Bachelor in Elementary Education Major in Preschool Education and Bachelor in', 'BEED ELEMENTARY EDUCATION.jpg', '04/17/23'),
('CID_62', 'Library and Information Science', 'BLIS', 'Bachelor of Library and Information Science in the Philippines', 'The Bachelor of Library and Information Science (BLIS) is a four-year degree program in the Philippines that will teach you about the different sources of information, how to acquire them, and how to develop and maintain a collection of reference material', 'BLIS Library and information science.jpg', '04/17/23'),
('CID_63', 'Physical Education', 'BPE', 'Bachelor of Physical Education', 'The Bachelor of Physical Education is a four-year degree program in the Philippines that will train you in developing and maintaining the optimal physical fitness and functionality individuals. It has two majors: School Physical Education which is a teach', 'BPE PHYSICAL EDUCATION.jpg', '04/17/23'),
('CID_64', 'Aeronautical Engineering', 'BS AeroE', 'Bachelor of Science in Aeronautical Engineering', 'The Bachelor of Science in Aeronautical Engineering (BS AeroE) is a five-year degree program in the Philippines that is concerned with aircrafts and air transportation. Some of the things you will learn through this program are aircraft design; aircraft', 'BSAERO AERONATICAL ENGINEER.jpg', '04/17/23'),
('CID_65', 'Ceramic Engineering', 'BSCerE', 'Bachelor of Science in Ceramic Engineering', 'The Bachelor of Science in Ceramic Engineering (BS CerE) is a five-year degree program in the Philippines that will train you in applying knowledge of mathematics, physical sciences, and engineering sciences to the practice of ceramic engineering.', 'BSCERE CERAMIC ENGINEER.jpg', '04/17/23'),
('CID_66', 'Chemical Engineering', 'BSChE', 'Bachelor of Science in Chemical Engineering', 'The Bachelor of Science in Chemical Engineering (BS ChE) is a five-year degree program in the Philippines that is concerned with the application of different sciences (ie. natural, social, formal, applied sciences) to come up with safe, ethical and econom', 'BSCHE CHEMICAL ENGINEER.jpg', '04/17/23'),
('CID_67', 'Civil Engineering', 'BSCE', 'Bachelor of Science in Civil Engineering', 'The Bachelor of Science in Civil Engineering (BSCE) is a five-year degree program in the Philippines that is concerned with the use of scientific and mathematical principles in the construction of buildings and infrastructures such as roads, bridges, tunn', 'Civil engineer.jpg', '04/17/23'),
('CID_68', 'Computer Engineering', 'BSCpE', 'Bachelor of Science in Computer Engineering', 'Bachelor of Science in Computer Engineering (BS CPE) is a five-year degree program in the Philippines that will train you in the design, development, and maintenance of computer systems including both hardware and software.Aside from the technical aspects', 'BSCPE COMPUTER ENGINEER.jpg', '04/17/23'),
('CID_69', 'Broadcasting', 'AB Broadcasting', 'Bachelor of Arts in Broadcasting', 'The Bachelor of Arts in Broadcasting (AB Broadcasting) is a four-year degree program in the Philippines that will prepare you for a career in the media industry, particularly in television and radio networks. Being a subfield of Class Communication, AB Br', 'AB BROADCASTING.jpg', '04/17/23'),
('CID_7', 'Visual Communication', 'BFA Visual Communication', 'Bachelor of Fine Arts Major in Visual Communication', 'is a four-year degree program in the Philippines that is concerned with using both traditional and modern technology to create effective advertisements, web and new media designs. Through this major you will learn about the types of letters and their stru', 'BFA VISUAL COMM.jpg', '04/17/23'),
('CID_70', 'Communication', 'AB Communication', 'Bachelor of Arts in Communication', 'The Bachelor of Arts in Communication (AB Communication) is a four-year degree program in the Philippines that will prepare you for a career in the media or similar industries — advertising agencies and public relations firms in particular ', 'AB COMMUNICATION.jpg', '04/17/23'),
('CID_71', 'Community Development', 'BS Community Development', 'Bachelor of Science in Community Development', 'The Bachelor of Science in Community Development is a four-year degree program in the Philippines that will train you in building and developing communities by providing their inhabitants with knowledge and resources that they can use to improve the quali', 'BS COMMUNITY DEVELOPMENT.jpg', '04/17/23'),
('CID_72', 'Customs Administration', 'BSCA', 'Bachelor of Science in Customs Administration', 'The Bachelor of Science in Customs Administration is a four-year degree program in the Philippines that will train you in handling import and export operations. Some examples of courses that you may take while enrolled in this program include: Principles ', 'BSCA CUSTOMS ADMINISTRATOR.jpg', '04/17/23'),
('CID_73', 'Marine Transportation', 'BSMT', 'Bachelor of Science in Marine Transportation', 'The Bachelor of Science in Marine Transportation (BSMT) is a four-year degree program in the Philippines that will train you in performing and fulfilling the duties and responsibilities of a marine deck officer including navigation, radio communication, a', 'BSMT MARINE TRASPORATATIO.jpg', '04/17/23'),
('CID_74', 'Food Technology', 'BSFT', 'Bachelor of Science in Food Technology', 'The Bachelor of Science in Food Technology (BSFT) is a four-year degree program in the Philippines that will train you in applying principles of science and other related fields in the handling, preparation, processing, packaging, storage, and distributio', 'BS FOOD TECH.jpg', '04/17/23'),
('CID_75', 'Nutrition and Dietetics', 'BS Nutrition and Dietetics', 'Bachelor of Science in Nutrition and Dietetics', 'The Bachelor of Science in Nutrition and Dietetics (BS ND) is a four-year degree program in the Philippines that will train you in planning, implementing, monitoring, and documenting nutrition programs for a given individual, group or community. It will a', 'BS NUTRITION AND DIETETICS.jpg', '04/17/23'),
('CID_8', 'Economics', 'AB Economics', 'Bachelor of Arts in Economics', 'The Bachelor of Arts in Economics (AB Economics) is a four-year degree program in the Philippines that will help you gain a better understanding of economic systems and their structure. This includes the entities that compose them, their relationship with', 'AB ECONOMICS.jpg', '04/17/23'),
('CID_9', 'Psychology', 'BS Psychology', 'Bachelor of Science in Psychology', 'The Bachelor of Science in Psychology (BS Psychology) is a four-year degree program in the Philippines that is concerned with the way humans think and behave. By taking this course, you will learn how to conduct and interpret different tests such as those', 'BS PSYCHOLOGY.jpg', '04/17/23');

-- --------------------------------------------------------

--
-- Table structure for table `course_information_job`
--

CREATE TABLE `course_information_job` (
  `CIJID` varchar(255) NOT NULL,
  `JOB_NAME` varchar(255) NOT NULL,
  `INFORMATION` varchar(255) NOT NULL,
  `CID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information_job`
--

INSERT INTO `course_information_job` (`CIJID`, `JOB_NAME`, `INFORMATION`, `CID`) VALUES
('CIJID_1', 'Application Developer ', 'Applications developers make computers perform specific tasks, based on their client\'s specifications. As an applications developer you\'ll translate software requirements into workable programming code and maintain and develop programs for use in business', 'CID_1'),
('CIJID_10', 'Historical Consultant ', 'A historical consultant is a professional who helps conduct research and verify the accuracy of existing information. They may travel to assist organizations across the country to help them learn more about historical landmarks, artwork or cultures.', 'CID_2'),
('CIJID_11', 'Legal Aide ', 'To advise clients as to their legal rights and obligations, and as to the working of the legal system in so far as it is relevant to those rights and obligations. To assist clients in every appropriate way, taking legal action to protect their interests. ', 'CID_2'),
('CIJID_12', 'Diplomatic Service ', 'monitor and analyse overseas events. develop policies and strategies towards different countries. deal with press and communications at home and abroad.', 'CID_2'),
('CIJID_13', 'Management Trainee ', 'A management trainee works under the supervision of managers and executives in organizations. Their goal is to acquire all essential knowledge to become future managers, often in particular fields, such as marketing, sales, or operations.', 'CID_3'),
('CIJID_14', 'Professor ', 'Developing curricula and delivering course material. Conducting research, fieldwork, and investigations, and writing up reports. Publishing research, attending conferences, delivering presentations, and networking with others in the field.', 'CID_3'),
('CIJID_15', 'Writer ', 'Write fiction or nonfiction scripts, biographies, and other formats. Conduct research to get factual information and authentic detail. Write advertising copy for newspapers, magazines, broadcasts, and the Internet. Present drafts to editors and clients fo', 'CID_3'),
('CIJID_16', 'Human Resource Assistant ', 'A Human Resources (HR) Assistant is a professional who is responsible for the daily administrative and HR duties of an organization. They assist with recruitment and record maintenance for payroll processing as well as provide clerical support to all empl', 'CID_3'),
('CIJID_17', 'Labor Relations Manager ', 'Administers and manages administration of labor contracts; provides interpretation of labor contracts to managers, employees and HR staff; oversees processes for review and resolution of employee grievances.', 'CID_3'),
('CIJID_18', 'Training Office ', 'Training officers induct new members of staff by providing them with the requisite preparation and teaching upon their appointments. Training officers also identify and close gaps in existing staff members\' skills through instruction.', 'CID_3'),
('CIJID_19', 'Industrial Designer ', 'Industrial designers work primarily in offices, but they may travel to the places where the products are manufactured. Industrial designers develop the concepts for manufactured products, such as cars, home appliances, and toys. They combine art, business', 'CID_4'),
('CIJID_2', 'Game Developer ', 'Video game developers, also known as game developers, are responsible for designing and developing video games for PC, console, and mobile applications. Their job is to code the base engine from the ideas of the design team. They may also be involved in c', 'CID_1'),
('CIJID_20', 'Product Designer ', 'A product designer makes a practical and functional product as artistic and attractive to a consumer as possible. It takes creativity, consumer-savvy, and the know-how to take a product from ideation all the way to production. To break things down further', 'CID_4'),
('CIJID_21', 'Multimedia Designer Graphic Artist ', 'Multimedia designers are graphic design specialists who combine graphics with animation to create multimedia content for websites, television, films, and advertising displays. They may work in a variety of fields including advertising, video game design, ', 'CID_4'),
('CIJID_22', 'Packaging Designer ', 'A package designer guides the design process from beginning to end. They conceptualize, design and execute a prototype for attention-grabbing packaging materials, using design elements such as shape, color, graphics and typography to create packaging that', 'CID_4'),
('CIJID_23', 'Professor / Art Educator ', 'Plan, develop and implement art and art history curriculum to meet learning goals. Purchase art materials and maintain the inventory of art materials. Prepare and arrange art materials and art equipment in the classroom for students to use. Deliver lectur', 'CID_4'),
('CIJID_24', 'Illustrator ', 'An illustrator is an artist who specializes in enhancing writing or elucidating concepts by providing a visual representation that corresponds to the content of the associated text or idea.', 'CID_5'),
('CIJID_25', 'Production Designer ', 'Production designers are responsible for the visual concept of a film, television or theatre production. They identify a design style for sets, locations, graphics, props, lighting, camera angles and costumes, while working closely with the director and p', 'CID_5'),
('CIJID_26', 'Visual Communicators ', 'Visual communications designers conceive and design visual concepts to best convey clients\' messages to their intended audiences. In other words, as a visual communications designer you\'ll use visual stimuli to persuade your audience to do or feel somethi', 'CID_5'),
('CIJID_27', 'Costume Designer ', 'Costume designers plan, create, and maintain clothing and accessories for all characters in a stage, film, television, dance, or opera production. Designers custom fit each character, and either create a new garment or alter an existing costume. Costume d', 'CID_5'),
('CIJID_28', 'Graphic Artist ', 'A graphic artist is a creative professional who produces visual material to communicate emotions, stories, and other messages to audiences. Graphic artists work in traditional and digital media and rely on artistic principles that may be abstract or novel', 'CID_5'),
('CIJID_29', 'Art Critics ', 'An art critic write reviews of individual art works or art exhibitions for the general public or for a more specialized audience. His or her articles are then published in newspapers, magazines, academic journals, and on art blogs. Art critics base their ', 'CID_5'),
('CIJID_3', 'Software Developer  ', 'Software developers create the computer applications that allow users to do specific tasks and the underlying systems that run the devices or control networks. Software quality assurance analysts and testers design and execute software tests to identify p', 'CID_1'),
('CIJID_30', 'Sculptor ', 'Sculptors design and shape three-dimensional works of art, either by molding and joining materials such as clay, glass, plastic, and metal or by cutting and carving forms from a block of plaster, wood, or stone. Some sculptors combine various materials to', 'CID_6'),
('CIJID_31', 'Food Stylist ', 'A food stylist designs, prepares and styles food for photography or on-air demonstration. They will consult with marketing and food production as to which foods should be photographed. They also may at times conduct live demonstrations at industry or priv', 'CID_6'),
('CIJID_32', 'Visual Communicators ', 'Visual communications designers conceive and design visual concepts to best convey clients\' messages to their intended audiences. In other words, as a visual communications designer you\'ll use visual stimuli to persuade your audience to do or feel somethi', 'CID_6'),
('CIJID_33', 'Costume Designer Graphic Artist ', 'Costume designers plan, create, and maintain clothing and accessories for all characters in a stage, film, television, dance, or opera production. Designers custom fit each character, and either create a new garment or alter an existing costume. Costume d', 'CID_6'),
('CIJID_34', 'Industrial Designer ', 'Industrial designers work primarily in offices, but they may travel to the places where the products are manufactured. Industrial designers develop the concepts for manufactured products, such as cars, home appliances, and toys. They combine art, business', 'CID_6'),
('CIJID_35', 'Art Educator', 'Instructs pupils in art, such as painting, sketching, designing, and sculpturing; Prepares lesson plans and establishes course goals. Provides individual and group instruction designed to meet individual needs and motivate students.', 'CID_6'),
('CIJID_4', 'Computer Programmer ', 'Computer programmers write, modify, and test code and scripts that allow computer software and applications to function properly. They turn the designs created by software developers and engineers into instructions that a computer can follow.', 'CID_1'),
('CIJID_5', 'Software Engineer  ', 'Software engineering is the branch of computer science that deals with the design, development, testing, and maintenance of software applications. Software engineers apply engineering principles and knowledge of programming languages to build software sol', 'CID_1'),
('CIJID_6', 'Data Analyst ', 'A data analyst gathers, cleans, and studies data sets to help solve problems. Here\'s how you can start on a path to become one. A data analyst collects, cleans, and interprets data sets in order to answer a question or solve a problem.', 'CID_1'),
('CIJID_7', 'Professional Historian ', 'Professional historians typically work in colleges and universities, archival centers, government agencies, museums, and as freelance writers and consultants.', 'CID_2'),
('CIJID_8', 'School Administrator ', 'School Administrators oversee administrative tasks in schools, colleges or other educational institutions. They ensure that the organization runs smoothly and they also manage facilities and staff.', 'CID_2'),
('CIJID_9', 'Historical Researcher ', 'History researchers study past events, people, policies, and documents to gain an in-depth understanding of their significance and impact on modern and future societies.', 'CID_2');

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
  `EQEID` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` varchar(255) NOT NULL,
  `Choice_B` varchar(255) NOT NULL,
  `Choice_C` varchar(255) NOT NULL,
  `Choice_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EFID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_english`
--

INSERT INTO `eq_english` (`EQEID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EFID`) VALUES
('EQEID_1', 'Former astronaut Ellen Ochoa says that although she doesn’t have a definite idea of when it might happen, she _______ that humans will someday need to be able to live in other environments than those found on Earth. This conjecture informs her interest in', 'demands ', 'speculates', 'doubts ', 'establishes', 'speculates', 'EFID_1'),
('EQEID_10', 'Researchers studying magneto sensation have determined why some soil-dwelling roundworms in the Southern Hemisphere move in the opposite direction of Earth’s magnetic field when searching for _______ in the Northern Hemisphere, the magnetic field points d', 'food:', 'food, ', 'food while ', 'food', 'food:', 'EFID_1'),
('EQEID_11', 'Scientists believe that, unlike most other species of barnacle, turtle barnacles (Chelonibia      testudinari) can dissolve the cement-like secretions they use to attach _______ to a sea turtle shell, enabling the barnacles to move short distances across ', 'It', 'themselves ', 'them', 'itself', 'themselves ', 'EFID_1'),
('EQEID_12', 'The classic children’s board game Chutes and Ladders is a version of an ancient Nepalese game, Paramapada Sopanapata. In both games, players encounter “good” or “bad” spaces while traveling along a path; landing on one of the good spaces _______ a player ', 'allows', 'are allowing ', 'have allowed ', 'allow', 'allows', 'EFID_1'),
('EQEID_13', 'Although novels and poems are considered distinct literary forms, many authors have created hybrid works that incorporate elements of both. Bernardine Evaristo’s the Emperor\'s Babe, _______ is a verse novel, a book-length narrative complete with character', 'by contrast,', 'consequently, ', 'secondly,', 'for example,', 'for example,', 'EFID_1'),
('EQEID_14', 'At two weeks old, the time their critical socialization period begins, wolves can smell but cannot yet see or hear. Domesticated dogs, _______ can see, hear, and smell by the end of two weeks. This relative lack of sensory input may help explain why wolve', 'in other words, ', 'for instance, ', 'by contrast, ', 'accordingly,', 'by contrast, ', 'EFID_1'),
('EQEID_15', 'Researchers Helena Mihaljević-Brandt, Lucía Santamaría, and Marco Tullney report that while mathematicians may have traditionally worked alone, evidence points to a shift in the opposite direction. _______ mathematicians are choosing to collaborate with t', 'Similarly,', 'For this reason, ', 'Furthermore, ', 'Increasingly,', 'Increasingly,', 'EFID_1'),
('EQEID_16', 'Researchers have struggled to pinpoint specific causes for hiccups, which happen when a person’s diaphragm contracts _______. However, neuroscientist Kimberley Whitehead has found that these uncontrollable contractions may play an important role in helpin', 'Involuntarily', 'Beneficially', 'strenuously ', 'smoothly', 'Involuntarily', 'EFID_1'),
('EQEID_17', 'Critics have asserted that fine art and fashion rarely _______ in a world where artists create timeless works for exhibition and designers periodically produce new styles for the public to buy. Luiseño/ Shoshone-Bannock beadwork artist and designer Jamie ', 'Prevail', 'Succumb', 'Diverge', 'Intersect', 'Intersect', 'EFID_1'),
('EQEID_18', 'Scholarly discussions of gender in Shakespeare’s comedies often celebrate the rebellion of the playwright’s characters against the rigid expectations _______ by Elizabethan society. Most of the comedies end in marriage, with characters returning to their ', 'Interjected', 'Committed', 'Illustrated', 'Prescribed', 'Prescribed', 'EFID_1'),
('EQEID_19', 'In studying the use of external stimuli to reduce the itching sensation caused by an allergic histamine response, Louise Ward and colleagues found that while harmless applications of vibration or warming can provide a temporary distraction, such _______ s', 'Deceptive', 'Innocuous', 'Novel', 'Impractical', 'Innocuous', 'EFID_1'),
('EQEID_2', 'Beginning in the 1950s, Navajo Nation legislator Annie Dodge Wauneka continuously worked to promote public health; this _______ effort involved traveling throughout the vast Navajo homeland and writing a medical dictionary for speakers of Diné bizaad, the', 'demands', 'speculates ', 'doubts ', 'establishes', 'speculates ', 'EFID_1'),
('EQEID_20', 'The province of Xoconochco was situated on the Pacific coast, hundreds of kilometers southeast of Tenochtitlan, the capital of the Aztec Empire. Because Xoconochco’s location within the empire was so _______, cacao and other trade goods produced there cou', 'Unobtrusive', 'Concealed', 'Approximate', 'peripheral', 'peripheral', 'EFID_1'),
('EQEID_3', 'Following the principles of community-based participatory research, tribal nations and research institutions are equal partners in health studies conducted on reservations. A collaboration between the Crow Tribe and Montana State University _______ this m', 'Circumvents', 'Eclipses', 'Fabricates', 'Exemplifies', 'Exemplifies', 'EFID_1'),
('EQEID_4', 'The parasitic dodder plant increases its reproductive success by flowering at the same time as the host plant it has latched onto. In 2020, Jianqiang Wu and his colleagues determined that the tiny dodder achieves this _______ with its host by absorbing an', 'Synchronization', 'Hibernation', 'Prediction', 'Moderation', 'Synchronization', 'EFID_1'),
('EQEID_5', 'Given that the conditions in binary star systems should make planetary formation nearly impossible, it’s not surprising that the existence of planets in such systems has lacked _______ explanation. Roman Rafikov and Kedron Silsbee shed light on the subjec', 'a discernible', 'a straightforward ', 'an inconclusive', 'an unbiased', 'a straightforward ', 'EFID_1'),
('EQEID_6', 'Seminole/Muscogee director Sterlin Harjo _______ television’s tendency to situate Native characters in the distant past: this rejection is evident in his series Reservation Dogs, which revolves around teenagers who dress in contemporary styles and whose d', 'repudiates ', 'proclaims ', 'foretells ', 'recants', 'repudiates ', 'EFID_1'),
('EQEID_7', 'Public-awareness campaigns about the need to reduce single-use plastics can be successful, says researcher Kim Borg of Monash University in Australia, when these campaigns give consumers a choice: for example, Japan achieved a 40 percent reduction in plas', 'They', 'One', 'You', 'It', 'They', 'EFID_1'),
('EQEID_8', 'British scientists James Watson and Francis Crick won the Nobel Prize in part for their 1953 paper announcing the double helix structure of DNA, but it is misleading to say that Watson and Crick discovered the double helix. _______ findings were based on ', 'They’re', 'It’s', 'Their', 'Its', 'Their', 'EFID_1'),
('EQEID_9', 'In 1637, the price of tulips skyrocketed in Amsterdam, with single bulbs of rare varieties selling for up to the equivalent of $200,000 in today’s US dollars. Some historians _______ that this “tulip mania” was the first historical instance of an asset bu', 'Claiming', 'Claim', 'having claimed ', 'to claim', 'Claim', 'EFID_1');

-- --------------------------------------------------------

--
-- Table structure for table `eq_math`
--

CREATE TABLE `eq_math` (
  `EQMID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` varchar(255) NOT NULL,
  `Choice_B` varchar(255) NOT NULL,
  `Choice_C` varchar(255) NOT NULL,
  `Choice_D` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EFID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eq_math`
--

INSERT INTO `eq_math` (`EQMID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EFID`) VALUES
('EQMID_1', 'Kathy is a repair technician for a phone company. Each week, she receives a batch of phones that need repairs. The number of phones that she has left to fix at the end of each day can be estimated with the equation P d = 108 − 23, where P is the number', 'Kathy will complete the repairs within 108 days.', 'Kathy starts each week with 108 phones to fix.', 'Kathy repairs phones at a rate of 108 per hour.', 'Kathy repairs phones at a rate of 108 per day.', 'Kathy starts each week with 108 phones to fix.', 'EFID_1'),
('EQMID_10', 'Which of the following numbers is NOT a solution of the inequality \r\n3x — 5 ≥ 4x — 3  \r\n', '—1 ', '—2', '—3', '—5', '—1 ', 'EFID_1'),
('EQMID_11', 'A food truck sells salads for $6.50 each and drinks for$2.00 each. The food truck’s revenue from selling a total of 209 salads and drinks in one day was $836.50. How many salads were sold that day', '77', '93', '99', '105', '93', 'EFID_1'),
('EQMID_12', 'Katarina is a botanist studying the production of pears by two types of pear trees. She noticed that Type A trees produced 20 percent more pears than Type B trees did. Based on Katarina\'s observation, if the Type A trees produced 144 pears, how many pears', '115', '120', '124', '173', '120', 'EFID_1'),
('EQMID_13', 'h = - 4.9t^2 + 25t \r\nThe equation above expresses the approximate height h, in meters, of a ball t seconds after it is launched vertically upward from the ground with an initial velocity of 25 meters per second. After approximately how many seconds will t', '3.5', '4.0', '4.5', '5.0', '5.0', 'EFID_1'),
('EQMID_14', 'For a polynomial p(x), the value of p(3) is -2. Which of the following must be true about p(x)? ', 'x - 5 is a factor of p(x). ', 'x - 2 is a factor of p(x). ', 'x + 2 is a factor of p(x). ', 'The remainder when p(x) is divided by x - 3 is - 2.', 'The remainder when p(x) is divided by x - 3 is - 2.', 'EFID_1'),
('EQMID_15', 'g(x) = ax^2 + 24 \r\nFor the function g defined above, a is a constant and g(4) = 8. What is the value of g (-4)? \r\n', '8', '0', '-1', '-8', '8', 'EFID_1'),
('EQMID_16', '3x = 12, -3x +y = -6 \r\nThe solution to the given system of equations is (x, y). What is the value of y? \r\n', '-3', '6', '18', '30', '6', 'EFID_1'),
('EQMID_17', 's = 40 + 3t \r\nThe equation gives the speed s, in miles per hour, of a certain car t seconds after it began to accelerate. What is the speed, in miles per hour, of the car 5 seconds after it began to accelerate? \r\n', '40', '43', '45', '55', '55', 'EFID_1'),
('EQMID_18', 'x + 7 = 10, (x+7) ^2 = y\r\nWhich ordered pair (x, y) is a solution to the given system of equations?\r\n', '(3, 100)', '(3,3)', '(3, 10)', '(3,70)', '(3, 100)', 'EFID_1'),
('EQMID_19', 'g(x) = x^2 + 55\r\nWhat is the minimum value of the given function?\r\n', '0', '55', '110', '3,025', '55', 'EFID_1'),
('EQMID_2', 'h = a = 3 + 28.6\r\nA pediatrician uses the model above to estimate the height h of a boy, in inches, in terms of the boy’s age a, in years, between the ages of 2 and 5. Based on the model, what is the estimated increase, in inches, of a boy’s height each y', '3', '5.7', '9.5', '14.3', '3', 'EFID_1'),
('EQMID_20', 'Each year, the value of an investment increases by 0.49% of its value the previous year. Which of the following functions best models how the value of the investment changes over time?', 'Decreasing exponential ', 'Decreasing linear', 'Increasing exponential ', 'Increasing linear', 'Increasing exponential ', 'EFID_1'),
('EQMID_3', 'b = 2.35 + 0.25x   c = 1.75 + 0.40x\r\nIn the equations above, b and c represent the price per pound, in dollars, of beef and chicken, respectively, x weeks after July 1 during last summer. What was the price per pound of beef when it was equal to the price', '$2.60', '$2.85', '$2.95', '$3.35', '$3.35', 'EFID_1'),
('EQMID_4', '3x+ 4y = −23   2y − x = −19\r\nWhat is the solution (x, y) to the system of equations above?\r\n', '(−5, −2)', '(3, −8)', '(4, −6)', '(9, −6)', '(3, −8)', 'EFID_1'),
('EQMID_5', 'A line in the xy-plane passes through the origin and has a slope of 1/7 Which of the following points lies on the line? ', '(0,7)', '(1,7) ', '(7,7)', '(14,2)', '(14,2)', 'EFID_1'),
('EQMID_6', 'If (ax + 2) (bx +7) = 15x^2 + cx + 14 for all values of x, and a + b = 8, what are the two possible values for c?', '3 and 5 ', '6 and 35 ', '10 and 21', '31 and 41', '31 and 41', 'EFID_1'),
('EQMID_7', 'If 16 + 4x is 10 more than 14, what is the value of 8x?', '2 ', '6 ', '16 ', '80', '16 ', 'EFID_1'),
('EQMID_8', 'If y = kx, where k is a constant, and y = 24 when x = 6, what is the value of y when x = 5? ', '6 ', '15', '20 ', '23', '20 ', 'EFID_1'),
('EQMID_9', 'For what value of n is | n — 1 | + 1 equal to 0? ', '0 ', 'I ', '2 ', 'There is no such value of n.', 'There is no such value of n.', 'EFID_1');

-- --------------------------------------------------------

--
-- Table structure for table `eq_reading_comprehension`
--

CREATE TABLE `eq_reading_comprehension` (
  `EQRCID` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
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

INSERT INTO `eq_reading_comprehension` (`EQRCID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EID`) VALUES
('EQRCID_1', 'Which choice best describes what happens in the passage?', 'One character argues with another character who intrudes on her home.', 'One character receives a surprising request from another character.', 'One character reminisces about choices she has made over the years.', 'One character criticizes another character for pursuing an unexpected course of action', 'One character receives a surprising request from another character.', 'EFID_1'),
('EQRCID_10', 'Which choice provides the best evidence for the answer to the previous question?', 'Line 39 (“I don’t... you”)', 'Lines 39 - 42 (“Normally... community”)', 'Lines 58 - 59 (“Depending... Japan”)', 'Lines 72 - 73 (“I see... you”)', 'Lines 39 - 42 (“Normally... community”)', 'EFID_1'),
('EQRCID_11', 'The authors most likely use the examples in lines 1-9 of the passage (“Every... showers”) to highlight the', 'regularity with which people shop for gifts.', 'recent increase in the amount of money spent on gifts.\r\n', 'anxiety gift shopping causes for consumers.', 'number of special occasions involving gift-giving\r\n', 'regularity with which people shop for gifts.', 'EFID_1'),
('EQRCID_12', 'In line 10, the word “ambivalent” most nearly means', 'unrealistic.', 'conflicted.', 'apprehensive.', 'supportive.', 'conflicted.', 'EFID_1'),
('EQRCID_13', 'The authors indicate that people value gift-giving because they feel it', 'functions as a form of self-expression.', 'is an inexpensive way to show appreciation.', 'requires the gift-recipient to reciprocate.', 'can serve to strengthen a relationship.', 'can serve to strengthen a relationship.', 'EFID_1'),
('EQRCID_14', 'Which choice provides the best evidence for the answer to the previous question?', 'Lines 10-13 (“Many... peers”)', 'Lines 22-23 (“People... own”)', 'Lines 31-32 (“Research... perspectives”)', 'Lines 44-47 (“Although... unfounded”)', 'Lines 10-13 (“Many... peers”)', 'EFID_1'),
('EQRCID_15', 'The “social psychologists” mentioned in paragraph 2 (lines 17-34) would likely describe the “deadweight loss” phenomenon as', 'predictable.', 'questionable.', 'disturbing.', 'unprecedented.', 'predictable.', 'EFID_1'),
('EQRCID_16', 'The passage indicates that the assumption made by gift-givers in lines 41-44 may be\r\n', 'insincere.', 'unreasonable.', 'incorrect.', 'substantiated.', 'incorrect.', 'EFID_1'),
('EQRCID_17', 'Which choice provides the best evidence for the answer to the previous question?', 'Lines 53-55 (“Perhaps... consideration”)', 'Lines 55-60 (“According... relationship”)', 'Lines 63-65 (“As... consideration”)', 'Lines 75-78 (“In... relations”)', 'Lines 63-65 (“As... consideration”)', 'EFID_1'),
('EQRCID_18', 'As it is used in line 54, “convey” most nearly means', 'transport.', 'counteract.', 'exchange.', 'communicate.', 'communicate.', 'EFID_1'),
('EQRCID_19', 'The authors refer to work by Camerer and others (line 56) in order to', 'offer an explanation.', 'introduce an argument.', 'question a motive.', 'support a conclusion', 'offer an explanation.', 'EFID_1'),
('EQRCID_2', 'Which choice best describes the developmental pattern of the passage?', 'A careful analysis of a traditional practice', 'A detailed depiction of a meaningful encounter', 'A definitive response to a series of questions', 'A cheerful recounting of an amusing anecdote', 'A detailed depiction of a meaningful encounter', 'EFID_1'),
('EQRCID_20', 'The authors would likely attribute the differences in gift-giver and recipient mean appreciation as represented in the graph to', 'an inability to shift perspective.', 'an increasingly materialistic culture.', 'a growing opposition to gift-giving.', 'a misunderstanding of intentions.', 'an inability to shift perspective.', 'EFID_1'),
('EQRCID_3', 'As used in line 1 and line 65, “directly” most nearly means', 'frankly.', 'confidently.', 'without mediation.', 'with precision.', 'without mediation.', 'EFID_1'),
('EQRCID_4', 'Which reaction does Akira most fear from Chie?', 'She will consider his proposal inappropriate.', 'She will mistake his earnestness for immaturity.', 'She will consider his unscheduled visit an imposition.', 'She will underestimate the sincerity of his emotions', 'She will consider his proposal inappropriate.', 'EFID_1'),
('EQRCID_5', 'Which choice provides the best evidence for the answer to the previous question?', 'Line 33 (“His voice... refined”)', 'Lines 49-51 (“You... mind”)', 'Lines 63-64 (“Please... proposal”)', 'Lines 71-72 (“Eager... face”)', 'Lines 63-64 (“Please... proposal”)', 'EFID_1'),
('EQRCID_6', 'In the passage, Akira addresses Chie with', 'affection but not genuine love.', 'objectivity but not complete impartiality.', 'amusement but not mocking disparagement.', 'respect but not utter deference', 'respect but not utter deference', 'EFID_1'),
('EQRCID_7', 'The main purpose of the first paragraph is to', 'describe a culture.', 'criticize a tradition.', 'question a suggestion.', 'analyze a reaction', 'analyze a reaction', 'EFID_1'),
('EQRCID_8', 'As used in line 2, “form” most nearly means', 'appearance.', 'custom.', 'structure.', 'nature', 'custom.', 'EFID_1'),
('EQRCID_9', 'Why does Akira say his meeting with Chie is “a matter of urgency” (line 32)?', 'He fears that his own parents will disapprove of Naomi.', 'He worries that Naomi will reject him and marry someone else.', 'He has been offered an attractive job in another country.', 'He knows that Chie is unaware of his feelings for Naomi.', 'He has been offered an attractive job in another country.', 'EFID_1');

-- --------------------------------------------------------

--
-- Table structure for table `eq_science`
--

CREATE TABLE `eq_science` (
  `EQSID` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
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

INSERT INTO `eq_science` (`EQSID`, `Question`, `Choice_A`, `Choice_B`, `Choice_C`, `Choice_D`, `Answer`, `EID`) VALUES
('EQSID_1', 'The authors use the word “backbone” in lines 3 and 39 to indicate that ', 'only very long chains of DNA can be taken from', 'the main structure of a chain in a DNA molecule is composed of repeating units.', 'a chain in a DNA molecule consists entirely of phosphate groups or of sugars.', 'nitrogenous bases form the main structural unit of DNA.', 'the main structure of a chain in a DNA molecule is composed of repeating units.', 'EFID_1'),
('EQSID_10', 'Based on the table, is the percentage of adenine in each organism’s DNA the same or does it vary, and which statement made by the authors is most consistent with that data?', 'The same; “Two of... pyrimidines” (lines 6-8)', 'The same; “The important... structure” (lines 25-26)', 'It varies; “Adenine... thymine” (lines 36-38)', 'It varies; “It follows... information” (lines 41-45)', 'It varies; “It follows... information” (lines 41-45)', 'EFID_1'),
('EQSID_2', 'A student claims that nitrogenous bases pair randomly with one another. Which of the following statements in the passage contradicts the student’s claim?', 'Lines 5-6 (“To each... types”)', 'Lines 9-10 (“So far... irregular”)', 'Lines 23-25 (“The bases... other”)', 'Lines 27-29 (“One member... chains”)', 'Lines 27-29 (“One member... chains”)', 'EFID_1'),
('EQSID_3', 'In the second paragraph (lines 12-19), what do the authors claim to be a feature of biological interest?', 'The chemical formula of DNA', 'The common fiber axis', 'The X-ray evidences', 'DNA consisting of two chains', 'DNA consisting of two chains', 'EFID_1'),
('EQSID_4', 'The authors’ main purpose of including the information about X-ray evidence and density is to', 'establish that DNA is the molecule that carries the genetic information.', 'present an alternate hypothesis about the composition of a nucleotide.', 'provide support for the authors’ claim about the number of chains in a molecule of DNA.', 'confirm the relationship between the density of DNA and the known chemical formula of DNA.', 'provide support for the authors’ claim about the number of chains in a molecule of DNA.', 'EFID_1'),
('EQSID_5', 'Based on the passage, the authors’ statement “If a pair consisted of two purines, for example, there would not be room for it” (lines 29-30) implies that a pair', 'of purines would be larger than the space between a sugar and a phosphate group.', 'of purines would be larger than a pair consisting of a purine and a pyrimidine.', 'of pyrimidines would be larger than a pair of purines.', 'consisting of a purine and a pyrimidine would be larger than a pair of pyrimidines.', 'of purines would be larger than a pair consisting of a purine and a pyrimidine.', 'EFID_1'),
('EQSID_6', 'The authors’ use of the words “exact,” “specific,” and “complement” in lines 47-49 in the final paragraph functions mainly to', 'confirm that the nucleotide sequences are known for most molecules of DNA.', 'counter the claim that the sequences of bases along a chain can occur in any order.', 'support the claim that the phosphate-sugar backbone of the authors’ model is completely regular.', 'emphasize how one chain of DNA may serve as a template to be copied during DNA replication.', 'emphasize how one chain of DNA may serve as a template to be copied during DNA replication.', 'EFID_1'),
('EQSID_7', 'Based on the table and passage, which choice gives the correct percentages of the purines in yeast DNA? ', '17.1% and 18.7%', '17.1% and 32.9%', '18.7% and 31.3%', '31.3% and 32.9%', '18.7% and 31.3%', 'EFID_1'),
('EQSID_8', 'Do the data in the table support the authors’ proposed pairing of bases in DNA? ', 'Yes, because for each given organism, the percentage of adenine is closest to the percentage of thymine, and the percentage of guanine is closest to the percentage of cytosine', 'Yes, because for each given organism, the percentage of adenine is closest to the percentage of guanine, and the percentage of cytosine is closest to the percentage of thymine.', 'No, because for each given organism, the percentage of adenine is closest to the percentage of thymine, and the percentage of guanine is closest to the percentage of cytosine. ', 'No, because for each given organism, the percentage of adenine is closest to the percentage of guanine, and the percentage of cytosine is closest to the percentage of thymine.', 'Yes, because for each given organism, the percentage of adenine is closest to the percentage of thymine, and the percentage of guanine is closest to the percentage of cytosine', 'EFID_1'),
('EQSID_9', 'According to the table, which of the following pairs of base percentages in sea urchin DNA provides evidence in support of the answer to the previous question?', '17.3% and 17.7%', '17.3% and 32.1%', '17.3% and 32.8%', '17.7% and 32.8%', '17.3% and 17.7%', 'EFID_1');

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
  `TIMELIMIT_HOUR` varchar(255) NOT NULL,
  `TIMELIMIT_MINUTE` varchar(255) NOT NULL,
  `EFID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_informations`
--

INSERT INTO `exam_informations` (`EID`, `SUBJECT`, `INSTRUCTION`, `TIMELIMIT_HOUR`, `TIMELIMIT_MINUTE`, `EFID`) VALUES
('EID_1', 'MATH', 'Choose the correct answer by solving each problem and \r\nselecting only the best answer from the options provided below.', '00', '40', 'EFID_1'),
('EID_2', 'SCIENCE', 'Analyze the given table and sentence before the questions and select the appropriate answer for the questions below.', '00', '40', 'EFID_1'),
('EID_3', 'ENGLISH', 'Each sentence is followed by a series of questions. You will evaluate how the passage could be altered to improve the expression of concepts for some questions. Other questions will need you to examine how the piece could be altered to fix flaws in senten', '00', '40', 'EFID_1'),
('EID_4', 'READING COMPREHENSION', 'A series of questions follows each sentence or set of texts below. Choose the best response to each question based on what is stated or suggested in the passage after reading each passage or pair.', '00', '40', 'EFID_1');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `ERID` int(11) NOT NULL,
  `MATH_SCORE` int(255) NOT NULL,
  `ENGLISH_SCORE` int(255) NOT NULL,
  `SCIENCE_SCORE` int(255) NOT NULL,
  `READING_COMPREHENSION_SCORE` int(255) NOT NULL,
  `TOTAL_SCORE` int(255) NOT NULL,
  `EXAM_RESULT` varchar(255) NOT NULL,
  `LRN` int(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`ERID`, `MATH_SCORE`, `ENGLISH_SCORE`, `SCIENCE_SCORE`, `READING_COMPREHENSION_SCORE`, `TOTAL_SCORE`, `EXAM_RESULT`, `LRN`, `DATE`) VALUES
(1, 10, 10, 10, 10, 30, 'PASSED', 2147483647, '01/02/03');

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
('IAQID_42', 'Interested in diagnostic testing and medication administration', 'Health Sciences', '1', 'IAIID_1'),
('IAQID_44', 'Interested in the design, construction, and maintenance of structures and machines.', 'Engineering', '1', 'IAIID_1'),
('IAQID_45', 'Interested in the chemical and physical processes involved in the production of materials and energy.', 'Engineering', '1', 'IAIID_1'),
('IAQID_46', 'Interested in the design and development of electronic and communication systems.', 'Engineering', '1', 'IAIID_1'),
('IAQID_47', 'Interested in management of natural resources and environmental conservation', 'Engineering', '1', 'IAIID_1'),
('IAQID_48', 'Interested in various aspects of media and communication, such as journalism, broadcasting, and mass communication. ', 'Media and Communication', '1', 'IAIID_1'),
('IAQID_49', 'Interested in communication with a specific emphasis on the role of communication in development work. ', 'Media and Communication', '1', 'IAIID_1'),
('IAQID_5', 'Professions and Applied Sciences', 'Professions and Applied Sciences', '0', 'IAIID_1'),
('IAQID_6', 'Health Sciences', 'Health Sciences', '0', 'IAIID_1'),
('IAQID_7', 'Education', 'Education', '0', 'IAIID_1'),
('IAQID_8', 'Engineering', 'Engineering', '0', 'IAIID_1'),
('IAQID_9', 'Media and Communication', 'Media and Communication', '0', 'IAIID_1');

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `IID` int(11) NOT NULL,
  `INTRUCTION` varchar(255) NOT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `EEID` varchar(255) NOT NULL
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

--
-- Dumping data for table `interest_assessment_result`
--

INSERT INTO `interest_assessment_result` (`IARID`, `REALISTIC_SCORE`, `INVESTIGATIVE_SCORE`, `ARTISTIC_SCORE`, `SOCIAL_SCORE`, `ENTERPRISING_SCORE`, `CONVENTIONAL_SCORE`, `IA_RESULT`, `LRN`, `DATE`) VALUES
(1, 10, 9, 10, 10, 8, 10, 'F AND B', 2147483647, '01/02/2003');

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

--
-- Dumping data for table `overall_result`
--

INSERT INTO `overall_result` (`RID`, `ERID`, `IRID`, `RECOMMENDED_COURSE`, `LRN`, `DATE`) VALUES
('0', '0', '0', 'BSIT', '2147483647', '1');

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
  ADD PRIMARY KEY (`EQEID`);

--
-- Indexes for table `eq_math`
--
ALTER TABLE `eq_math`
  ADD PRIMARY KEY (`EQMID`);

--
-- Indexes for table `eq_reading_comprehension`
--
ALTER TABLE `eq_reading_comprehension`
  ADD PRIMARY KEY (`EQRCID`);

--
-- Indexes for table `eq_science`
--
ALTER TABLE `eq_science`
  ADD PRIMARY KEY (`EQSID`);

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
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`IID`);

--
-- Indexes for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  ADD PRIMARY KEY (`IARID`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`STUDENT_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `ERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  MODIFY `IARID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `STUDENT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
