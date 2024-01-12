-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 07:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `addressLine2` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postalCode` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(8) NOT NULL,
  `creditLimit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerNumber`, `customerName`, `contactFirstName`, `contactLastName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(1, 'PT Selera Nusantara Jaya', 'Sri', 'Widodo', '082143765432', 'Jl. Arjuna No. 5, Kav. 12', 'Ruko Griya Sejuk', 'Semarang', 'Indonesia', '50145', 'Indonesia', 4, '235678'),
(2, 'PT Gaya Busana Indonesia', 'Rara', 'Rahmawati', '087654321012', 'Jl. Sudirman No. 88, Lantai 2', 'Gedung Graha Mas', 'Surabaya', 'Indonesia', '60275', 'Indonesia', 5, '398765'),
(3, 'PT Mitra Mesin Andalan', 'Tono', 'Supriyadi', '081276543210', 'Jl. Gatot Subroto No. 34', 'Ruko Citra Raya', 'Yogyakarta', 'Indonesia', '55116', 'Indonesia', 4, '487654'),
(4, 'PT Citra Kecantikan Utama', 'Ayu', 'Wahyuni', '085732101254', 'Jl. Pemuda No. 10, Ruko 17', 'Graha Famili', 'Malang', 'Indonesia', '65123', 'Indonesia', 5, '675432'),
(5, 'PT Farma Sejahtera Makmur', 'Budi', 'Hartono', '082310543276', 'Jl. Veteran No. 21', 'Ruko Sentosa', 'Jakarta Pusat', 'Indonesia', '10130', 'Indonesia', 4, '864321'),
(6, 'PT Jasa Laundry Indonesia', 'Santi', 'Sugiyarti', '081765432109', 'Jl. Diponegoro No. 67', 'Perumahan Asri', 'Bogor', 'Indonesia', '47148', 'Indonesia', 5, '123456'),
(7, 'PT Toko Kelontong Nusantara', 'Ahmad', 'Suhendra', '085610327654', 'Jl. Jend. Sudirman No. 19', 'Perumahan Puri Indah', 'Tangerang', 'Indonesia', '15132', 'Indonesia', 4, '567890'),
(8, 'PT Boga Nusantara', 'Yanto', 'Yulianto', '082176543201', 'Jl. Pahlawan No. 42', 'Pasar Gede', 'Solo', 'Indonesia', '57159', 'Indonesia', 5, '789012'),
(9, 'PT Literasi Bangsa', 'Adik', 'Widya', '087321098765', 'Jl. Siliwangi No. 55', 'Ruko Panorama', 'Bandung', 'Indonesia', '40173', 'Indonesia', 4, '901234'),
(10, 'PT Gizi Keluarga', 'Tini', 'Tin Agustina', '081257265233', 'Jl. Suka Maju No. 12', 'Ruko Besar Bahagia', 'Jakarta', 'Indonesia', '71232', 'Indonesia', 5, '125387');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(8) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `officeCode` int(11) NOT NULL,
  `reportsTo` int(8) DEFAULT NULL,
  `jobTitle` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `firstName`, `lastName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1, 'John', 'Doe', '1234', 'john.doe@bank.com', 1, NULL, 'Managers'),
(2, 'Jane', 'Smith', '5678', 'jane.smith@bank.com', 1, 1, 'Marketing Representative'),
(3, 'Michael', 'Johnson', '9012', 'michael.johnson@bank.com', 1, 2, 'Marketing Staff'),
(4, 'Sarah', 'Williams', '3456', 'sarah.williams@bank.com', 2, 1, 'Sales Representative'),
(5, 'David', 'Brown', '7890', 'david.brown@bank.com', 2, 4, 'Sales Staff'),
(6, 'James', 'Jones', '1357', 'james.jones@bank.com', 3, 1, 'Customer Relations Repres'),
(7, 'Robert', 'Garcia', '2468', 'robert.garcia@bank.com', 3, 6, 'Customer Relations Staff'),
(8, 'Elizabeth', 'Davis', '3690', 'elizabeth.davis@bank.com', 4, 1, 'Operations Representative'),
(9, 'William', 'Rodriguez', '2580', 'william.rodriguez@bank.com', 4, 8, 'Bank Teller'),
(10, 'Mary', 'Martinez', '1470', 'mary.martinez@bank.com', 5, 8, 'Bank Teller'),
(11, 'Christopher', 'Hernandez', '2580', 'christopher.hernandez@bank.com', 6, 8, 'Bank Teller'),
(12, 'Patricia', 'Lopez', '3690', 'patricia.lopez@bank.com', 7, 8, 'Bank Teller'),
(13, 'Matthew', 'Gonzalez', '1234', 'matthew.gonzalez@bank.com', 8, 8, 'Bank Teller'),
(14, 'Linda', 'Perez', '5678', 'linda.perez@bank.com', 4, 8, 'Customer Service'),
(15, 'Joshua', 'Torres', '9012', 'joshua.torres@bank.com', 5, 8, 'Customer Service'),
(16, 'Karen', 'Flores', '3456', 'karen.flores@bank.com', 6, 8, 'Customer Service'),
(17, 'Daniel', 'Ramirez', '7890', 'daniel.ramirez@bank.com', 7, 1, 'Bank Teller'),
(18, 'Susan', 'Kim', '1357', 'susan.kim@bank.com', 8, 8, 'Security'),
(19, 'Ryan', 'Nguyen', '2468', 'ryan.nguyen@bank.com', 9, 8, 'Security'),
(20, 'Lisa', 'Lee', '3690', 'lisa.lee@bank.com', 8, 8, 'Security');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `addressLine2` varchar(255) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(10) NOT NULL,
  `territory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
