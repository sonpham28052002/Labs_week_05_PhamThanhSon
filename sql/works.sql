-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2023 lúc 04:53 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `works`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `address_id` bigint(20) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` smallint(6) DEFAULT NULL CHECK (`country` between 0 and 271),
  `number` varchar(20) DEFAULT NULL,
  `street` varchar(150) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`address_id`, `city`, `country`, `number`, `street`, `zipcode`) VALUES
(1, 'Hanoi', 258, '123', 'Quận 1', '100000'),
(2, 'Ho Chi Minh City', 258, '456', 'Quận 2', '700000'),
(3, 'Da Nang', 258, '789', 'Quận 3', '500000'),
(4, 'Hue', 258, '1011', 'Quận 4', '400000'),
(5, 'Can Tho', 258, '1213', 'Quận 5', '200000'),
(6, 'Nha Trang', 258, '1415', 'Quận 6', '600000'),
(7, 'Hanoi', 258, '1617', 'Quận 7', '100000'),
(8, 'Hue', 258, '1819', 'Quận 8', '400000'),
(9, 'Ho Chi Minh City', 258, '2021', 'Quận 9', '700000'),
(10, 'Da Nang', 258, '2223', 'Quận 10', '500000'),
(11, 'Can Tho', 258, '2425', 'Quận 11', '200000'),
(12, 'Nha Trang', 258, '2627', 'Quận 12', '600000'),
(13, 'Hanoi', 258, '2829', 'Quận Binh Thanh', '100000'),
(14, 'Hue', 258, '3031', 'Quận Tan Binh', '400000'),
(15, 'Ho Chi Minh City', 258, '3233', 'Quận Go Vap', '700000'),
(16, 'Da Nang', 258, '3435', 'Quận Phu Nhuan', '500000'),
(17, 'Can Tho', 258, '3637', 'Quận Thu Duc', '200000'),
(18, 'Nha Trang', 258, '3839', 'Quận Tan Phu', '600000'),
(19, 'Hanoi', 258, '4041', 'Quận Binh Tan', '100000'),
(20, 'Ho Chi Minh City', 258, '4243', 'Quận Cu Chi', '700000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` bigint(20) NOT NULL,
  `dod` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `dod`, `email`, `full_name`, `phone`, `address_id`) VALUES
