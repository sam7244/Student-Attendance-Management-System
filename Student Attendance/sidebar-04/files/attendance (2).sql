-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 06:47 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE IF NOT EXISTS `attendance_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Reg_no` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Attendance_Status` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=811 ;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `Reg_no`, `Name`, `Attendance_Status`, `course`, `Date`) VALUES
(559, '191167', 'ASHWIN B S', 'present', 'App and Software Development', '2020-07-22'),
(560, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', '2020-07-22'),
(561, '191169', 'DHARANI KUMAR M', 'present', 'App and Software Development', '2020-07-22'),
(562, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(563, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(564, '191173', 'NISHANTH', 'present', 'App and Software Development', '2020-07-22'),
(565, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(566, '191176', 'POORNESH', 'present', 'App and Software Development', '2020-07-22'),
(567, '191177', 'PRADEEP G', 'present', 'App and Software Development', '2020-07-22'),
(568, '191178', 'SACHIN', 'present', 'App and Software Development', '2020-07-22'),
(569, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', '2020-07-22'),
(570, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(571, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', '2020-07-22'),
(572, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', '2020-07-22'),
(573, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', '2020-07-22'),
(574, '191186', 'SUMANTH', 'present', 'App and Software Development', '2020-07-22'),
(575, '191187', 'SUPRIYA', 'present', 'App and Software Development', '2020-07-22'),
(576, '191188', 'TEJASWINI S', 'present', 'App and Software Development', '2020-07-22'),
(577, '191189', 'VISHNU M', 'present', 'App and Software Development', '2020-07-22'),
(578, '191190', 'VISHWITHA', 'present', 'App and Software Development', '2020-07-22'),
(579, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', '2020-07-22'),
(580, '191192', 'YASHASWINI', 'present', 'App and Software Development', '2020-07-22'),
(581, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(582, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(583, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(584, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(585, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(586, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(587, '191137', 'DEEKSHA', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(588, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(589, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(590, '191140', 'HOSBEED RAGHU AMRUTH', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(591, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(592, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(593, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(594, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(595, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(596, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(597, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(598, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(599, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(600, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(601, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(602, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(603, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(604, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(605, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(606, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(607, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(608, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(609, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(610, '191160', 'VIDHISHA H S', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(611, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(612, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(613, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(614, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(615, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(616, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(617, '191137', 'DEEKSHA', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(618, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(619, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(620, '191140', 'HOSBEED RAGHU AMRUTH', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(621, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(622, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(623, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(624, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(625, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(626, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(627, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(628, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(629, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(630, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(631, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(632, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(633, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(634, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(635, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(636, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(637, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(638, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(639, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(640, '191160', 'VIDHISHA H S', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(641, '191167', 'ASHWIN B S', 'present', 'App and Software Development', '2020-07-22'),
(642, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', '2020-07-22'),
(643, '191169', 'DHARANI KUMAR M', 'present', 'App and Software Development', '2020-07-22'),
(644, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(645, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(646, '191173', 'NISHANTH', 'absent', 'App and Software Development', '2020-07-22'),
(647, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(648, '191176', 'POORNESH', 'present', 'App and Software Development', '2020-07-22'),
(649, '191177', 'PRADEEP G', 'present', 'App and Software Development', '2020-07-22'),
(650, '191178', 'SACHIN', 'present', 'App and Software Development', '2020-07-22'),
(651, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', '2020-07-22'),
(652, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(653, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', '2020-07-22'),
(654, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', '2020-07-22'),
(655, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', '2020-07-22'),
(656, '191186', 'SUMANTH', 'present', 'App and Software Development', '2020-07-22'),
(657, '191187', 'SUPRIYA', 'present', 'App and Software Development', '2020-07-22'),
(658, '191188', 'TEJASWINI S', 'present', 'App and Software Development', '2020-07-22'),
(659, '191189', 'VISHNU M', 'present', 'App and Software Development', '2020-07-22'),
(660, '191190', 'VISHWITHA', 'present', 'App and Software Development', '2020-07-22'),
(661, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', '2020-07-22'),
(662, '191192', 'YASHASWINI', 'present', 'App and Software Development', '2020-07-22'),
(663, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(664, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(665, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(666, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(667, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(668, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(669, '191137', 'DEEKSHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(670, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(671, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(672, '191140', 'HOSBEED RAGHU AMRUTH', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(673, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(674, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(675, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(676, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(677, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(678, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(679, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(680, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(681, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(682, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(683, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(684, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(685, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(686, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(687, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(688, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(689, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(690, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(691, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', '2020-07-22'),
(692, '191160', 'VIDHISHA H S', 'absent', 'Retail and Supply Chain Management', '2020-07-22'),
(693, '191167', 'ASHWIN B S', 'present', 'App and Software Development', '2020-07-22'),
(694, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', '2020-07-22'),
(695, '191169', 'DHARANI KUMAR M', 'present', 'App and Software Development', '2020-07-22'),
(696, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(697, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(698, '191173', 'NISHANTH', 'present', 'App and Software Development', '2020-07-22'),
(699, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(700, '191176', 'POORNESH', 'present', 'App and Software Development', '2020-07-22'),
(701, '191177', 'PRADEEP G', 'present', 'App and Software Development', '2020-07-22'),
(702, '191178', 'SACHIN', 'present', 'App and Software Development', '2020-07-22'),
(703, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', '2020-07-22'),
(704, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(705, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', '2020-07-22'),
(706, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', '2020-07-22'),
(707, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', '2020-07-22'),
(708, '191186', 'SUMANTH', 'present', 'App and Software Development', '2020-07-22'),
(709, '191187', 'SUPRIYA', 'present', 'App and Software Development', '2020-07-22'),
(710, '191188', 'TEJASWINI S', 'present', 'App and Software Development', '2020-07-22'),
(711, '191189', 'VISHNU M', 'present', 'App and Software Development', '2020-07-22'),
(712, '191190', 'VISHWITHA', 'present', 'App and Software Development', '2020-07-22'),
(713, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', '2020-07-22'),
(714, '191192', 'YASHASWINI', 'present', 'App and Software Development', '2020-07-22'),
(715, '191167', 'ASHWIN B S', 'present', 'App and Software Development', '2020-07-22'),
(716, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', '2020-07-22'),
(717, '191169', 'DHARANI KUMAR M', 'present', 'App and Software Development', '2020-07-22'),
(718, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(719, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(720, '191173', 'NISHANTH', 'absent', 'App and Software Development', '2020-07-22'),
(721, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', '2020-07-22'),
(722, '191176', 'POORNESH', 'present', 'App and Software Development', '2020-07-22'),
(723, '191177', 'PRADEEP G', 'present', 'App and Software Development', '2020-07-22'),
(724, '191178', 'SACHIN', 'present', 'App and Software Development', '2020-07-22'),
(725, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', '2020-07-22'),
(726, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', '2020-07-22'),
(727, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', '2020-07-22'),
(728, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', '2020-07-22'),
(729, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', '2020-07-22'),
(730, '191186', 'SUMANTH', 'present', 'App and Software Development', '2020-07-22'),
(731, '191187', 'SUPRIYA', 'present', 'App and Software Development', '2020-07-22'),
(732, '191188', 'TEJASWINI S', 'present', 'App and Software Development', '2020-07-22'),
(733, '191189', 'VISHNU M', 'present', 'App and Software Development', '2020-07-22'),
(734, '191190', 'VISHWITHA', 'present', 'App and Software Development', '2020-07-22'),
(735, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', '2020-07-22'),
(736, '191192', 'YASHASWINI', 'present', 'App and Software Development', '2020-07-22'),
(737, '191167', 'ASHWIN B S', 'present', 'App and Software Development', '2020-07-23'),
(738, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', '2020-07-23'),
(739, '191169', 'DHARANI KUMAR M', 'absent', 'App and Software Development', '2020-07-23'),
(740, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', '2020-07-23'),
(741, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', '2020-07-23'),
(742, '191173', 'NISHANTH', 'present', 'App and Software Development', '2020-07-23'),
(743, '191174', 'NIYATHI GOWDA', 'absent', 'App and Software Development', '2020-07-23'),
(744, '191176', 'POORNESH', 'present', 'App and Software Development', '2020-07-23'),
(745, '191177', 'PRADEEP G', 'present', 'App and Software Development', '2020-07-23'),
(746, '191178', 'SACHIN', 'absent', 'App and Software Development', '2020-07-23'),
(747, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', '2020-07-23'),
(748, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', '2020-07-23'),
(749, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', '2020-07-23'),
(750, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', '2020-07-23'),
(751, '191185', 'SUKSHMA B S', 'absent', 'App and Software Development', '2020-07-23'),
(752, '191186', 'SUMANTH', 'present', 'App and Software Development', '2020-07-23'),
(753, '191187', 'SUPRIYA', 'present', 'App and Software Development', '2020-07-23'),
(754, '191188', 'TEJASWINI S', 'present', 'App and Software Development', '2020-07-23'),
(755, '191189', 'VISHNU M', 'present', 'App and Software Development', '2020-07-23'),
(756, '191190', 'VISHWITHA', 'absent', 'App and Software Development', '2020-07-23'),
(757, '191191', 'YASHASWI B M ', 'absent', 'App and Software Development', '2020-07-23'),
(758, '191192', 'YASHASWINI', 'absent', 'App and Software Development', '2020-07-23'),
(759, '191167', 'ASHWIN B S', 'absent', 'App and Software Development', '2020-07-27'),
(760, '191168', 'BHAGYASHREE K S', 'absent', 'App and Software Development', '2020-07-27'),
(761, '191169', 'DHARANI KUMAR M', 'absent', 'App and Software Development', '2020-07-27'),
(762, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', '2020-07-27'),
(763, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', '2020-07-27'),
(764, '191173', 'NISHANTH', 'present', 'App and Software Development', '2020-07-27'),
(765, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', '2020-07-27'),
(766, '191176', 'POORNESH', 'present', 'App and Software Development', '2020-07-27'),
(767, '191177', 'PRADEEP G', 'present', 'App and Software Development', '2020-07-27'),
(768, '191178', 'SACHIN', 'present', 'App and Software Development', '2020-07-27'),
(769, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', '2020-07-27'),
(770, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', '2020-07-27'),
(771, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', '2020-07-27'),
(772, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', '2020-07-27'),
(773, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', '2020-07-27'),
(774, '191186', 'SUMANTH', 'present', 'App and Software Development', '2020-07-27'),
(775, '191187', 'SUPRIYA', 'present', 'App and Software Development', '2020-07-27'),
(776, '191188', 'TEJASWINI S', 'present', 'App and Software Development', '2020-07-27'),
(777, '191189', 'VISHNU M', 'present', 'App and Software Development', '2020-07-27'),
(778, '191190', 'VISHWITHA', 'present', 'App and Software Development', '2020-07-27'),
(779, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', '2020-07-27'),
(780, '191192', 'YASHASWINI', 'present', 'App and Software Development', '2020-07-27'),
(781, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(782, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(783, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(784, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(785, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(786, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(787, '191137', 'DEEKSHA', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(788, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(789, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(790, '191140', 'HOSBEED RAGHU AMRUTH', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(791, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(792, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(793, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(794, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(795, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(796, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(797, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(798, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(799, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(800, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(801, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(802, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(803, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(804, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(805, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(806, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(807, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(808, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(809, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', '2020-07-27'),
(810, '191160', 'VIDHISHA H S', 'present', 'Retail and Supply Chain Management', '2020-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`) VALUES
(1, 'App and Software Development'),
(2, 'Retail and Supply Chain Management'),
(3, 'Digital Media and Film Making');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL,
  `file` longblob NOT NULL,
  `comments` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(256) NOT NULL,
  `faculty_email` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`, `faculty_email`, `course`) VALUES
(1, 'sammed', 'sammed@gmail.com', 'App and Software Development'),
(6, 'ashwin', 'ashwin@gmail.com', 'Retail and chain management');

-- --------------------------------------------------------

--
-- Table structure for table `filedetails`
--

CREATE TABLE IF NOT EXISTS `filedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(256) NOT NULL,
  `filename` varchar(256) NOT NULL,
  `comments` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `filedetails`