(1, 'Jakarta', '+62211234567', 'Jl. Sudirman No. 1', 'Gedung Sahid Sudirman Center, Lantai 10', 'Indonesia', 'Indonesia', '10220', 'JAW'),
(2, 'Bandung', '+62222345678', 'Jl. Asia Afrika No. 8', 'Gedung WTC, Lantai 3', 'Indonesia', 'Indonesia', '40112', 'JAW'),
(3, 'Semarang', '+62243456789', 'Jl. Pemuda No. 1', 'Gedung Bank Jateng, Lantai 5', 'Indonesia', 'Indonesia', '50132', 'JAW'),
(4, 'Surabaya', '+62314567890', 'Jl. Pemuda No. 1', 'Gedung Bank Jatim, Lantai 6', 'Indonesia', 'Indonesia', '60271', 'JAW'),
(5, 'Malang', '+62325678901', 'Jl. Basuki Rahmat No. 1', 'Gedung BRI, Lantai 7', 'Indoensia', 'Indonesia', '65111', 'JAW'),
(6, 'Yogyakarta', '+62336789012', 'Jl. Malioboro No. 1', 'Gedung BNI, Lantai 8', 'Indonesia', 'Indonesia', '55271', 'JAW'),
(7, 'Solo', '+62347890123', 'Jl. Slamet Riyadi No. 1', 'Gedung BCA, Lantai 9', 'Indonesia', 'Indonesia', '57131', 'JAW'),
(8, 'Madiun', '+62358901234', 'Jl. Pahlawan No. 1', 'Gedung Mandiri, Lantai 10', 'Indonesia', 'Indonesia', '63111', 'JAW'),
(9, 'Kediri', '+62369012345', 'Jl. Diponegoro No. 1', 'Gedung BRI, Lantai 11', 'Indonesia', 'Indonesia', '64123', 'JAW'),
(10, 'Blitar', '+62370123456', 'Jl. Soekarno Hatta No. 1', 'Gedung BNI, Lantai 12', 'Indonesia', 'Indonesia', '66111', 'JAW');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderNumber` int(10) NOT NULL,
  `productCode` varchar(15) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` int(11) NOT NULL,
  `orderLineNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderNumber`, `productCode`, `quantityOrdered`, `priceEach`, `orderLineNumber`) VALUES