(1, '2002-05-28', 'sonpham28052002@gmail.com', 'Phạm Thanh Sơn', '0346676956', 2),
(2, '2000-03-15', 'nguyenhong2000@gmail.com', 'Nguyễn Văn Hồng', '0123456789', 3),
(3, '1995-11-20', 'tranminh1995@gmail.com', 'Trần Minh', '0987654321', 4),
(4, '1988-07-03', 'lethithu1988@gmail.com', 'Lê Thị Thu', '0777000000', 5),
(5, '1999-01-12', 'nguyenduc1999@gmail.com', 'Nguyễn Đức', '0333999900', 6),
(6, '1990-09-28', 'hoanglinh1990@gmail.com', 'Hoàng Linh', '0666777888', 7),
(7, '2001-04-06', 'phanthanh2001@gmail.com', 'Phan Thanh', '0988123456', 8),
(8, '1997-08-17', 'vulinh1997@gmail.com', 'Vũ Linh', '0555666777', 9),
(9, '1985-12-10', 'truongthanh1985@gmail.com', 'Trương Thanh', '0912345678', 10),
(10, '1998-06-25', 'phamminh1998@gmail.com', 'Phạm Minh', '0333222111', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `candidate_skill`
--

CREATE TABLE `candidate_skill` (
  `skill_level` varchar(4) DEFAULT NULL,
  `more_infos` varchar(1000) DEFAULT NULL,
  `skill_id` bigint(20) NOT NULL,
  `candidate_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `candidate_skill`
--

INSERT INTO `candidate_skill` (`skill_level`, `more_infos`, `skill_id`, `candidate_id`) VALUES
('4', 'có kinh nghiệm lập trình java, spring, html, js', 1, 1),
('3', 'Kỹ năng lập trình Python', 11, 1),
('5', 'Kỹ năng lập trình C++ cao cấp', 2, 2),
('4', 'Quản lý cơ sở dữ liệu MongoDB', 12, 2),
('3', 'Chuyên sâu trong phát triển web với HTML/CSS', 3, 3),
('3', 'Phát triển ứng dụng web bằng Vue.js', 13, 3),
('4', 'Kinh nghiệm với JavaScript và các thư viện liên quan', 4, 4),
('4', 'Phát triển ứng dụng iOS', 14, 4),
('5', 'Thành thạo trong SQL và quản lý cơ sở dữ liệu', 5, 5),
('3', 'Kiểm thử hiệu suất phần mềm', 15, 5),
('3', 'Kỹ năng kiểm thử tự động phần mềm', 6, 6),
('5', 'Kiến thức về Deep Learning', 16, 6),
('5', 'Kiến thức về Machine Learning và trí tuệ nhân tạo', 7, 7),
('4', 'Kỹ năng khai thác dữ liệu', 17, 7),
('4', 'Phát triển ứng dụng Android', 8, 8),
('5', 'Kỹ năng bảo mật và hack đạo đức', 18, 8),
('3', 'Kiểm thử phần mềm thủ công', 9, 9),
('3', 'Quản lý dự án theo phương pháp Agile Scrum', 19, 9),
('4', 'Kỹ năng phát triển ứng dụng web bằng React.js', 10, 10),
('4', 'Kỹ năng sử dụng Docker cho việc triển khai ứng dụng', 20, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `comp_id` bigint(20) NOT NULL,
  `about` varchar(2000) DEFAULT NULL,
  `comp_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `web_url` varchar(255) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`comp_id`, `about`, `comp_name`, `email`, `phone`, `web_url`, `address_id`) VALUES
(1, 'Một công ty phần mềm hàng đầu tại Việt Nam', 'FPT Software', 'fptsoftware@gmail.com', '0123456789', 'fptsoftware.com', 11),
(2, 'Chuyên cung cấp giải pháp phần mềm cho các ngành công nghiệp', 'TMA Solutions', 'tmasolutions@gmail.com', '0987654321', 'tmasolutions.com', 12),
(3, 'Xây dựng các ứng dụng di động và web', 'Luxoft Vietnam', 'luxoftvietnam@gmail.com', '0765432109', 'luxoftvietnam.com', 13),
(4, 'Phát triển phần mềm chất lượng cao', 'KMS Technology', 'kmstechnology@gmail.com', '0333222111', 'kmstechnology.com', 14),
(5, 'Cung cấp dịch vụ phát triển ứng dụng', 'Axon Active', 'axonactive@gmail.com', '0777000000', 'axonactive.com', 15),
(6, 'Chuyên về kiểm thử phần mềm', 'LogiGear', 'logigear@gmail.com', '0999888777', 'logigear.com', 16),
(7, 'Giải pháp phát triển phần mềm toàn diện', 'Global CyberSoft (GCS)', 'gcs@gmail.com', '0888777666', 'gcs.com', 17),
(8, 'Cung cấp dịch vụ phát triển ứng dụng di động', 'NashTech', 'nashtech@gmail.com', '0777999222', 'nashtech.com', 18),
(9, 'Chuyên về phát triển phần mềm tùy chỉnh', 'Harvey Nash Vietnam', 'harveynash@gmail.com', '0666777888', 'harveynash.com', 19),
(10, 'Chuyên cung cấp dịch vụ phát triển sản phẩm phần mềm', 'Orient Software', 'orientsoftware@gmail.com', '0555999888', 'orientsoftware.com', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `experience`
--

CREATE TABLE `experience` (
  `experience_id` bigint(20) NOT NULL,
  `company_name` varchar(120) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `work_desc` varchar(400) DEFAULT NULL,
  `candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `experience`
--

INSERT INTO `experience` (`experience_id`, `company_name`, `from_date`, `role`, `to_date`, `work_desc`, `candidate_id`) VALUES
(1, 'ABC Tech', '2018-03-15', 'Software Developer', '2021-06-20', 'Worked on Java and web development projects.', 1),
(2, 'XYZ Solutions', '2017-06-10', 'C++ Programmer', '2019-09-30', 'Developed C++ applications for clients.', 2),
(3, 'WebDev Inc.', '2015-09-01', 'Web Developer', '2020-12-15', 'Designed and implemented web applications using HTML/CSS and JavaScript.', 3),
(4, 'Tech Solutions Group', '2010-08-25', 'Project Manager', '2017-11-30', 'Managed software development projects and teams.', 4),
(5, 'QA Testers Inc.', '2018-02-10', 'Quality Assurance Analyst', '2021-04-25', 'Conducted manual testing and reported issues.', 5),
(6, 'Mobile Apps Ltd.', '2010-01-05', 'Mobile App Developer', '2016-12-30', 'Developed Android and iOS applications.', 6),
(7, 'AI Innovations', '2018-06-20', 'Machine Learning Engineer', '2021-07-10', 'Worked on machine learning and data analysis projects.', 7),
(8, 'Data Insight Corp', '2015-03-10', 'Data Analyst', '2020-09-30', 'Analyzed data and created reports for clients.', 8),
(9, 'CyberSec Pro', '2007-07-15', 'Ethical Hacker', '2012-12-31', 'Performed ethical hacking and security assessments.', 9),
(10, 'AgileSoft Inc.', '2016-09-15', 'Scrum Master', '2021-03-20', 'Led Agile Scrum teams and managed projects.', 10),
(11, 'WebTech Solutions', '2019-04-10', 'Front-End Developer', '2022-07-25', 'Developed user interfaces using React.js and Angular.', 1),
(12, 'DataCo Enterprises', '2016-07-01', 'Database Administrator', '2018-12-15', 'Managed and optimized SQL databases.', 2),
(13, 'TechStack Inc.', '2018-10-05', 'Full-Stack Developer', '2021-03-30', 'Worked on end-to-end web development projects.', 3),
(14, 'SoftwareTech Solutions', '2014-05-15', 'Software Engineer', '2019-09-10', 'Developed desktop applications using Java.', 4),
(15, 'TestAutomation Inc.', '2019-03-01', 'Automation Tester', '2022-06-30', 'Created and maintained automated test scripts.', 5),
(16, 'iOS Apps Ltd.', '2015-08-10', 'iOS App Developer', '2019-12-20', 'Developed iOS applications for various clients.', 6),
(17, 'AI Research Labs', '2017-07-20', 'AI Researcher', '2021-09-10', 'Conducted research in deep learning and AI algorithms.', 7),
(18, 'Data Insights Ltd.', '2014-03-10', 'Data Scientist', '2020-05-30', 'Performed data analysis and predictive modeling.', 8),
(19, 'Cyber Defense Inc.', '2010-09-05', 'Security Consultant', '2015-12-31', 'Provided cybersecurity consulting and audits.', 9),
(20, 'DevOps Innovations', '2018-11-15', 'DevOps Engineer', '2021-05-25', 'Implemented Docker for containerization and CI/CD pipelines.', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job`
--

CREATE TABLE `job` (
  `job_id` bigint(20) NOT NULL,
  `job_desc` varchar(4000) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `company` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `job`
--

INSERT INTO `job` (`job_id`, `job_desc`, `job_name`, `company`) VALUES
(1, 'biết về java core, spring data, hibernate', 'lập trình java spring boots', 5),
(2, 'Kinh nghiệm phát triển ứng dụng di động', 'Lập trình viên di động', 3),
(3, 'Lập trình ứng dụng web', 'Phát triển viên web', 7),
(4, 'Kiến thức về trí tuệ nhân tạo', 'Chuyên viên AI', 2),
(5, 'Phát triển ứng dụng Android', 'Lập trình viên Android', 1),
(6, 'Chuyên về kiểm thử phần mềm', 'Chuyên viên kiểm thử phần mềm', 4),
(7, 'Phát triển sản phẩm phần mềm', 'Phát triển sản phẩm phần mềm', 10),
(8, 'Thiết kế ứng dụng di động', 'Thiết kế viên ứng dụng di động', 5),
(9, 'Phát triển phần mềm tùy chỉnh', 'Phát triển viên phần mềm tùy chỉnh', 9),
(10, 'Chuyên về giải pháp phát triển phần mềm', 'Chuyên gia phát triển phần mềm', 6),
(11, 'Phát triển ứng dụng web', 'Lập trình viên web', 8),
(12, 'Chuyên về kiểm thử phần mềm', 'Chuyên viên kiểm thử phần mềm', 5),
(13, 'Phát triển ứng dụng di động', 'Lập trình viên di động', 3),
(14, 'Xây dựng ứng dụng web', 'Phát triển viên web', 7),
(15, 'Chuyên viên trí tuệ nhân tạo', 'Chuyên viên AI', 2),
(16, 'Thiết kế ứng dụng di động', 'Thiết kế viên ứng dụng di động', 6),
(17, 'Chuyên về phát triển sản phẩm phần mềm', 'Chuyên gia phát triển phần mềm', 4),
(18, 'Lập trình viên phần mềm tùy chỉnh', 'Lập trình viên phần mềm tùy chỉnh', 10),
(19, 'Phát triển giải pháp phần mềm', 'Phát triển viên giải pháp phần mềm', 1),
(20, 'Chuyên về phát triển phần mềm tự động', 'Chuyên viên phát triển phần mềm tự động', 9),
(21, 'this is project reactnative week 03', 'ÂS sdAÁ', 1),
(22, 'this is project reactnative week 03', 'ÂS sdAÁ', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `job_id` bigint(20) NOT NULL,
  `job_desc` varchar(4000) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `company` bigint(20) DEFAULT NULL,
  `job_skills_job_id` bigint(20) DEFAULT NULL,
  `job_skills_skill_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_skill`
--

CREATE TABLE `job_skill` (
  `skill_level` varchar(4) DEFAULT NULL,
  `more_infos` varchar(1000) DEFAULT NULL,
  `job_id` bigint(20) NOT NULL,
  `skill_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `job_skill`
--

INSERT INTO `job_skill` (`skill_level`, `more_infos`, `job_id`, `skill_id`) VALUES
('3', 'có kinh nghiêm lập trình java trên 3 năm', 1, 1),
('4', 'lập trình frontend với reactJS', 1, 10),
('3', 'có kinh nghiệm lập trình app andriod với java', 2, 1),
('3', 'có kinh nghiệm lập trình app andriod', 2, 8),
('4', 'có kinh nghiệm lập trình HTML/CSS', 3, 3),
('4', 'có kinh nghiệm lập trình FrondEnd với js', 3, 4),
('4', 'có kinh nghiệm lập trình FrondEnd với reacJS', 3, 10),
('3', 'có kinh nghiệm lập trình FrondEnd với vueJS', 3, 13),
('3', 'từng lập trình với Machine Learning', 4, 7),
('2', 'có kình nghiệm lập trình python', 4, 11),
('3', 'có kinh nghiệm lập trinh java', 5, 1),
('3', 'có kinh nghiệm về Automated Testing', 6, 6),
('2', 'có kinh nghiệm về Load Testing', 6, 15),
('4', 'Có kinh nghiệm lập quy trình phát triền', 7, 19),
('3', 'biết thiết kế và lập trình ứng dụng di động java', 8, 1),
('3', 'có kinh nghiệm C++', 9, 2),
('2', 'có kinh nghiệm tạo quy trình phát triền phần mềm', 10, 19),
('3', 'phát triền web với js', 11, 4),
('3', 'có kinh nghiệm về Automated Testing', 12, 6),
('2', 'có kinh nghiệm về Load Testing', 12, 15),
('3', 'làm việc với Docker', 14, 20),
('3', 'có kinh nghiệm về Machine Learning', 15, 7),
('1', 'Biết python cơ bản', 15, 11),
('4', 'có kinh nghiệp lập trình ứng dụng di động với java', 16, 1),
('4', 'biết thiết kế và lập trình ứng dụng di động React Native', 16, 4),
('4', 'biết thiết kế và lập trình ứng dụng di động swift', 16, 14),
('5', 'có kinh nghiệm về tấn công phần mềm', 17, 18),
('6', 'có kinh nghiệm lập trình C++', 18, 2),
('7', 'có kinh nghiêm phòng chống tấn công mạng ', 19, 18),
('5', 'có kinh nghiệm về Machine Learning', 20, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `skill`
--

CREATE TABLE `skill` (
  `skill_id` bigint(20) NOT NULL,
  `skill_desc` varchar(300) DEFAULT NULL,
  `skill_name` varchar(150) DEFAULT NULL,
  `skill_type` tinyint(4) DEFAULT NULL CHECK (`skill_type` between 0 and 2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `skill`
--

INSERT INTO `skill` (`skill_id`, `skill_desc`, `skill_name`, `skill_type`) VALUES
(1, 'Thành thạo trong lập trình Java', 'Java', 1),
(2, 'Kỹ năng lập trình C++ cao cấp', 'C++', 1),
(3, 'Chuyên sâu trong phát triển web với HTML/CSS', 'HTML/CSS', 1),
(4, 'Kinh nghiệm với JavaScript và các thư viện liên quan', 'JavaScript', 1),
(5, 'Thành thạo trong SQL và quản lý cơ sở dữ liệu', 'SQL', 1),
(6, 'Kỹ năng kiểm thử tự động phần mềm', 'Automated Testing', 1),
(7, 'Kiến thức về Machine Learning và trí tuệ nhân tạo', 'Machine Learning', 1),
(8, 'Phát triển ứng dụng Android', 'Android Development', 1),
(9, 'Kiểm thử phần mềm thủ công', 'Manual Testing', 1),
(10, 'Kỹ năng phát triển ứng dụng web bằng React.js', 'React.js', 1),
(11, 'Kỹ năng lập trình Python', 'Python', 1),
(12, 'Quản lý cơ sở dữ liệu MongoDB', 'MongoDB', 1),
(13, 'Phát triển ứng dụng web bằng Vue.js', 'Vue.js', 1),
(14, 'Phát triển ứng dụng iOS', 'iOS Development', 1),
(15, 'Kiểm thử hiệu suất phần mềm', 'Load Testing', 1),
(16, 'Kiến thức về Deep Learning', 'Deep Learning', 1),
(17, 'Kỹ năng khai thác dữ liệu', 'Data Mining', 1),
(18, 'Kỹ năng bảo mật và hack đạo đức', 'Ethical Hacking', 1),
(19, 'Quản lý dự án theo phương pháp Agile Scrum', 'Agile Scrum', 1),
(20, 'Kỹ năng sử dụng Docker cho việc triển khai ứng dụng', 'Docker', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Chỉ mục cho bảng `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`),
  ADD UNIQUE KEY `UK_s9v7om164f5xwmloeu9kycahl` (`address_id`);

--
-- Chỉ mục cho bảng `candidate_skill`
--
ALTER TABLE `candidate_skill`
  ADD PRIMARY KEY (`candidate_id`,`skill_id`),
  ADD KEY `FKb7cxhiqhcah7c20a2cdlvr1f8` (`skill_id`);

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`comp_id`),
  ADD UNIQUE KEY `UK_h2rewspdf9bnwpbt1nauwiaww` (`address_id`);

--
-- Chỉ mục cho bảng `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `FKsmv65lqovssalk12ti3cqkpjf` (`candidate_id`);

--
-- Chỉ mục cho bảng `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `FKbaqlvluu78phmo9ld89um7wnm` (`company`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `FKhg3gsxkoltd0ws7p9nbed06ea` (`company`),
  ADD KEY `FKkc0drisdmourxgmxxp893pb9c` (`job_skills_job_id`,`job_skills_skill_id`);

--
-- Chỉ mục cho bảng `job_skill`
--
ALTER TABLE `job_skill`
  ADD PRIMARY KEY (`job_id`,`skill_id`),
  ADD KEY `FKj33qbbf3vk1lvhqpcosnh54u1` (`skill_id`);

--
-- Chỉ mục cho bảng `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `address_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `company`
--
ALTER TABLE `company`
  MODIFY `comp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `experience`
--
ALTER TABLE `experience`
  MODIFY `experience_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `job`
--
ALTER TABLE `job`
  MODIFY `job_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `FK5q1ksqleh983c18yssyo2dn8l` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Các ràng buộc cho bảng `candidate_skill`
--
ALTER TABLE `candidate_skill`
  ADD CONSTRAINT `FKb7cxhiqhcah7c20a2cdlvr1f8` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`),
  ADD CONSTRAINT `FKijjf42p0sh2c2na28g5aalx2p` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`);

--
-- Các ràng buộc cho bảng `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `FKgfifm4874ce6mecwj54wdb3ma` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Các ràng buộc cho bảng `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `FKsmv65lqovssalk12ti3cqkpjf` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`);

--
-- Các ràng buộc cho bảng `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FKbaqlvluu78phmo9ld89um7wnm` FOREIGN KEY (`company`) REFERENCES `company` (`comp_id`);

--
-- Các ràng buộc cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `FKhg3gsxkoltd0ws7p9nbed06ea` FOREIGN KEY (`company`) REFERENCES `company` (`comp_id`),
  ADD CONSTRAINT `FKkc0drisdmourxgmxxp893pb9c` FOREIGN KEY (`job_skills_job_id`,`job_skills_skill_id`) REFERENCES `job_skill` (`job_id`, `skill_id`);

--
-- Các ràng buộc cho bảng `job_skill`
--
ALTER TABLE `job_skill`
  ADD CONSTRAINT `FK9ix4wg520ii2gu2felxdhdup6` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `FKj33qbbf3vk1lvhqpcosnh54u1` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
