-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 11:22 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE `admindetails` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admindetails`
--

INSERT INTO `admindetails` (`email`, `name`, `password`) VALUES
('adminforQuizwebsite@gmail.com', 'Admin', 'passion99');

-- --------------------------------------------------------

--
-- Table structure for table `cadvquiz`
--

CREATE TABLE `cadvquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cinterquiz`
--

CREATE TABLE `cinterquiz` (
  `que` text NOT NULL,
  `option1` varchar(222) NOT NULL,
  `option2` varchar(222) NOT NULL,
  `option3` varchar(222) NOT NULL,
  `option4` varchar(222) NOT NULL,
  `ans` varchar(222) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cinterquiz`
--

INSERT INTO `cinterquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Result of logical expression in C is?', 'true', 'false', '0 or 1', 'All the above', '0 or 1', '0 or 1', 1),
('Does Every function must return a value?', 'Yes', 'No', 'Both', 'None', 'No', 'Yes', 2),
('In which Datatype the size is not fixed?', 'int', 'float', 'struct', 'double', 'struct', 'struct', 3),
('Automatic variables are stored in ____________', 'stack', 'Heap', 'Register', 'none', 'stack', 'Register', 4),
('Which Datatype will throw an error when we perform modulus operation(%)?', 'int', 'short', 'float', 'All the above', 'float', 'float', 5),
('What is the size of struct datatype?', 'Equal to its biggest data member size', 'Equal to sum of its all data members size', 'Equal to its smallest data member size', 'none', 'Equal to sum of its all data members size', 'Equal to its biggest data member size', 6),
('strlen() is used for__________', 'Calculate string length', 'Reverse string', 'Concat two strings', 'Copy string', 'Calculate string length', 'Calculate string length', 7),
('Recursive functions are executed in a ____________', 'FIFO order', 'Load balancing', 'parallel', 'LIFO order', 'LIFO order', 'LIFO order', 8),
('Can we overload function in c?', 'Yes', 'No', 'Cant say', 'none', 'No', 'No', 9),
('Prototype of a function means__________?', 'Name of function', 'Parameter of function', 'Declaration of function', 'All', 'All', 'All', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cppadv`
--