(1001, 'S7D3F4', 2, 50, 1),
(1001, 'W6G4H2', 5, 13, 2),
(1002, 'M7K3F6', 1, 85, 1),
(1003, 'K4F8G6', 3, 25, 1),
(1003, 'XJH4K2', 1, 200, 2),
(1004, 'Q9P4H6', 4, 37, 1),
(1005, 'G5S6L7', 2, 70, 1),
(1005, 'Y3H7J8', 4, 16, 2),
(1006, 'N8L2G5', 1, 116, 1),
(1007, 'T6R9N4', 6, 10, 1),
(1008, 'Y3H7J8', 8, 16, 1),
(1009, 'N8L2G5', 2, 116, 2),
(1009, 'P5D8Q6', 1, 40, 3),
(1010, 'K4F8G6', 1, 25, 2),
(1010, 'R4T9M7', 2, 75, 2),
(1011, 'L9G7F3', 5, 9, 1),
(1012, 'B7N3K8', 3, 55, 1),
(1013, 'T6R9N4', 3, 10, 2),
(1013, 'Z8C3K5', 2, 149, 2),
(1014, 'M7K3F6', 1, 85, 1),
(1014, 'XJH4K2', 2, 200, 1),
(1015, 'G5S6L7', 1, 70, 2),
(1016, 'Q9P4H6', 3, 37, 2),
(1016, 'S7D3F4', 4, 50, 3),
(1016, 'W6G4H2', 3, 13, 3),
(1017, 'P5D8Q6', 2, 40, 2),
(1018, 'R4T9M7', 1, 75, 1),
(1019, 'L9G7F3', 2, 9, 2),
(1020, 'B7N3K8', 1, 55, 2),
(1020, 'Z8C3K5', 3, 149, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(10) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `customerNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(1001, '2023-11-15', '2023-11-20', '2023-11-18', 'Shipped', '', 1),
(1002, '2023-12-02', '2023-12-07', '2023-12-05', 'Shipped', 'Requested gift wrapping', 2),
(1003, '2024-01-10', '2024-01-15', NULL, 'In Process', NULL, 3),
(1004, '2024-02-01', '2024-02-06', '2024-02-04', 'Shipped', '', 4),
(1005, '2024-03-08', '2024-03-13', NULL, 'Pending', 'Awaiting payment confirmation', 5),
(1006, '2023-11-25', '2023-11-30', '2023-11-28', 'Shipped', '', 6),
(1007, '2023-12-12', '2023-12-17', '2023-12-15', 'Shipped', 'Deliver to side entrance', 7),
(1008, '2024-01-24', '2024-01-29', NULL, 'In Process', NULL, 8),
(1009, '2024-02-15', '2024-02-20', '2024-02-18', 'Shipped', '', 9),
(1010, '2024-03-05', '2024-03-10', NULL, 'Pending', 'Awaiting stock availability', 10),
(1011, '2023-11-05', '2023-11-10', '2023-11-08', 'Shipped', '', 1),
(1012, '2023-12-22', '2023-12-27', '2023-12-25', 'Shipped', 'Requested specific delivery time', 2),
(1013, '2023-12-07', '2023-12-12', '2023-12-10', 'Shipped', '', 3),
(1014, '2024-01-17', '2024-01-22', NULL, 'Pending', 'Customer requested order confirmation email', 4),
(1015, '2024-02-08', '2024-02-13', NULL, 'In Process', 'High priority order - expedite processing', 5),
(1016, '2024-03-19', '2024-03-24', NULL, 'Pending', 'Payment method verification required', 6),
(1017, '2023-11-19', '2023-11-24', '2023-11-22', 'Shipped', 'Delivery address updated after order placement', 7),
(1018, '2023-12-29', '2024-01-03', '2024-01-01', 'Shipped', 'Express shipping requested', 8),
(1019, '2024-01-08', '2024-01-13', NULL, 'In Process', 'Partial order fulfillment in progress', 9),
(1020, '2024-02-22', '2024-02-27', NULL, 'Pending', 'Awaiting customer response regarding customization options', 10);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(5) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`customerNumber`, `checkNumber`, `paymentDate`, `amount`) VALUES
(1, 'CK123', '2023-11-22', 125000),
(1, 'CK654', '2023-11-08', 98540),
(2, 'CK258', '2023-12-20', 35463),
(2, 'CK789', '2023-12-05', 54891),
(3, 'CK345', '2024-01-18', 23750),
(3, 'CK852', '2024-01-05', 125479),
(4, 'CK147', '2024-02-17', 65432),
(4, 'CK901', '2024-02-03', 89257),
(5, 'CK567', '2024-03-15', 154321),
(5, 'CK951', '2024-03-01', 75316),
(6, 'CK425', '2023-11-14', 45633),
(7, 'CK852', '2023-12-10', 95147),
(8, 'CK369', '2024-01-22', 75395),
(9, 'CK159', '2024-02-09', 25837),
(10, 'CK658', '2024-03-21', 58974);

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLine` varchar(25) NOT NULL,
  `textDescription` varchar(5000) NOT NULL,
  `htmlDescription` mediumtext DEFAULT NULL,
  `image` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
('Art', 'A collection of paintings and sculptures that will dazzle your eyes and touch your heart. From Van Gogh to Picasso, we have the art for you. Admire along with Art!', '', ''),
('Birds', 'A collection of stuffed birds that will brighten up your day. From parrots to penguins, we have the bird for you. Tweet along with Birds!', '', ''),
('Books', 'A collection of classic novels that will enrich your soul and inspire your imagination. From Shakespeare to Orwell, we have the book for you. Read along with Books!', '', ''),
('Cars', 'A collection of die-cast model cars that will make you feel like a racing champion. Whether you prefer classic or modern, we have the car for you. Zoom into the world of Cars!', '', ''),
('Dolls', 'A collection of porcelain dolls that will charm you with their beauty. From princesses to fairies, we have the doll for you. Play along with Dolls!', '', ''),
('Games', 'A collection of board games and puzzles that will challenge your mind and test your skills. From chess to sudoku, we have the game for you. Have fun with Games!', '', ''),
('Motorcycles', 'A collection of motorcycle replicas that will rev up your adrenaline. From choppers to sport bikes, we have the motorcycle for you. Ride on with Motorcycles!', '', ''),
('Planes', 'A collection of scale model airplanes that will take your imagination to new heights. From jet fighters to passenger planes, we have the plane for you. Fly high with Planes!', '', ''),
('Ships', 'A collection of wooden ship models that will sail you across the seas of history. From pirate ships to battleships, we have the ship for you. Set sail with Ships!', '', ''),
('Trains', 'A collection of electric train sets that will transport you to different places and times. From steam locomotives to bullet trains, we have the train for you. All aboard with Trains!', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productLine` varchar(25) NOT NULL,
  `productScale` varchar(25) NOT NULL,
  `productVendor` varchar(25) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `quantityInStock` int(11) NOT NULL,
  `buyPrice` int(11) NOT NULL,
  `MSRP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES
('B7N3K8', 'Ducati', 'Motorcycles', '1:10', 'Motorcycle Madness', 'A detailed replica of the Italian motorcycle brand', 35, 110, 150),
('G5S6L7', 'Titanic', 'Ships', '1:150', 'Historical Ships', 'A wooden model of the tragic ship that sank in 1912', 25, 190, 230),
('K4F8G6', 'Airbus A380', 'Planes', '1:200', 'Sky High Models', 'A impressive model of the world\'s largest passenger plane', 40, 130, 190),
('L9G7F3', 'Boeing 747', 'Planes', '1:200', 'Sky High Models', 'A realistic model of the world\'s most popular passenger plane', 50, 120, 180),
('M7K3F6', 'Starry Night', 'Art', 'N/A', 'Art Lovers', 'A reproduction of the famous painting by Vincent Van Gogh', 10, 500, 600),
('N8L2G5', 'Pride and Prejudice', 'Books', 'N/A', 'Penguin Classics', 'The timeless novel by Jane Austen', 120, 10, 15),
('P5D8Q6', 'Hogwarts Express', 'Trains', '1:87', 'Magical Trains', 'A magical train set inspired by the Harry Potter series', 20, 200, 250),
('Q9P4H6', 'Monopoly', 'Games', 'N/A', 'Hasbro', 'The classic board game of buying and selling properties', 100, 25, 35),
('R4T9M7', 'Black Pearl', 'Ships', '1:150', 'Pirate Ships', 'A wooden model of the famous pirate ship from the Pirates of the Caribbean movies', 30, 180, 220),
('S7D3F4', 'Cinderella', 'Dolls', '1:6', 'Fairytale Dolls', 'A beautiful porcelain doll dressed as the Disney princess', 80, 50, 70),
('T6R9N4', 'Orient Express', 'Trains', '1:87', 'Historical Trains', 'A elegant train set inspired by the famous European route', 15, 220, 270),
('W6G4H2', 'Flamingo', 'Birds', '1:1', 'Feather Friends', 'A pink and fluffy stuffed flamingo', 60, 20, 30),
('XJH4K2', 'Red Ferrari', 'Cars', '1:18', 'Exoto Designs', 'A stunning replica of the iconic sports car', 100, 150, 200),
('Y3H7J8', 'Green Lamborghini', 'Cars', '1:18', 'Exoto Designs', 'A sleek replica of the luxurious sports car', 90, 160, 210),
('Z8C3K5', 'Harley Davidson', 'Motorcycles', '1:10', 'Motorcycle Madness', 'A detailed replica of the classic American motorcycle', 40, 100, 140);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerNumber`),
  ADD KEY `fk_customers_employee` (`salesRepEmployeeNumber`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `fk_employee_office` (`officeCode`),
  ADD KEY `fk_employee_employee` (`reportsTo`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderNumber`,`productCode`),
  ADD KEY `fk_orderDetaisl_products` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `fk_orders_customers` (`customerNumber`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`customerNumber`,`checkNumber`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`productLine`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `fk_products_productLines` (`productLine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeNumber` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `officeCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_customers_employee` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_employee_employee` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  ADD CONSTRAINT `fk_employee_office` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `fk_orderDetails_order` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`),
  ADD CONSTRAINT `fk_orderDetaisl_products` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_customers` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_productLines` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
