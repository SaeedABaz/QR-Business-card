-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 08:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nfc`
--
CREATE DATABASE IF NOT EXISTS `nfc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nfc`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `whatsapp` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `linkedin` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `qrimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `phone`, `job`, `company`, `address`, `whatsapp`, `instagram`, `linkedin`, `facebook`, `email`, `photo`, `url`, `qrimg`) VALUES
('dfjldm', 'kfjsjf', 'sjfsjf', 'jdjfsjf', 'jdffjsj', 'jfsjfj', 'jfsjfj', 'djfdjfq', 'jdjfsjf', 'jdsjfjs', 'photo', 'url test', ''),
('saeed', '', '', '', '', '', '', '', '', '', 'photo', 'a3166748-3537-4101-bc23-6b6b3274526b', ''),
('ahmed', '4953383', 'enginerr', 'apple', 'maltepe', '4934384', 'appor', 'apporlinkedin', 'fjgdkfoaa', 'ahmed@gmail.com', 'photo', '1a09bdeb-b02b-4ee4-a8be-55dbcaa8645a', ''),
('fddd', 'fjdjdf', 'djfdjdj', 'djfdjfdj', 'djfdjfdj', 'djfdjfdjd', 'djfdjfdj', 'djfdjfdj', 'djededjs', 'dsfjeddd', 'photo', 'bfdb097d-a6c9-41ad-ae4f-263b66a1157d', ''),
('fjfjf', 'jjjj', 'ewenen', 'enren', 'enend', 'dnfdns', 'sdnfdn', 'dnsdns', 'ssdnsnd', 'sdndsnd', 'photo', '822fe0f2-e226-422c-bbcf-253e87529ce4', ''),
('dfkd', 'DKFDKD', 'IIFJDJ', 'MESNDS', 'dfkdk', 'dkfdk', 'dkkkd', 'kdskds', 'dkfdkf', 'sddsdd', 'photo', 'ac3eeae0-d71e-43d1-9616-74895f1994da', ''),
('ibrahim alroubh', '05355183863', 'software enginering', 'bluteq', 'maltepe zumrutevler', 'whatsapp', 'insta', 'linkedin', 'facebook', 'ibrahrpbh@gmail.com', 'photo', '7c6c317a-8832-4c5c-b9c1-d7268a2f5c24', ''),
('SAEED AHMED', '777777777777', 'Student', 'maltepe', 'istanbul', 'mmmmmm', 'jkhgjk./.', 'ytyrfghjk', 'kjhnmmm', 'vvvvvvv', 'photo', '78346a24-da1d-4559-9cd4-7a17ca238bf7', ''),
('ibrahim', '48548', '', '', '', '', '', '', '', '', 'photo', '0796c07e-1e2c-4551-9a5a-9e0ef25ade46', ''),
('ibrahim alroubh', 'dkfkd', 'kdfkdk', 'fkdfkf', 'dkfdk', 'dkvfdkf', 'dkfdkf', 'kffdkf', 'dkfdkf', 'dkfdskf', 'photo', 'cb9d44e1-c11e-49d1-b14c-103c6a2dd3b0', ''),
('', '', '', '', '', '', '', '', '', '', 'photo', '627fb78f-7f9e-47dc-bf3e-7747f4399622', 'user_627fb78f-7f9e-47dc-bf3e-7747f4399622.png'),
('ibrahim alroubh', 'dfdf', 'eree', 'ere', 'ere', 'wee', 'wwww', 'wwwqs', 'ssdsd', 'sds', 'photo', 'dca05b87-3a07-4f81-8868-0e997f8ddeac', 'user_dca05b87-3a07-4f81-8868-0e997f8ddeac.png'),
('ibrahim alroubh', 'dfdf', 'eree', 'ere', 'ere', 'wee', 'wwww', 'wwwqs', 'ssdsd', 'sds', 'photo', '62d67ee8-e4a2-44a0-8dee-6b7fa2e79b25', 'user_62d67ee8-e4a2-44a0-8dee-6b7fa2e79b25.png'),
('cm,fmcSMFMCFD', 'dmfmddm', 'mdfdmfmd', 'mdm', 'm', 'ls,s', ',l;ss', ',sl', ',s', 'l,ssl', 'photo', '215551df-3f7e-42c1-8429-a3f6f2641096', 'user_215551df-3f7e-42c1-8429-a3f6f2641096.png'),
('dmf,dm', 'mdfmdsd', ' sd s ', '', '', '', '', '', '', '', 'photo', 'bca14782-4073-4031-bbb2-885d7c816e35', 'user_bca14782-4073-4031-bbb2-885d7c816e35.png'),
('uhghsh', 'k,', 'k', 'k', 'k', 'j', 'j', 'jjjjk', 'kklk', 'lkl', 'photo', 'd3013ee4-f01e-446c-ad6e-3621bd530b27', 'user_d3013ee4-f01e-446c-ad6e-3621bd530b27.png'),
('nnmnm', '0000000000000', 'stufff', 'mmllmlml', 'lmllllllllllllpk', 'lkiji', 'o', 'ijimmmmk,l,', 'ijkm,l', 'njukml,', 'photo', '445525a6-ff0a-480e-b523-c616a1814166', 'user_445525a6-ff0a-480e-b523-c616a1814166.png'),
('ffjdjf', 'djfdj', 'sjdsjf', 'sdjfdsjf', 'jsfjsf', 'jsdjfdj', 'djfdsdjfd', 'jdfjsjf', 'djfsjdf', 'djfjsfj', 'photo', '19f41b7b-d8cf-44fd-b6a8-7267379eddea', 'user_19f41b7b-d8cf-44fd-b6a8-7267379eddea.png'),
('djfjd', 'jdfjdcfj', 'djfsdjfj', 'djfsjdfj', 'djfdsdj', 'djfdsdjf', 'jdfjdj', 'djfdjfd', 'dfjsj', 'djfddsj', 'photo', 'c23bbb0b-f94b-4cd8-8cf9-e7cdeb3caf99', 'user_c23bbb0b-f94b-4cd8-8cf9-e7cdeb3caf99.png'),
('dkdfkq', 'kskfdsk', 'kdfdskdk', 'kdskdks', '', '', '', '', '', '', 'photo', '3e947517-f271-4d0d-bba2-9a3b48320a60', 'user_3e947517-f271-4d0d-bba2-9a3b48320a60.png'),
('fddd', 'sdfdfd', 'sfdfd', 'sfsf', 'sdfdf', 'sdfdf', 'sfdffdd', 'sdedfrsc', 'sfwdc', 'srfsdcd', 'photo', '95f990f9-cc6e-436e-aa4a-e8d99eec0e10', 'user_95f990f9-cc6e-436e-aa4a-e8d99eec0e10.png'),
('', '', '', '', '', '', '', '', '', '', 'photo', 'f51d34da-9165-4786-a843-1f7fb62dccd3', 'user_f51d34da-9165-4786-a843-1f7fb62dccd3.png'),
('ibrahim', 'SJFDJ', 'JSDJDJ', 'djfdjfj', 'dfj', 'jfjsfjdjf', 'djfdj', 'jfdsjfjd', 'djfdsdjf', 'djfdjf', 'photo', 'aaa45a77-c67a-41e2-a84d-0a98242f6f6c', 'user_aaa45a77-c67a-41e2-a84d-0a98242f6f6c.png'),
('ghgggh', '', '', '', '', '', '', '', '', '', 'photo', 'cae9b505-4b14-426a-8698-fdd862288e18', 'user_cae9b505-4b14-426a-8698-fdd862288e18.png'),
('fhfggf', 'sdsfdd', 'sdfregreds', 'sfgfdvc', '', '', '', '', '', '', 'photo', 'af502f86-a497-4b4d-973e-91c9544e2ee1', 'user_af502f86-a497-4b4d-973e-91c9544e2ee1.png'),
('ibrahim alroubh', 'dddrff', 'sdds', 'kllljjkl', 'dfgds', 'sdds', '', '', '', '', 'photo', 'bf3864c4-2059-4ac4-a3b9-1270049a443b', 'user_bf3864c4-2059-4ac4-a3b9-1270049a443b.png'),
('ibrahim alroubh', 'dfkdfk', 'dkdfk', 'skdkfdk', 'sdksdk', 'sdkskd', 'skdskeis', 'sdisk', 'sidskd', 'sidsi', 'pers_e6651310-5630-4e40-9317-ba9438339b26.png', 'e6651310-5630-4e40-9317-ba9438339b26', 'user_e6651310-5630-4e40-9317-ba9438339b26.png'),
('SAEED AHMED', '5013438520', 'STUDENT', 'MALTEPE', 'istanbul', 'https://wa.me/qr/JIHIH6HAD3R2I1', 'HJJK', 'CTGHB', 'BGJVYJB', 'saooody-246@hotmail.com', 'pers_724bcfc2-e4f6-4a96-89c9-36d551812618.jpg', '724bcfc2-e4f6-4a96-89c9-36d551812618', 'user_724bcfc2-e4f6-4a96-89c9-36d551812618.png'),
('SAEED AHMED BA ZIBEN', '5013438520', 'Computer engineering', 'AIH Technology', 'Istanbul, Beyoglu', 'https://wa.me/qr/JIHIH6HAD3R2I1', 'https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', '190704813@st.maltepe.edu.tr', 'pers_e8937ff4-852d-4808-aadb-b135387d78a6.jpg', 'e8937ff4-852d-4808-aadb-b135387d78a6', 'user_e8937ff4-852d-4808-aadb-b135387d78a6.png'),
('SAEED AHMED', '+905013438520', 'software enginering', 'maltepe university', 'istanbul, maltepe', 'https://wa.me/qr/JIHIH6HAD3R2I1', 'https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', '190704813@st.maltepe.edu.tr', 'pers_fc380aa9-2a1e-4773-ac98-16bd25aca5a7.jpg', 'fc380aa9-2a1e-4773-ac98-16bd25aca5a7', 'user_fc380aa9-2a1e-4773-ac98-16bd25aca5a7.png'),
('SAEED AHMED', '5013438520', 'software enginering', 'kllljjkl', 'dfgds', 'https://wa.me/qr/JIHIH6HAD3R2I1', 'https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', '190704813@st.maltepe.edu.tr', 'pers_aebd2ef9-9448-4e88-8f8b-a90cca47cfbf.jpg', 'aebd2ef9-9448-4e88-8f8b-a90cca47cfbf', 'user_aebd2ef9-9448-4e88-8f8b-a90cca47cfbf.png'),
('ibrahim alroubh', 'ewdwed', 'dfs', 'wdqwdqw', '.fdgfdk', 'https://wa.me/qr/JIHIH6HAD3R2I1', 'https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', 'sa7b.10111@gmail.com', 'pers_93b55185-23e2-4331-9748-92f5c220b35b.jpg', '93b55185-23e2-4331-9748-92f5c220b35b', 'user_93b55185-23e2-4331-9748-92f5c220b35b.png'),
('ghgggh', '5013438520', 'rwe', 'fwrg', 'dfgds', 'https://wa.me/qr/JIHIH6HAD3R2I1', 'https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', '190704813@st.maltepe.edu.tr', 'pers_b6ce261f-2fa9-4fbc-ba15-c045d6b1ffed.jpg', 'b6ce261f-2fa9-4fbc-ba15-c045d6b1ffed', 'user_b6ce261f-2fa9-4fbc-ba15-c045d6b1ffed.png'),
('cccc', 'ytvu', 'vtyvty', 'vtyv', 'tyvty', 'vty', 'vtyv', 'tyv', 'yvy', 'vyv', 'pers_61179204-f9a8-4aa7-ad37-ed775be5dda2.jpg', '61179204-f9a8-4aa7-ad37-ed775be5dda2', 'user_61179204-f9a8-4aa7-ad37-ed775be5dda2.png'),
('gbgb', 'fvyt', 'vyvty', 'cvfgc', 'rfcvhbghn', 'vg', 'bhnm,mn', 'b', 'hnjmk', 'jnmk', 'pers_49c5baa9-fb00-42e4-8d78-0434cc491bb3.png', '49c5baa9-fb00-42e4-8d78-0434cc491bb3', 'user_49c5baa9-fb00-42e4-8d78-0434cc491bb3.png'),
('ngvyvtu', 'huvvyb', 'trybctfr', 'vfvygtbh', 'vybvt', 'bvyy', 'bvyb', 'vtuyb', 'vub', 'vuby', 'pers_32fda341-a9ed-431b-b5a9-e033aebe62b6.jpg', '32fda341-a9ed-431b-b5a9-e033aebe62b6', 'user_32fda341-a9ed-431b-b5a9-e033aebe62b6.png'),
('ibrahim alroubh', '434', 'opl', '[ok[', 'o[ok', '[ok', '[ok', '[ok', '[o[k', 'omm', 'pers_6454221f-3402-43a1-98f8-8395d34a2880.jpg', '6454221f-3402-43a1-98f8-8395d34a2880', 'user_6454221f-3402-43a1-98f8-8395d34a2880.png'),
('ibrahim alroubh uijoiko', 'jftghjkl', 'drtfgyhjkl', 'vbnklp', 'fyguhjiokpl', 'vghbjnkm', 'vbhjnkml', 'vghbjnkml', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', 'sdsfds', 'pers_c3b83588-8db9-42b2-9df1-2eb5c8cb2263.jpg', 'c3b83588-8db9-42b2-9df1-2eb5c8cb2263', 'user_c3b83588-8db9-42b2-9df1-2eb5c8cb2263.png'),
('miokoiju', '8999878', 'hyiuuhy', '987hihu', 'hyubnm', 'njuibnml', 'oijunmk,', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', 'ikjuiybn', 'pers_5a98ea0f-29a9-46e7-96de-61cfc9ca7363.jpg', '5a98ea0f-29a9-46e7-96de-61cfc9ca7363', 'user_5a98ea0f-29a9-46e7-96de-61cfc9ca7363.png'),
('SAEED AHMED', '5013438520', 'software enginering', 'kllljjkl', 'jkhgfds', 'hgfffffffff', 'https://www.instagram.com/_lsal_?igsh=N2x5dzN6bWZ4', 'https://www.linkedin.com/in/saeed-ahmed-654627297?', 'https://www.facebook.com/saeed.ahmed.718?mibextid=', 'sa7b.10111@gmail.com', 'pers_6d815ea4-ec9b-487f-9525-a17c85744ab5.jpg', '6d815ea4-ec9b-487f-9525-a17c85744ab5', 'user_6d815ea4-ec9b-487f-9525-a17c85744ab5.png'),
('oiuj6u', 'tvbhj', 'buyvuj', 'hbkuvjhb', 'vjhbn', 'vhjbjn', 'vyhbjkn', 'vhbkjnk', 'bhkjn', 'kjnlm', 'pers_bb30ce47-9482-487e-b608-b146aacd24f0.gif', 'bb30ce47-9482-487e-b608-b146aacd24f0', 'user_bb30ce47-9482-487e-b608-b146aacd24f0.png'),
('tggyhjukinb', 'nbyvgjnk', 'hbyjnkmmjbhj', 'bjkbhyjjkn', 'jbhjvbn', 'jkbhvn,', 'jhbjn,mk,', 'kjh bn,m', 'jh jm,k,l', 'lm;iubhjn', 'pers_46c73cc7-6127-4940-b33f-b25497898013.gif', '46c73cc7-6127-4940-b33f-b25497898013', 'user_46c73cc7-6127-4940-b33f-b25497898013.png'),
('45t54t', 'uybuiojhi', 'uinjkinuilmkoi9j', 'hiujkihujiou', 'bnjk', 'nuhnmju', 'hbnj', 'hunj', 'unhn', 'knukkm', 'pers_13f474ad-fec2-4093-82b9-41f8a207e7ec.jpg', '13f474ad-fec2-4093-82b9-41f8a207e7ec', 'user_13f474ad-fec2-4093-82b9-41f8a207e7ec.png'),
('refrrf', 'bhjbk', 'bnkml', 'bjkml', 'bnjmkl', 'bnkml', 'hbjkm', 'njmk', 'bjnmkl', 'njmk', 'pers_5cf8cb22-6114-42dd-8530-83b7350d1825.png', '5cf8cb22-6114-42dd-8530-83b7350d1825', 'user_5cf8cb22-6114-42dd-8530-83b7350d1825.png'),
('uhyjio', 'oijokol', 'kijnm,olimj', 'kol,kjui', 'lmjk', 'ijlk', 'ijj', 'lk,koj', 'iklok', 'ikolp', 'pers_292a55fb-4391-499e-ad2b-8252f7235ab7.gif', '292a55fb-4391-499e-ad2b-8252f7235ab7', 'user_292a55fb-4391-499e-ad2b-8252f7235ab7.png'),
('uuuuuuuuuuuuuij', 'iunjm', 'junik', 'kjk', 'ijuimk', 'uhnjmk', 'nujmk', 'jnumk', 'njmk', 'njmk,l', 'pers_15213493-b4c0-449f-88d5-bf183abae591.gif', '15213493-b4c0-449f-88d5-bf183abae591', 'user_15213493-b4c0-449f-88d5-bf183abae591.png'),
('uy', 'ggguu', 'hgy', 'f', 'gytf', 'gytfygt', 'gft', 'gytfgy', 'tfg', 'tfg', 'pers_10dd3e0b-e0bc-4193-b3ba-43b02a23877a.jpg', '10dd3e0b-e0bc-4193-b3ba-43b02a23877a', 'user_10dd3e0b-e0bc-4193-b3ba-43b02a23877a.png'),
('tryygtygu', 'yugbb', 'yguyug', 'tyg', 'ftyfty', 'ftf', 'yf', 't', 'y', 'tyyf', 'pers_1a48c96a-17f0-4aa5-aea5-dcfd44d1a807.gif', '1a48c96a-17f0-4aa5-aea5-dcfd44d1a807', 'user_1a48c96a-17f0-4aa5-aea5-dcfd44d1a807.png'),
('uytuhijok', 'ijou', 'ybihu', 'hygyu', 'guyg', 'buhyg', 'bt', 'gb', 'gubgyuuy', 'guygb', 'pers_e9b8e6b0-2010-4634-83aa-8361f3bdb209.png', 'e9b8e6b0-2010-4634-83aa-8361f3bdb209', 'user_e9b8e6b0-2010-4634-83aa-8361f3bdb209.png'),
('90ii9', 'j98', 'j98ij', '98', 'j9j', '9', 'ju', 'j9', 'j98', 'j9j', 'pers_aa028b0f-1373-4c45-a4e7-015506ea2b58.jpg', 'aa028b0f-1373-4c45-a4e7-015506ea2b58', 'user_aa028b0f-1373-4c45-a4e7-015506ea2b58.png'),
('byututy', 't', 'yfy', 'tf', 'yf', 'ryf', 'yt', 'frft', 'rftrtf', 'trf', 'pers_ee5681b9-611b-413b-8145-36af8866b6f4.gif', 'ee5681b9-611b-413b-8145-36af8866b6f4', 'user_ee5681b9-611b-413b-8145-36af8866b6f4.png'),
('yfcryc', 'tycvty', 'tyc', 'ytvy', 'trct', 'frct', 'rcty', 'cr', 'yrcry', 'ycr', 'pers_40cb9e59-878a-4cca-ad60-cfe3a84fe466.gif', '40cb9e59-878a-4cca-ad60-cfe3a84fe466', 'user_40cb9e59-878a-4cca-ad60-cfe3a84fe466.png'),
('uo9ijuo', '8', 'hjjuui', 'inuiu', 'uuiui', 'uuiuiu', 'uihby', 'yhbyhh', 'yib', 'yi', 'pers_498b6eaf-4134-48fc-91b5-0ae8229b326b.jpg', '498b6eaf-4134-48fc-91b5-0ae8229b326b', 'user_498b6eaf-4134-48fc-91b5-0ae8229b326b.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