CREATE TABLE `cppadv` (
  `id` int(11) NOT NULL,
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cppadv`
--

INSERT INTO `cppadv` (`id`, `que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`) VALUES
(1, 'what is the following function call mean strcpy(s1,s2)?', 'copies s1 string into s2', 'copies s2 string into s1', 'copies both s1 and s2', 'none of this', 'copies s2 string into s1', 'copies s2 string into s1'),
(2, ' An uninitialized pointer is called ______________', 'Void pointer', 'Null pointer', 'Dangling pointer', 'Wild pointer', 'Wild pointer', 'Wild pointer'),
(3, ' What is meaning of the below lines? void sum(int,int);', 'sum is function which take int arguements', ' sum is function which take two int arguements', 'it will produce compilation error', 'none', ' sum is function which take two int arguements', 'it will produce compilation error'),
(4, 'which of the following is invalid header file in C?', 'math.h', 'mathio.h', 'string.h', 'ctype.h', 'mathio.h', 'string.h'),
(5, 'Can we declare function inside structure of C programming?', 'Yes', 'No', 'Depends on compiler', 'Yes but run time error', 'No', 'Depends on compiler'),
(6, 'Choose a correct statement about C structure elements?', 'Structure elements are stored on random free memory locations', 'Structure elements are stored in register memory locations', 'Structure elements are stored in contiguous memory locations', 'None of the above', 'Structure elements are stored in contiguous memory locations', 'Structure elements are stored in contiguous memory locations'),
(7, 'A recursive function can be replaced with__________in c language', 'for loop', 'while loop', 'do while loop', 'All the above', 'All the above', 'while loop'),
(8, 'A recursive function without if and else conditions will always lead to?', 'Finite loop', 'Infinite loop', 'Incorrect result', 'Correct result', 'Infinite loop', 'Incorrect result'),
(9, 'What is the keyword used to declare a C file pointer?', 'file', 'FILE', 'FILEFP', 'filefp', 'FILE', 'filefp'),
(10, 'Where is a file temporarily stored before read or write operation in c language?', 'Notepad', 'RAM', 'Hard disk', 'Buffer', 'Buffer', 'RAM');

-- --------------------------------------------------------

--
-- Table structure for table `cppinterquiz`
--

CREATE TABLE `cppinterquiz` (
  `id` int(11) NOT NULL,
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cppquiz`
--

CREATE TABLE `cppquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cquiz`
--

CREATE TABLE `cquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(222) NOT NULL,
  `userans` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cquiz`
--

INSERT INTO `cquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Who is the Father of C language', 'Bijarne', 'James', 'Dennis Ritchie', 'e.f.codd', 'Dennis Ritchie', 'Dr.e.f.codd', 1),
('Which of the following function is user defined?', 'printf', 'scanf', 'main', 'none', 'main', 'main', 2),
('C language comes under which type of language?', 'Procedural oriented programming', 'object oriented programming', 'semi-object oriented programming', 'None', 'Procedural oriented programming', 'semi-object oriented programming', 3),
('Break statement is used for __________', 'Quit a program', 'Quit the current loop', 'Both a and b', 'none', 'Quit the current loop', 'Quit the current loop', 4),
('What is the range of int data type?', '0 to 255', '-127 to +128', '-32768 to +32767', 'none', '-32768 to +32767', '-32768 to +32767', 5),
('Which of the following is the correct operator to compare two variables?', '=', 'Equals', '==', '!=', '==', '==', 6),
('While and for loop comes under which type of loop?', 'Entry control', 'Exit control', 'both', 'none', 'Entry control', 'Entry control', 7);

-- --------------------------------------------------------

--
-- Table structure for table `cssadquiz`
--

CREATE TABLE `cssadquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cssadquiz`
--

INSERT INTO `cssadquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Which css property you will use if you want to add some margin between a DIV\'s border and its inner text?', 'spacing', 'margin', 'padding', 'inner-margin', 'padding', ' ', 1),
('Which CSS property is used to control the text size of an element?', 'font-style', 'text-style', 'font-size', 'text-style', 'font-size', ' ', 2),
('The default value of \'position\' attribute is ___________', 'fixed', 'absolute', 'inherit', 'relative', 'relative', ' ', 3),
('How do you remove the underline from all hyperlinks by using CSS code?', 'a{text:no-underline;}', 'a{text-decoration:none;}', 'a{text-style : no-underline;}', 'a{text-decoration:no-underline;}', 'a{text-decoration:none;}', ' ', 4),
('How can we write comment long with css code?', '/* a comment*/', '// a comment//', '/ a comment / ', '\'< a comment .\'', '/* a comment*/', ' ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cssiquiz`
--

CREATE TABLE `cssiquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cssiquiz`
--

INSERT INTO `cssiquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('What is the default property value of css \"line-height property?', 'inherit', 'length', 'Normal', 'Number', 'Normal', 'Normal', 1),
('What should be the table width , so that the width of a table adjust to the current width of the browser window?', '640px', '100%', '1024px', 'full-screen', '100%', ' ', 2),
('Which attribute can be added to many HTML/XHTML elements to identify them as a member of a specific group?', 'id', 'div', 'class', 'span', 'class', ' ', 3),
('If we want to show an Arrow as cursor then which value we will use?', 'pointer', 'default', 'arrow', 'arr', 'default', ' ', 4),
('Which of the following properties will we use to display border around a cell without any content?', 'empty-cell', 'blank-cell', 'noncontent-cell', 'void-cell', 'empty-cell', ' ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cssquiz`
--

CREATE TABLE `cssquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cssquiz`
--

INSERT INTO `cssquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('CSS stands for_______', 'Cascade style sheets', 'Color and style sheets', 'Cascading style sheets', 'None of the above', 'Cascading style sheet', 'Cascade style sheets', 1),
('The property in CSS used to change the text color of an element is__', 'bgcolor', 'color', 'background-color', 'All of the above', 'background-color', 'background-color', 2),
('The css property used to control the elements font size is______', 'text-style', 'text-size', 'font-size', 'None of the above', 'font-size', 'font-size', 3),
('Which of the following property is used as the shorthand property for the padding properties?', 'padding-left', 'padding-right', 'padding', 'All of the above', 'padding', 'padding-right', 4),
('The CSS property used to make the text bold is_____', 'font-weight:bold', 'weight:bold', 'font-bold', 'style:bold', 'font-weight:bold', 'font-bold', 5);

-- --------------------------------------------------------

--
-- Table structure for table `htmladquiz`
--

CREATE TABLE `htmladquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `htmladquiz`
--

INSERT INTO `htmladquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('The attribute which define the relationship between current document and HREF\'ed URL is', 'REL', 'URL', 'REV', 'all of these', 'REL', ' ', 1),
('A much better approach to establish the base URL is to use_________', 'BASE element', 'HEAD element', 'Both (a) and (b)', 'None of these', 'BASE element', ' ', 2),
('Any part of the graphic that is not included in another hot zone is considered to be part of', 'rect', 'point', 'default', 'polygon', 'default', ' ', 3),
('The map definition file is generally stored in', 'CGI-BIN', 'RECYCLE-BIN', 'BIN', 'all of these', 'CGI-BIN', ' ', 4),
('The largest HTML standard is', 'XML', 'SGML', 'HTML 4.0', 'HTML 5.0', 'HTML 5.0', ' ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `htmliquiz`
--

CREATE TABLE `htmliquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `htmliquiz`
--

INSERT INTO `htmliquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('HTML tags are surrounded by which type of brackets?', 'Curly', 'Round', 'Squart', 'Angle', 'Angle', ' ', 1),
('Markup tags tell the web browser________', 'How to organise the page', 'How to display the page', 'How to display message box on page', 'None of these', 'How to display the page', ' ', 2),
('WWW is based on which model?', 'Local-server', 'Client-server', '3-tier', 'None of these', 'Client-server', ' ', 3),
('Which of the following attributes of text box control allow to limit the maximum character?', 'size', 'len', 'maxlength', 'all of these', 'maxlength', ' ', 4),
('HTML is a subset of________', 'SGMT', 'SGML', 'SGMD', 'None of these', 'SGML', ' ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `htmlquiz`
--

CREATE TABLE `htmlquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `htmlquiz`
--

INSERT INTO `htmlquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('What is the FULL FORM of HTML?', 'Hyper Text MarkUp  Language', 'Hyper Text Markline Language', 'Hyper Text Marker Language', 'None', 'Hyper Text MarkUp Language', 'Hyper Text MarkUp  Language', 1),
('HTML uses', 'User defined tags', 'Pre-specified tags', 'Fixed tags defined by the language', 'Tags only for linking', 'Fixed tags defined by the language', ' ', 2),
('Fundamental HTML Block is known as_______________', 'HTML body', 'HTML Tag', 'HTML Attribute', 'HTML Element', 'HTML Tag', ' ', 3),
('what tag is used to display a picture in a HTML page?', 'picture', 'image', 'img', 'src', 'img', ' ', 4),
('HTML web pages can be read and rendered by________', 'Compiler', 'Serever', 'Web browser', 'Interpreter', 'Web browser', ' ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `javaadquiz`
--

CREATE TABLE `javaadquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javaadquiz`
--

INSERT INTO `javaadquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Which of these keywords is used to manually throw an exception?', 'finally', 'throw', 'catch', 'try', 'throw', 'catch', 1),
('Which of these is a super class of all errors and exceptions in java language?', 'Catchable', 'Throwable', 'RunTimeExceptions', 'None of the above', 'Throwable', 'RunTimeExceptions', 2),
('What is the name of the method used to start a thread execution?', 'run()', 'init()', 'start()', 'resume()', 'start()', 'resume()', 3),
('Which of the following will directly stop the execution of a Thread?', 'notify()', 'notifyall()', 'wait()', 'exits synchronized code', 'wait()', 'exits synchronized code', 4),
('An applet is a java class that extend the?', 'java.Applet class', 'java class', 'Applet class', 'java.applet.Applet class', 'java.applet.Applet class', 'java.applet.Applet class', 5);

-- --------------------------------------------------------

--
-- Table structure for table `javaiquiz`
--

CREATE TABLE `javaiquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javaiquiz`
--

INSERT INTO `javaiquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('What does an interface contain?', 'Method definition', 'Method declaration', 'Method declaration and definition', 'Method name', 'Method declaration', 'Method declaration and definition', 1),
('What is the syntax of abstract class in java?', 'abstract A{}', 'abstract class A', 'abstract class A{}', 'abstract class A[]', 'abstract class A{}', 'abstract class A{}', 2),
('Which of these pacakages contain abstract keyword?', 'java.lang', 'java.util', 'java.io', 'java.system', 'java.lang', 'java.io', 3),
('Which of the following is a garbage collection technique?', 'Sweep model', 'Mark and Sweep model', 'Space management model', 'Cleanup model', 'Mark and Sweep model', 'Cleanup model', 4),
('Which of these can be used to fully abstract a class from its implementation?', 'Objects', 'Packages', 'Interfaces', 'None of the above', 'Interfaces', 'Cleanup model', 5);

-- --------------------------------------------------------

--
-- Table structure for table `javaquiz`
--

CREATE TABLE `javaquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javaquiz`
--

INSERT INTO `javaquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Integer Data type does not include following primitive data type_______', 'long', 'byte', 'short', 'double', 'double', 'short', 1),
('What is size of integer in java programming', '1 Byte', '2 Bytes', '4 Bytes', '8 Bytes', '4 Bytes', '4 Bytes', 2),
('Java source code is compiled into________________', '.Obj', 'source code', 'Bytecode', '.Exe', 'Bytecode', 'Bytecode', 3),
('Choose the wrong statement about java programming?', 'Java supports unsigned integers', 'Java supports signed integers', 'java supports signed char', 'None of these', 'Java supports unsigned integers', ' ', 4),
('Which among the following is not a valid Datatype in java?', 'long', 'bool', 'double', 'float', 'bool', ' ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pythonadquiz`
--

CREATE TABLE `pythonadquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pythonadquiz`
--

INSERT INTO `pythonadquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Which function overloads the + operator?', '__add__()', '__plus__()', '__sum__()', 'None of the above', '__add__()', '__add__()', 1),
('Which of the following data structure is returned by the functions globals() and locals()?', 'list', 'set', 'dictionary', 'tuple', 'dictionary', 'dictionary', 2),
('What happens if a local variable exists with the same name as the global variable you want to access?', 'Error', 'The local variable is shadowed', 'Undefined behavior', 'The global variable is shadowed', 'The global variable is shadowed', 'Undefined behavior', 3),
('_________represents an entity in the real world with its identify and behaviour.', 'A method', 'An object', 'A class', 'An operator', 'An object', 'A class', 4),
('_________ is used to create an object', 'class', 'constructor', 'User-defined functions', 'In-built functions', 'constructor', 'A class', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pythoniquiz`
--

CREATE TABLE `pythoniquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pythoniquiz`
--

INSERT INTO `pythoniquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('To add a new element to a list we use the command?', 'list1.add(5)', 'list1.append(5)', 'list1.addLast(5)', 'list.addEnd(5)', 'list.append(5)', 'list1.addLast(5)', 1),
('To insert 5 to the third position in list1, we use which command?', 'list1.insert(3,5)', 'list1.insert(2,5)', 'list1.add(3,5)', 'list1.append(3,5)', 'list1.insert(3,5)', 'list1.insert(2,5)', 2),
('Which of the following is a python tuple?', '[1,2,3]', '{1,2,3}', '(1,2,3)', 'None', '(1,2,3)', '(1,2,3)', 3),
('WHich of these about a set is not true?', 'Mutable data type', 'Allows duplicate values', 'Data type with unordered values', 'Immutable data type', 'Immutable data type', 'Immutable data type', 4),
('Which of the following statements is used to create an empty set?', '{}', 'set()', '[]', '()', 'set()', 'Immutable data type', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pythonquiz`
--

CREATE TABLE `pythonquiz` (
  `que` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `userans` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pythonquiz`
--

INSERT INTO `pythonquiz` (`que`, `option1`, `option2`, `option3`, `option4`, `ans`, `userans`, `id`) VALUES
('Is python case sensitive when dealing with identifiers?', 'Yes', 'No', 'machine dependent', 'None', 'Yes', 'Yes', 1),
('Which of the following is an invalid variable?', 'my_string_1', '1st_string', 'foo', '_', '1st_string', '1st_string', 2),
('Which is the correct operator for power?', 'x^y', 'x**y', 'x^^y', 'None', 'x**y', 'x^^y', 3),
('Which one of these is floor division?', '/', '//', '%', 'None', '//', '//', 4),
('Operators with the same precedence are evaluated in which manner?', 'Left to Right', 'Right to Left', 'Cant say', 'None', 'Left to Right', 'Left to Right', 5),
('Which one of the following has the same precedence level?', 'Addition and Subtraction', 'Multiplication,Division and Addition', 'Multiplication and subtraction', 'None', 'Addition and Subtraction', 'Addition and Subtraction', 6),
('All the keywords in python are in_____________', 'lowercase', 'uppercase', 'Capitalized', 'None of the mentioned', 'None of the mentioned', 'None of the mentioned', 7),
('Which of the following is not a keyword?', 'eval', 'assert', 'nonlocal', 'pass', 'eval', 'nonlocal', 8),
('What is the maximum possible length of an identifier?', '31 characters', '63 characters', '79 characters', 'None of the above', 'None of the above', '63 characters', 9),
('What arithematic operators cannot be used with strings?', '+', '*', '-', 'All of the above', '-', '-', 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quizid` int(11) NOT NULL,
  `quizname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizid`, `quizname`) VALUES
(1, 'C language basic level'),
(2, 'C language intermediate level'),
(3, 'C langauge advanced level'),
(4, 'C++ basic level'),
(5, 'C++ intermediate level'),
(6, 'C++ advanced level');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `email` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `quizname` varchar(50) DEFAULT NULL,
  `tq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`email`, `score`, `quizname`, `tq`) VALUES
('vidyapinninti111@gmail.com', 8, 'C language basic level', 8),
('hemapunugoti@gmail.com', 8, 'C language basic level', 8),
('hemapunugoti@gmail.com', 6, 'C language basic level', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `email`, `password`) VALUES
('palakurthi', 'Dedeepya', 'dedeepyapalakurthi@gmail.com', 'dedeepya@9'),
('pinninti', 'deepika', 'deepikapinninti111@gmail.com', 'deepu99'),
('pinninti', 'Radhika', 'dhanap1975@gmail.com', 'radhi99'),
('Hema', 'punugoti', 'hemapunugoti@gmail.com', 'hema99'),
('Keerthana Sai', 'Maddukuri', 'keerthana@gmail.com', 'keeru'),
('Keerthana Sai', 'Maddukuri', 'keerthanamaddukuri@gmail.com', 'keeru99'),
('Lakshmi Keerthi', 'Motamarri', 'keerthimotamarri@gmail.com', 'keerthi99'),
('Radhika', 'Pinninti', 'radhi9666@gmail.com', 'dhanu99'),
('punugoti ', 'sivani', 'sivanipunugoti@gmail.com', 'sivani99'),
('Swetha', 'Vegiraju', 'vegirajuswetha2122@gmail.com', 'swetha99'),
('pinninti', 'vidya lakshmi sireesha', 'vidyapinninti111@gmail.com', 'siri99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadvquiz`
--
ALTER TABLE `cadvquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinterquiz`
--
ALTER TABLE `cinterquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cppquiz`
--
ALTER TABLE `cppquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cquiz`
--
ALTER TABLE `cquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cssadquiz`
--
ALTER TABLE `cssadquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cssiquiz`
--
ALTER TABLE `cssiquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cssquiz`
--
ALTER TABLE `cssquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `htmladquiz`
--
ALTER TABLE `htmladquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `htmliquiz`
--
ALTER TABLE `htmliquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `htmlquiz`
--
ALTER TABLE `htmlquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `javaadquiz`
--
ALTER TABLE `javaadquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `javaiquiz`
--
ALTER TABLE `javaiquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `javaquiz`
--
ALTER TABLE `javaquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pythonadquiz`
--
ALTER TABLE `pythonadquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pythoniquiz`
--
ALTER TABLE `pythoniquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pythonquiz`
--
ALTER TABLE `pythonquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadvquiz`
--
ALTER TABLE `cadvquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cinterquiz`
--
ALTER TABLE `cinterquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cppquiz`
--
ALTER TABLE `cppquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cquiz`
--
ALTER TABLE `cquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cssadquiz`
--
ALTER TABLE `cssadquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cssiquiz`
--
ALTER TABLE `cssiquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cssquiz`
--
ALTER TABLE `cssquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `htmladquiz`
--
ALTER TABLE `htmladquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `htmliquiz`
--
ALTER TABLE `htmliquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `htmlquiz`
--
ALTER TABLE `htmlquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `javaadquiz`
--
ALTER TABLE `javaadquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `javaiquiz`
--
ALTER TABLE `javaiquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `javaquiz`
--
ALTER TABLE `javaquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pythonadquiz`
--
ALTER TABLE `pythonadquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pythoniquiz`
--
ALTER TABLE `pythoniquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pythonquiz`
--
ALTER TABLE `pythonquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