--

INSERT INTO `filedetails` (`id`, `filepath`, `filename`, `comments`, `course`, `date`) VALUES
(8, 'files/sudhiksha (1).docx', 'sudhiksha (1).docx', 'shamith and nishanth developers bro', 'App and Software Development', '2020-07-22'),
(9, 'files/dd.html', 'dd.html', 'good day', 'App and Software Development', '2020-07-23'),
(10, 'files/letter to editor.docx', 'letter to editor.docx', 'english jai', 'App and Software Development', '2020-07-27'),
(11, 'files/fomal letter.docx', 'fomal letter.docx', 'shamith and nishanth', 'Retail and Supply Chain Management', '2020-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Reg_no` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Reg_no`, `Name`, `course`) VALUES
(3, 191167, 'ASHWIN B S', 'App and Software Development'),
(4, 191168, 'BHAGYASHREE K S', 'App and Software Development'),
(5, 191169, 'DHARANI KUMAR M', 'App and Software Development'),
(7, 191171, 'HARSHITHA SHETTY', 'App and Software Development'),
(8, 191172, 'NIKHIL M C GOWDA', 'App and Software Development'),
(9, 191173, 'NISHANTH', 'App and Software Development'),
(10, 191174, 'NIYATHI GOWDA', 'App and Software Development'),
(12, 191176, 'POORNESH', 'App and Software Development'),
(13, 191177, 'PRADEEP G', 'App and Software Development'),
(15, 191179, 'SHAMITH KUMAR JAIN K P', 'App and Software Development'),
(16, 191180, 'SHILPA SHETTY', 'App and Software Development'),
(19, 191183, 'SUDHEEKSHA', 'App and Software Development'),
(20, 191184, 'SUJITH KUMAR', 'App and Software Development'),
(21, 191185, 'SUKSHMA B S', 'App and Software Development'),
(22, 191186, 'SUMANTH', 'App and Software Development'),
(23, 191187, 'SUPRIYA', 'App and Software Development'),
(24, 191188, 'TEJASWINI S', 'App and Software Development'),
(25, 191189, 'VISHNU M', 'App and Software Development'),
(26, 191190, 'VISHWITHA', 'App and Software Development'),
(27, 191191, 'YASHASWI B M ', 'App and Software Development'),
(28, 191192, 'YASHASWINI', 'App and Software Development'),
(29, 191131, 'A G DEEKSHA', 'Retail and Supply Chain Management'),
(30, 191132, 'AKHIL HR', 'Retail and Supply Chain Management'),
(31, 191133, 'ANJALI', 'Retail and Supply Chain Management'),
(32, 191134, 'ANUJITH S', 'Retail and Supply Chain Management'),
(33, 191135, 'APOORVA A', 'Retail and Supply Chain Management'),
(34, 191136, 'BLESSON THOMAS', 'Retail and Supply Chain Management'),
(35, 191137, 'DEEKSHA', 'Retail and Supply Chain Management'),
(36, 191138, 'GOWTHAMI MV', 'Retail and Supply Chain Management'),
(37, 191139, 'HARSHITHA', 'Retail and Supply Chain Management'),
(38, 191140, 'HOSBEED RAGHU AMRUTH', 'Retail and Supply Chain Management'),
(39, 191141, 'ISTARTH SS', 'Retail and Supply Chain Management'),
(40, 191142, 'JEEVAN AS', 'Retail and Supply Chain Management'),
(41, 191143, 'NAGARJUNA BT', 'Retail and Supply Chain Management'),
(42, 191144, 'NITHESH', 'Retail and Supply Chain Management'),
(43, 191145, 'PRATHIKA K Y', 'Retail and Supply Chain Management'),
(44, 191146, 'PRIYAMKA', 'Retail and Supply Chain Management'),
(45, 191147, 'RAHUL SHETTY', 'Retail and Supply Chain Management'),
(46, 191148, 'ROHAN KUMAR JAIN', 'Retail and Supply Chain Management'),
(47, 191149, 'ROHITH R', 'Retail and Supply Chain Management'),
(48, 191150, 'SADHAN T S', 'Retail and Supply Chain Management'),
(49, 191151, 'SAHIL AHMED', 'Retail and Supply Chain Management'),
(50, 191152, 'SANJANA B K', 'Retail and Supply Chain Management'),
(51, 191153, 'SANJAY KUMAR V C', 'Retail and Supply Chain Management'),
(52, 191154, 'SHILJIO VARGHESE', 'Retail and Supply Chain Management'),
(53, 191155, 'SHREESHA NARAYANA G HEGDE', 'Retail and Supply Chain Management'),
(54, 191156, 'SINCHANA K B', 'Retail and Supply Chain Management'),
(55, 191157, 'SINU', 'Retail and Supply Chain Management'),
(56, 191158, 'SWASTIK  S HEGDE', 'Retail and Supply Chain Management'),
(57, 191159, 'SWATHI B R', 'Retail and Supply Chain Management'),
(66, 191160, 'VIDHISHA H S', 'Retail and Supply Chain Management'),
(67, 89, 'samitha', 'abc'),
(68, 191176, 'test', 'cs'),
(69, 0, 'test1', 'ec'),
(70, 123, 'sandy', 'cse'),
(71, 345, 'san', 'ece'),
(72, 123, 'sandy', 'cse'),
(73, 345, 'san', 'ece'),
(74, 0, 'mia', 'bvoc'),
(75, 0, 'mia', 'bvoc'),
(76, 89, 'frnd', '3'),
(77, 0, '', ''),
(78, 89, 'frnd', '3'),
(79, 0, '', ''),
(80, 89, 'frnd', 'cc'),
(81, 89, '', ''),
(82, 89, 'frnd', 'cc'),
(83, 89, '', ''),
(85, 0, 'x', ''),
(86, 89, 'samitha', 'xxx'),
(87, 0, 'x', ''),
(88, 89, 'samitha', 'xxx'),
(89, 0, 'x', ''),
(90, 1, 'frnd', 'cc'),
(91, 0, '', ''),
(92, 89, 'samitha', 'abc'),
(93, 0, '', ''),
(94, 1, 'frnd', '3'),
(95, 1, '', ''),
(96, 89, 'cc', 'cc'),
(97, 0, 'c', ''),
(98, 1, 'samitha', '3'),
(99, 0, '', ''),
(100, 89, 'samitha', 'kk'),
(101, 0, '', ''),
(102, 0, 'frnd', 'abc'),
(103, 0, '', ''),
(104, 0, '', ''),
(105, 0, '', ''),
(106, 0, '', ''),
(107, 0, '', ''),
(108, 0, '', ''),
(109, 0, '', ''),
(125, 191111, 'sam', 'pubg'),
(126, 191122, 'ghost', 'pubg'),
(127, 157824, 'shalu', 'BBA'),
(128, 191378, 'sammy', 'WWE'),
(129, 191379, 'EC3', 'TNA'),
(130, 1911733, 'in', 'WWE'),
(131, 1911733, 'in', 'WWE');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `Teacher_Name`, `Email`, `Password`) VALUES
(1, 'sammed', 'sammed@gmail.com', 'sammed'),
(2, 'shivaraj B G', 'shivaraj@gmail.com', 'shivaraj');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
