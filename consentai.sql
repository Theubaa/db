-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 13, 2025 at 07:28 AM
-- Server version: 8.0.42-0ubuntu0.24.04.1
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consentai`
--

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voice_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voice_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voice_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sadtalker',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `runpod_sadtalker_request` json DEFAULT NULL,
  `runpod_sadtalker_response` json DEFAULT NULL,
  `runpod_metadata` json DEFAULT NULL,
  `runpod_job_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `runpod_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_status_check` timestamp NULL DEFAULT NULL,
  `output_video_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sadtalker',
  `external_avatar_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_metadata` json DEFAULT NULL,
  `last_synced_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `avatars`
--

INSERT INTO `avatars` (`id`, `avatar_name`, `photo_1`, `photo_2`, `photo_3`, `voice_1`, `voice_2`, `voice_3`, `video_1`, `video_2`, `video_3`, `user_id`, `client_id`, `is_default`, `method`, `video_service`, `created_at`, `updated_at`, `runpod_sadtalker_request`, `runpod_sadtalker_response`, `runpod_metadata`, `runpod_job_id`, `runpod_status`, `last_status_check`, `output_video_path`, `source`, `external_avatar_id`, `external_metadata`, `last_synced_at`) VALUES
(8, 'Dr Paul Works', 'avatars/photos/QXBvdM2t4I4WUCDeB4TMixQubUC1ymDMXaP6fILs.jpg', NULL, NULL, 'avatars/voices/A1mIA6XQBuuXHeA7GjGmwuQvQc103Ve3WXVM1s7F.mp3', NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'Photo + Audio Method', 'sadtalker', '2025-06-19 12:22:08', '2025-06-19 12:25:38', NULL, NULL, '{\"job_id\": \"dc15d015-27e4-4584-a518-9e9b86feb1a6-u2\", \"status\": \"COMPLETED\", \"workerId\": \"0dssgxrq2kjq91\", \"delayTime\": 10939, \"last_check\": \"2025-06-19T12:24:11.554769Z\", \"last_error\": null, \"check_count\": 2, \"processed_at\": \"2025-06-19T12:25:38.584158Z\", \"executionTime\": 82994, \"original_size\": 1631300, \"converted_size\": 922851, \"video_processed\": true}', 'dc15d015-27e4-4584-a518-9e9b86feb1a6-u2', 'COMPLETED', NULL, 'http://consentai.gaincafe.com/storage/avatars/videos/generated_8_2025_06_19_122538.webm', 'sadtalker', NULL, NULL, NULL),
(10, 'Yoyo Avatar', 'avatars/photos/L7DXZQ1GHgxhJaXAqOF1Yv1GLiNZ4qvFHJfcdXol.jpg', NULL, NULL, 'avatars/voices/MA00tZnes6VlE2aO9vaHYFlULVFmgrG1zhdnEA5b.mp3', NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 'Photo + Audio Method', 'sadtalker', '2025-06-19 14:03:46', '2025-06-19 14:07:18', NULL, NULL, '{\"job_id\": \"299b0486-1ce6-41b5-abf2-929b3113e9b2-u2\", \"status\": \"COMPLETED\", \"workerId\": \"92jmthkh0mqg5l\", \"delayTime\": 17372, \"last_check\": \"2025-06-19T14:05:47.697657Z\", \"last_error\": null, \"check_count\": 2, \"processed_at\": \"2025-06-19T14:07:18.350862Z\", \"executionTime\": 64336, \"original_size\": 1603307, \"converted_size\": 873387, \"video_processed\": true}', '299b0486-1ce6-41b5-abf2-929b3113e9b2-u2', 'COMPLETED', NULL, 'http://consentai.gaincafe.com/storage/avatars/videos/generated_10_2025_06_19_140718.webm', 'sadtalker', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `plan`, `status`, `organization`, `website`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'abhay', 'test123@gmail.com', 'Free', 'active', NULL, NULL, NULL, '2025-06-04 10:49:53', '2025-06-04 10:49:53'),
(3, 'test', 'test1@gmail.com', 'Premium', 'active', 'gainca', 'gain.com', '8888888888', '2025-06-04 11:27:42', '2025-06-04 11:27:42'),
(4, 'test22', 'test22@gmail.com', NULL, 'active', NULL, NULL, NULL, '2025-06-04 11:51:39', '2025-06-04 11:51:39'),
(5, 'Test', 'test@test.com', NULL, 'active', NULL, NULL, NULL, '2025-06-05 08:49:50', '2025-06-05 08:49:50'),
(6, 'saurabh', 'ray@gaincafe.com', 'Free', 'active', 'some', NULL, NULL, '2025-06-16 16:42:41', '2025-06-16 16:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `consent_forms`
--

CREATE TABLE `consent_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `avatar_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generated_script` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `step` tinyint NOT NULL DEFAULT '1',
  `gpt_response` json DEFAULT NULL,
  `video_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_generation_response` json DEFAULT NULL,
  `video_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consent_forms`
--

INSERT INTO `consent_forms` (`id`, `user_id`, `avatar_id`, `title`, `pdf_path`, `generated_script`, `status`, `step`, `gpt_response`, `video_id`, `created_at`, `updated_at`, `video_generation_response`, `video_path`) VALUES
(13, 2, 14, 'ddf', 'consent-forms/mmQCAnmVyO2kdG4e1fbLvbTIccrf1Ad4vCC71H4Z.pdf', 'Hey there! Welcome to our quick, friendly guide on how to navigate our system. Whether you\'re adding data, verifying it, or just here to understand how it all works, you\'ve come to the right place. Let\'s dive in, shall we?\n\n**For the Data Adders and Verifiers:**\n\nFirst things first, you need to log in:\n- Pop over to our website at [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\n- Punch in your username and password as given by our department.\n- Once you\'re in, you\'ll land on a page tailored just for you, based on what you\'re here to do.\n\n**Adding a College or Course? Here’s how:**\n- Hit the College or Course tab.\n- Select \'Add College\' or \'Add Course Detail\'. Fill in the blanks with the college name, type, AISHE code, or course details as required.\n- For colleges, don’t forget to type in the complete address before hitting \'Save\'. For courses, choose the academic session, college, faculty, and tick the box for any honors subjects you\'re adding.\n\n**Approving College or Course? A bit like this:**\n- Make sure you\'re logged in with your checker credentials.\n- Navigate to the Course tab, select \'Approve College\' or \'Approve Course Detail\'.\n- Filter by status or academic session, then hit \'Search\'.\n- Review the list, tick the boxes for the ones you’re giving the green light, and press \'Approve\'. Spot an error? No worries, just correct it first with your UNMKR login.\n\n**Adding Students? Easy-peasy:**\n- Under your UNMKR login, click the Student tab.\n- Choose \'Upload Student Detail\' and select your prepared excel sheet.\n- Hit \'Upload Excel\'. We\'ll show you what\'s good and what\'s not. Errors? They\'ll be listed for you to fix and re-upload.\n\n**Approving Students? Just like this:**\n- With your UNCHK credentials, head to the Student tab.\n- Select \'Update Student Detail\', choose the college, and you\'ll see the list of students awaiting your approval.\n- Tick, approve, or delete as needed. Found a mistake? Delete, correct, and re-upload via UNMKR login.\n\n**For the Department Operator handling Payments:**\n- Log in with your DPTOPT credentials and click on the Payment tab.\n- Choose \'Approve Student For Payment\', select your university, and hit \'Get\'.\n- You\'ll see a list of verified students. Tick the ones you\'re approving for payment, and off it goes into the payment process.\n\n**For Students Registering:**\n- Head to [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx) to get started.\n- Enter your university registration number, father\'s name, and marksheet number.\n- If everything looks good, verify your Aadhaar, mobile, and email through the OTP process.\n- Fill in your bank and residence details.\n- Before you hit \'Register\', double-check your Aadhaar, mobile, and email verifications are ticked off.\n\n**A little note before we wrap up:** Make sure your details are spot-on before finalizing anything. This will save you the hassle of backtracking later.\n\nAnd that’s a wrap! Thanks for sticking with us through this guide. Whether you’re adding, verifying, or registering, we hope this makes your journey smoother. Catch you next time!', 'sent', 1, '{\"id\": \"chatcmpl-BdGIvager4Cp1EUij2iTtYm3dbUQt\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2152, \"prompt_tokens\": 1407, \"completion_tokens\": 745, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! Welcome to our quick, friendly guide on how to navigate our system. Whether you\'re adding data, verifying it, or just here to understand how it all works, you\'ve come to the right place. Let\'s dive in, shall we?\\n\\n**For the Data Adders and Verifiers:**\\n\\nFirst things first, you need to log in:\\n- Pop over to our website at [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\\n- Punch in your username and password as given by our department.\\n- Once you\'re in, you\'ll land on a page tailored just for you, based on what you\'re here to do.\\n\\n**Adding a College or Course? Here’s how:**\\n- Hit the College or Course tab.\\n- Select \'Add College\' or \'Add Course Detail\'. Fill in the blanks with the college name, type, AISHE code, or course details as required.\\n- For colleges, don’t forget to type in the complete address before hitting \'Save\'. For courses, choose the academic session, college, faculty, and tick the box for any honors subjects you\'re adding.\\n\\n**Approving College or Course? A bit like this:**\\n- Make sure you\'re logged in with your checker credentials.\\n- Navigate to the Course tab, select \'Approve College\' or \'Approve Course Detail\'.\\n- Filter by status or academic session, then hit \'Search\'.\\n- Review the list, tick the boxes for the ones you’re giving the green light, and press \'Approve\'. Spot an error? No worries, just correct it first with your UNMKR login.\\n\\n**Adding Students? Easy-peasy:**\\n- Under your UNMKR login, click the Student tab.\\n- Choose \'Upload Student Detail\' and select your prepared excel sheet.\\n- Hit \'Upload Excel\'. We\'ll show you what\'s good and what\'s not. Errors? They\'ll be listed for you to fix and re-upload.\\n\\n**Approving Students? Just like this:**\\n- With your UNCHK credentials, head to the Student tab.\\n- Select \'Update Student Detail\', choose the college, and you\'ll see the list of students awaiting your approval.\\n- Tick, approve, or delete as needed. Found a mistake? Delete, correct, and re-upload via UNMKR login.\\n\\n**For the Department Operator handling Payments:**\\n- Log in with your DPTOPT credentials and click on the Payment tab.\\n- Choose \'Approve Student For Payment\', select your university, and hit \'Get\'.\\n- You\'ll see a list of verified students. Tick the ones you\'re approving for payment, and off it goes into the payment process.\\n\\n**For Students Registering:**\\n- Head to [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx) to get started.\\n- Enter your university registration number, father\'s name, and marksheet number.\\n- If everything looks good, verify your Aadhaar, mobile, and email through the OTP process.\\n- Fill in your bank and residence details.\\n- Before you hit \'Register\', double-check your Aadhaar, mobile, and email verifications are ticked off.\\n\\n**A little note before we wrap up:** Make sure your details are spot-on before finalizing anything. This will save you the hassle of backtracking later.\\n\\nAnd that’s a wrap! Thanks for sticking with us through this guide. Whether you’re adding, verifying, or registering, we hope this makes your journey smoother. Catch you next time!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1748697165, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-05-31 13:12:44', '2025-06-11 12:08:23', NULL, NULL),
(33, 2, 14, 'kkk', 'consent-forms/EMKamlF72jjOhuEAvH0qV81tR1SqO7d8FZgDL3UA.pdf', 'Hey there! Today, we\'re diving into something a bit different but super important – a consent form. But don\'t worry, I\'ll keep it light and easy to understand. This isn\'t your typical document filled with legal jargon. Instead, think of it as a friendly chat where I walk you through what agreeing to this form means for you. Ready? Let’s get started.\n\n---\n\nFirst off, let\'s talk about what this form is all about. It\'s basically a way for us to agree on how things are going to go down. By signing off on this, you\'re saying, \"Yep, I\'m good to go\" with everything we\'re about to discuss. So, let\'s break it down:\n\n1. **What You\'re Agreeing To**:\n   - You\'re giving the green light for us to do some specific things. This might include participating in an activity, using your information in a certain way, or anything else outlined here. Think of it as giving us a thumbs up to proceed.\n\n2. **The Benefits**:\n   - We\'ll chat about what\'s in it for you. This could be anything from the cool experiences you\'ll gain, the knowledge you\'ll walk away with, or other perks of jumping on board. We want to make sure you know exactly what goodies are waiting for you.\n\n3. **Potential Risks**:\n   - It\'s not just about the good stuff; we\'ve got to be real about the risks too. If there are any, we\'ll lay them out clearly. It\'s like checking the weather before a hike – we want you to be fully prepared for what\'s ahead.\n\n4. **Your Privacy**:\n   - Super important! We\'ll explain how we\'ll protect your information and who gets to see what. Your privacy is a big deal, and we treat it with the seriousness it deserves.\n\n5. **Backing Out**:\n   - Changed your mind? No problem. We\'ll tell you how you can say \"I\'m out\" if you decide this isn\'t for you anymore. No hard feelings, we promise.\n\n6. **The Fine Print**:\n   - Lastly, we\'ll cover any of those extra details you need to know – the nitty-gritty stuff that makes everything clear and above board.\n\n---\n\nSo, that\'s the gist of it! By giving your consent, you\'re saying you understand what\'s involved and you\'re cool with it. Think of it as agreeing to go on a little adventure with us, knowing exactly what to expect.\n\nIf you\'re ready to dive in, fantastic! If you have any questions or need more info, don\'t hesitate to reach out. We\'re here to make sure you feel 100% comfortable with your decision.\n\nThanks for sticking with me through this. Your understanding and trust mean the world to us, and we can\'t wait to embark on this journey together.', 'completed', 1, '{\"id\": \"chatcmpl-BdxnaU8Wz4HTly04fGkR9U8DSKotQ\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 1346, \"prompt_tokens\": 759, \"completion_tokens\": 587, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! Today, we\'re diving into something a bit different but super important – a consent form. But don\'t worry, I\'ll keep it light and easy to understand. This isn\'t your typical document filled with legal jargon. Instead, think of it as a friendly chat where I walk you through what agreeing to this form means for you. Ready? Let’s get started.\\n\\n---\\n\\nFirst off, let\'s talk about what this form is all about. It\'s basically a way for us to agree on how things are going to go down. By signing off on this, you\'re saying, \\\"Yep, I\'m good to go\\\" with everything we\'re about to discuss. So, let\'s break it down:\\n\\n1. **What You\'re Agreeing To**:\\n   - You\'re giving the green light for us to do some specific things. This might include participating in an activity, using your information in a certain way, or anything else outlined here. Think of it as giving us a thumbs up to proceed.\\n\\n2. **The Benefits**:\\n   - We\'ll chat about what\'s in it for you. This could be anything from the cool experiences you\'ll gain, the knowledge you\'ll walk away with, or other perks of jumping on board. We want to make sure you know exactly what goodies are waiting for you.\\n\\n3. **Potential Risks**:\\n   - It\'s not just about the good stuff; we\'ve got to be real about the risks too. If there are any, we\'ll lay them out clearly. It\'s like checking the weather before a hike – we want you to be fully prepared for what\'s ahead.\\n\\n4. **Your Privacy**:\\n   - Super important! We\'ll explain how we\'ll protect your information and who gets to see what. Your privacy is a big deal, and we treat it with the seriousness it deserves.\\n\\n5. **Backing Out**:\\n   - Changed your mind? No problem. We\'ll tell you how you can say \\\"I\'m out\\\" if you decide this isn\'t for you anymore. No hard feelings, we promise.\\n\\n6. **The Fine Print**:\\n   - Lastly, we\'ll cover any of those extra details you need to know – the nitty-gritty stuff that makes everything clear and above board.\\n\\n---\\n\\nSo, that\'s the gist of it! By giving your consent, you\'re saying you understand what\'s involved and you\'re cool with it. Think of it as agreeing to go on a little adventure with us, knowing exactly what to expect.\\n\\nIf you\'re ready to dive in, fantastic! If you have any questions or need more info, don\'t hesitate to reach out. We\'re here to make sure you feel 100% comfortable with your decision.\\n\\nThanks for sticking with me through this. Your understanding and trust mean the world to us, and we can\'t wait to embark on this journey together.\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1748864358, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-02 11:39:16', '2025-06-02 11:39:35', NULL, NULL),
(37, 2, 14, 'dd', 'consent-forms/4sSbHXgKmuSAnef8Teh7wKKqcwivvxNO9ZGD4Y1K.pdf', '**Hey there! Welcome to our step-by-step guide on navigating the university\'s system. Whether you\'re looking to add some data, verify it, or just get around the platform, we\'ve got you covered. So grab a cup of coffee, and let\'s dive in!**\n\n---\n\n**For our Data Adders (UNMKR) and Data Checkers (UNCHK), here\'s what you need to know:**\n\n**Logging In:**\n1. First things first, let\'s head over to our login page at [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\n2. Pop in your username and password as given by the department, depending on your role.\n3. Once you\'re successfully logged in, you\'ll land on your role-specific homepage. Easy peasy!\n\n**Adding a College (UNMKR):**\n1. Click on the \'College\' tab.\n2. Hit \'Add College\'.\n3. Fill in the college name, type (like Government or Affiliated), and the AISHE code.\n4. Don\'t forget the complete address before you save your entry.\n\n**Approving a College (UNCHK):**\n1. Log in with your checker credentials.\n2. Find the \'Course\' tab, then click \'Approve College\'.\n3. Choose \'Pending\' from the dropdown, hit \'Search\', and approve or correct as needed.\n\n**Adding Courses and Students is just as straightforward:**\n- For courses, select the session, college, and faculty, then add your courses.\n- For students, upload an Excel sheet with their details, correct any errors shown, and upload it to the database.\n\n**And for our Checkers (UNCHK), approving courses and students follows a similar vibe:**\n- Choose the session, college, and faculty for courses, or the college name for students, then approve or correct as needed.\n\n---\n\n**Department Operators, here\'s your bit on approving student payments:**\n1. Log in with your DPTOPT credentials.\n2. Click on the \'Payment\' tab, then \'Approve Student For Payment\'.\n3. Select the university, get your list, and approve the students for payment processing.\n\n---\n\n**And hey, Students! Here\'s how you get registered:**\n1. Head to our registration page at [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx).\n2. Enter your university registration number, your dad\'s name, and your marksheet number.\n3. Click \'Get Detail\', and if all looks good, proceed.\n4. You\'ll then verify your Aadhaar, mobile, and email.\n5. Finally, enter your bank and domicile details, and hit \'Register\'.\n\n**Remember, double-check your Aadhaar, mobile, and email validations before hitting that register button.**\n\n---\n\n**And there you have it! Whether you\'re adding, checking, or registering, we hope this guide makes your journey a bit smoother. Have a great day ahead!**', 'completed', 1, '{\"id\": \"chatcmpl-Bf6lYaoXxA20pRkIbzUkcOJGlW09G\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2045, \"prompt_tokens\": 1407, \"completion_tokens\": 638, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"**Hey there! Welcome to our step-by-step guide on navigating the university\'s system. Whether you\'re looking to add some data, verify it, or just get around the platform, we\'ve got you covered. So grab a cup of coffee, and let\'s dive in!**\\n\\n---\\n\\n**For our Data Adders (UNMKR) and Data Checkers (UNCHK), here\'s what you need to know:**\\n\\n**Logging In:**\\n1. First things first, let\'s head over to our login page at [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\\n2. Pop in your username and password as given by the department, depending on your role.\\n3. Once you\'re successfully logged in, you\'ll land on your role-specific homepage. Easy peasy!\\n\\n**Adding a College (UNMKR):**\\n1. Click on the \'College\' tab.\\n2. Hit \'Add College\'.\\n3. Fill in the college name, type (like Government or Affiliated), and the AISHE code.\\n4. Don\'t forget the complete address before you save your entry.\\n\\n**Approving a College (UNCHK):**\\n1. Log in with your checker credentials.\\n2. Find the \'Course\' tab, then click \'Approve College\'.\\n3. Choose \'Pending\' from the dropdown, hit \'Search\', and approve or correct as needed.\\n\\n**Adding Courses and Students is just as straightforward:**\\n- For courses, select the session, college, and faculty, then add your courses.\\n- For students, upload an Excel sheet with their details, correct any errors shown, and upload it to the database.\\n\\n**And for our Checkers (UNCHK), approving courses and students follows a similar vibe:**\\n- Choose the session, college, and faculty for courses, or the college name for students, then approve or correct as needed.\\n\\n---\\n\\n**Department Operators, here\'s your bit on approving student payments:**\\n1. Log in with your DPTOPT credentials.\\n2. Click on the \'Payment\' tab, then \'Approve Student For Payment\'.\\n3. Select the university, get your list, and approve the students for payment processing.\\n\\n---\\n\\n**And hey, Students! Here\'s how you get registered:**\\n1. Head to our registration page at [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx).\\n2. Enter your university registration number, your dad\'s name, and your marksheet number.\\n3. Click \'Get Detail\', and if all looks good, proceed.\\n4. You\'ll then verify your Aadhaar, mobile, and email.\\n5. Finally, enter your bank and domicile details, and hit \'Register\'.\\n\\n**Remember, double-check your Aadhaar, mobile, and email validations before hitting that register button.**\\n\\n---\\n\\n**And there you have it! Whether you\'re adding, checking, or registering, we hope this guide makes your journey a bit smoother. Have a great day ahead!**\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749137156, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-05 15:25:55', '2025-06-05 15:26:24', NULL, NULL),
(38, 2, 14, 'ee', 'consent-forms/A3xqNFxqQNuB66ELIzCu6LtLrLlZzrm5JYC2tvdc.pdf', 'Hey everyone!\n\nWelcome to our quick guide on how to navigate through our university portal. Whether you\'re here to add data, verify it, or just get yourself registered, we\'ve got you covered. Let\'s walk you through everything step by step, making it as easy as pie. Ready? Let\'s dive in!\n\n**For Our University Staff: Adding and Verifying Data**\n\nFirst things first, you\'ll need to log in. Just pop over to our website at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx, enter your username and password that the department gave you based on whether you\'re adding data (UNMKR) or checking it (UNCHK), and voila! You\'re in and ready to go.\n\n**Adding Colleges, Courses, and Students**\n\nIf you\'re in the role of UNMKR, you\'re the one adding new colleges, courses, and even uploading student details via Excel. Here\'s a quick rundown:\n\n- **Adding a College**: Hit the College Tab, then Add College, and fill in the details like college name, type, AISHE code, and the full address. Don\'t forget to save your entry!\n- **Adding a Course**: Under the Course tab, you\'ll find Add Course Detail. Just select the academic session, the college, and the faculty before you pick the course to add.\n- **Uploading Student Details**: Click on the Student tab, then Upload Student Detail. Choose your Excel file with the student details, upload it, and make sure the data checks out before hitting \'Upload To Database\'.\n\n**Verifying the Added Data**\n\nNow, for our UNCHK folks, your job is to verify and approve the data that\'s been added. This means making sure colleges, courses, and student details are all correct before giving them the green light. Just remember, if you spot any errors, let the UNMKR team correct them before you approve.\n\n**For Department Operators: Approving Payments**\n\nOkay, Department Operators, your main task is to approve students for payment. This is crucial, so after logging in, head to the Payment tab, select the university, and start approving those who are verified and ready for payment.\n\n**For Our Students: Getting Registered**\n\nAnd to our students, welcome aboard! Registering is simple:\n\n1. Visit our registration page at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx.\n2. Fill in your university registration number, your dad\'s name, and your marksheet number.\n3. Click \'Get Detail\' to see if everything matches up. If it all looks good, proceed. If not, reach out to the university to clear things up.\n4. Next up, verify your Aadhaar, mobile number, and email through the OTP process.\n5. Enter your bank details and your residential information.\n6. Hit Register, but only after making sure your Aadhaar, mobile, and email are all verified.\n\nAnd that\'s pretty much it! Whether you\'re part of the university staff, a department operator, or a student looking to get registered, we hope this guide helps you navigate through the process smoothly. If you\'ve got any questions, don\'t hesitate to reach out. Happy data managing and registering!', 'completed', 1, '{\"id\": \"chatcmpl-Bf7DFGI51pDa4LpFOaYr0bqRM7Rhm\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2079, \"prompt_tokens\": 1407, \"completion_tokens\": 672, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey everyone!\\n\\nWelcome to our quick guide on how to navigate through our university portal. Whether you\'re here to add data, verify it, or just get yourself registered, we\'ve got you covered. Let\'s walk you through everything step by step, making it as easy as pie. Ready? Let\'s dive in!\\n\\n**For Our University Staff: Adding and Verifying Data**\\n\\nFirst things first, you\'ll need to log in. Just pop over to our website at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx, enter your username and password that the department gave you based on whether you\'re adding data (UNMKR) or checking it (UNCHK), and voila! You\'re in and ready to go.\\n\\n**Adding Colleges, Courses, and Students**\\n\\nIf you\'re in the role of UNMKR, you\'re the one adding new colleges, courses, and even uploading student details via Excel. Here\'s a quick rundown:\\n\\n- **Adding a College**: Hit the College Tab, then Add College, and fill in the details like college name, type, AISHE code, and the full address. Don\'t forget to save your entry!\\n- **Adding a Course**: Under the Course tab, you\'ll find Add Course Detail. Just select the academic session, the college, and the faculty before you pick the course to add.\\n- **Uploading Student Details**: Click on the Student tab, then Upload Student Detail. Choose your Excel file with the student details, upload it, and make sure the data checks out before hitting \'Upload To Database\'.\\n\\n**Verifying the Added Data**\\n\\nNow, for our UNCHK folks, your job is to verify and approve the data that\'s been added. This means making sure colleges, courses, and student details are all correct before giving them the green light. Just remember, if you spot any errors, let the UNMKR team correct them before you approve.\\n\\n**For Department Operators: Approving Payments**\\n\\nOkay, Department Operators, your main task is to approve students for payment. This is crucial, so after logging in, head to the Payment tab, select the university, and start approving those who are verified and ready for payment.\\n\\n**For Our Students: Getting Registered**\\n\\nAnd to our students, welcome aboard! Registering is simple:\\n\\n1. Visit our registration page at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx.\\n2. Fill in your university registration number, your dad\'s name, and your marksheet number.\\n3. Click \'Get Detail\' to see if everything matches up. If it all looks good, proceed. If not, reach out to the university to clear things up.\\n4. Next up, verify your Aadhaar, mobile number, and email through the OTP process.\\n5. Enter your bank details and your residential information.\\n6. Hit Register, but only after making sure your Aadhaar, mobile, and email are all verified.\\n\\nAnd that\'s pretty much it! Whether you\'re part of the university staff, a department operator, or a student looking to get registered, we hope this guide helps you navigate through the process smoothly. If you\'ve got any questions, don\'t hesitate to reach out. Happy data managing and registering!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749138873, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-05 15:54:32', '2025-06-05 15:54:49', NULL, NULL),
(39, 2, 14, 'ee', 'consent-forms/vrWEgWTJYDooY5ZvRD4YAJ4lpFdxni17pt0MiOWi.pdf', 'Hey there! Today, we’re going to walk you through how to navigate and use our university portal whether you\'re adding data, verifying it, or simply registering as a student. Let’s keep it simple and straightforward, so you can get started without any hiccups.\n\n**For University Roles: UNMKR and UNCHK**\n\n**Getting Started:**\n- First things first, hop onto our website by clicking this link: [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\n- Pop in your username and password that the department gave you, based on whether you’re adding data (UNMKR) or checking it (UNCHK).\n- Once you’re in, the system will guide you to the page you need, all based on your role.\n\n**If You’re Adding Data (UNMKR):**\n- **Adding a College?** Click on the ‘College Tab’, select ‘Add College’, and fill in all the details from the college name to its address. Remember to hit ‘Save’ once you\'re done.\n- **Adding a Course?** After logging in, find the ‘Course Tab’, click on ‘Add Course Detail’, and fill in the blanks from the academic session to the specialized subjects. Don’t forget to add your courses at the end!\n- **Uploading Student Details?** In the ‘Student Tab’, there’s an option to ‘Upload Student Detail’. Choose the excel sheet with your student info, upload it, and make any necessary corrections to errors flagged by our system. Once everything looks good, click ‘Upload To Database’.\n\n**Verifying Data (UNCHK):**\n- **Approving Colleges or Courses?** Simply log in with your checker credentials, navigate to the appropriate tab, and choose either ‘Approve College’ or ‘Approve Course Detail’. You’ll see a list of pending items. Check the ones you approve, and voila, you’re done.\n- **Approving Students?** Under the ‘Student Tab’, hit ‘Update Student Detail’, select the college, and then approve the students you’ve verified. Spotted an error? Delete the record and have it re-uploaded after corrections.\n\n**For Department Operators:**\n- **Approving Students for Payment?** Log in with your department operator credentials, click on the \'Payment\' tab, and then ‘Approve Student For Payment’. Choose the university, get the list of verified students, check the ones you’re approving for payment, and you’re all set.\n\n**For Students:**\n- **Ready to Register?** Visit [this link](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx), and enter your university registration number, father’s name, and marksheet number. If your details check out, you’ll proceed to verify your Aadhaar, mobile, and email through OTPs. Finally, enter your bank and residential details and hit ‘Register’.\n\nAnd that’s about it! We’ve tried to keep it as simple as possible, but remember, before hitting that final ‘Register’ button or approving anything, double-check your details. We want to make sure everything is accurate to avoid any delays or issues down the line. Good luck, and if you run into any discrepancies or issues, don’t hesitate to reach out to the university for assistance.', 'completed', 1, '{\"id\": \"chatcmpl-Bf7I89CXngXIyzLp06IoWLv2sEdn5\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2102, \"prompt_tokens\": 1407, \"completion_tokens\": 695, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! Today, we’re going to walk you through how to navigate and use our university portal whether you\'re adding data, verifying it, or simply registering as a student. Let’s keep it simple and straightforward, so you can get started without any hiccups.\\n\\n**For University Roles: UNMKR and UNCHK**\\n\\n**Getting Started:**\\n- First things first, hop onto our website by clicking this link: [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\\n- Pop in your username and password that the department gave you, based on whether you’re adding data (UNMKR) or checking it (UNCHK).\\n- Once you’re in, the system will guide you to the page you need, all based on your role.\\n\\n**If You’re Adding Data (UNMKR):**\\n- **Adding a College?** Click on the ‘College Tab’, select ‘Add College’, and fill in all the details from the college name to its address. Remember to hit ‘Save’ once you\'re done.\\n- **Adding a Course?** After logging in, find the ‘Course Tab’, click on ‘Add Course Detail’, and fill in the blanks from the academic session to the specialized subjects. Don’t forget to add your courses at the end!\\n- **Uploading Student Details?** In the ‘Student Tab’, there’s an option to ‘Upload Student Detail’. Choose the excel sheet with your student info, upload it, and make any necessary corrections to errors flagged by our system. Once everything looks good, click ‘Upload To Database’.\\n\\n**Verifying Data (UNCHK):**\\n- **Approving Colleges or Courses?** Simply log in with your checker credentials, navigate to the appropriate tab, and choose either ‘Approve College’ or ‘Approve Course Detail’. You’ll see a list of pending items. Check the ones you approve, and voila, you’re done.\\n- **Approving Students?** Under the ‘Student Tab’, hit ‘Update Student Detail’, select the college, and then approve the students you’ve verified. Spotted an error? Delete the record and have it re-uploaded after corrections.\\n\\n**For Department Operators:**\\n- **Approving Students for Payment?** Log in with your department operator credentials, click on the \'Payment\' tab, and then ‘Approve Student For Payment’. Choose the university, get the list of verified students, check the ones you’re approving for payment, and you’re all set.\\n\\n**For Students:**\\n- **Ready to Register?** Visit [this link](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx), and enter your university registration number, father’s name, and marksheet number. If your details check out, you’ll proceed to verify your Aadhaar, mobile, and email through OTPs. Finally, enter your bank and residential details and hit ‘Register’.\\n\\nAnd that’s about it! We’ve tried to keep it as simple as possible, but remember, before hitting that final ‘Register’ button or approving anything, double-check your details. We want to make sure everything is accurate to avoid any delays or issues down the line. Good luck, and if you run into any discrepancies or issues, don’t hesitate to reach out to the university for assistance.\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749139176, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-05 15:59:35', '2025-06-05 16:00:05', NULL, NULL),
(40, 2, 14, 'mm', 'consent-forms/IpVZsU62dOZF9lIhM0xXhZ0P7rG5yVtPpDumpH1S.pdf', NULL, 'failed', 1, NULL, NULL, '2025-06-05 16:04:18', '2025-06-05 16:04:48', NULL, NULL),
(41, 2, 14, 'mm', 'consent-forms/ipQG10n9XXeY5L55YeFDWUeW8AWynfP38QAT6Tfr.pdf', 'Hey everyone!\n\nToday, I\'m here to walk you through a super straightforward guide on how to navigate and use our university\'s system, whether you\'re adding data, verifying it, or just trying to get yourself registered. So, grab a cup of coffee, and let’s dive right in!\n\n**For Our University Team Members:**\n\nFirst things first, you\'ve got two main roles:\n- **UNMKR**, you\'re the ones adding all the juicy details into the system.\n- **UNCHK**, you\'ve got the all-important job of verifying that data to make sure everything\'s tip-top.\n\n**Getting Started:**\n- Hit up our website by clicking this link: [medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx)\n- Pop in your username and password as given by our department. Once you\'re in, you\'ll land on a page that\'s all set up for your specific role.\n\n**Adding Colleges, Courses, and Students:**\nIf you\'re a UNMKR, here\'s how you can add all the essentials:\n- For colleges and courses: Jump into the relevant tab, hit \"Add\", and fill in the blanks. Don’t forget to hit \"Save\" when you’re done.\n- For adding students: It’s as easy as uploading an Excel sheet. Make sure it’s in the format we love, upload it, and voila! If there are any issues, the system will let you know so you can make those tweaks and re-upload.\n\n**Verifying All That Data:**\nUNCHK, your turn! Whether it\'s colleges, courses, or student details, just log in, find the pending stuff, and give it the green light. If something doesn’t look right, you can send it back to UNMKR for corrections.\n\n**For Department Operators Handling Payments:**\n- Log in and head to the Payment tab.\n- Choose the students who are all clear and hit \"Approve\" to send their data off for payment processing. Simple as that!\n\n**For Students Wanting to Register:**\n- Click on this link to get started: [medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx)\n- Enter the details like your university registration number, father’s name, and marksheet number.\n- Make sure your Aadhaar, mobile number, and email are all verified with the OTPs you’ll receive.\n- Fill in your bank and residence details, then hit \"Register\" to complete your registration.\n\n**A Couple of Tips:**\nBefore you finalize anything, double-check your Aadhaar, mobile, and email verifications. It\'ll save you a headache later!\n\nAnd that’s a wrap! Whether you’re part of our university team or a student eager to get registered, following these steps will make your life a whole lot easier. If you ever hit a snag or something doesn’t look right, don’t hesitate to reach out for help. Let\'s make this process smooth and hassle-free for everyone involved. Happy data entering and verifying, everyone!', 'completed', 1, '{\"id\": \"chatcmpl-Bf7NEjSqJBS1rUzX4EkkDz4ESUfQi\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2082, \"prompt_tokens\": 1407, \"completion_tokens\": 675, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey everyone!\\n\\nToday, I\'m here to walk you through a super straightforward guide on how to navigate and use our university\'s system, whether you\'re adding data, verifying it, or just trying to get yourself registered. So, grab a cup of coffee, and let’s dive right in!\\n\\n**For Our University Team Members:**\\n\\nFirst things first, you\'ve got two main roles:\\n- **UNMKR**, you\'re the ones adding all the juicy details into the system.\\n- **UNCHK**, you\'ve got the all-important job of verifying that data to make sure everything\'s tip-top.\\n\\n**Getting Started:**\\n- Hit up our website by clicking this link: [medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx)\\n- Pop in your username and password as given by our department. Once you\'re in, you\'ll land on a page that\'s all set up for your specific role.\\n\\n**Adding Colleges, Courses, and Students:**\\nIf you\'re a UNMKR, here\'s how you can add all the essentials:\\n- For colleges and courses: Jump into the relevant tab, hit \\\"Add\\\", and fill in the blanks. Don’t forget to hit \\\"Save\\\" when you’re done.\\n- For adding students: It’s as easy as uploading an Excel sheet. Make sure it’s in the format we love, upload it, and voila! If there are any issues, the system will let you know so you can make those tweaks and re-upload.\\n\\n**Verifying All That Data:**\\nUNCHK, your turn! Whether it\'s colleges, courses, or student details, just log in, find the pending stuff, and give it the green light. If something doesn’t look right, you can send it back to UNMKR for corrections.\\n\\n**For Department Operators Handling Payments:**\\n- Log in and head to the Payment tab.\\n- Choose the students who are all clear and hit \\\"Approve\\\" to send their data off for payment processing. Simple as that!\\n\\n**For Students Wanting to Register:**\\n- Click on this link to get started: [medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx)\\n- Enter the details like your university registration number, father’s name, and marksheet number.\\n- Make sure your Aadhaar, mobile number, and email are all verified with the OTPs you’ll receive.\\n- Fill in your bank and residence details, then hit \\\"Register\\\" to complete your registration.\\n\\n**A Couple of Tips:**\\nBefore you finalize anything, double-check your Aadhaar, mobile, and email verifications. It\'ll save you a headache later!\\n\\nAnd that’s a wrap! Whether you’re part of our university team or a student eager to get registered, following these steps will make your life a whole lot easier. If you ever hit a snag or something doesn’t look right, don’t hesitate to reach out for help. Let\'s make this process smooth and hassle-free for everyone involved. Happy data entering and verifying, everyone!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749139492, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-05 16:04:51', '2025-06-05 16:05:12', NULL, NULL),
(42, 2, 15, 'fgfg', 'consent-forms/tBUFKChCLGx1adMPwa8uVLKTbF8KzLqLJLiC5Wb6.pdf', 'Hey there! Today, we\'re going to walk through the process of getting ready for a Comprehensive Immunodeficiency Panel. This isn\'t just any form; it\'s your gateway to understanding more about your health, so let\'s make sure we get everything right together.\n\nFirst off, we\'re talking about you, so we need to know the basics: your name, where you live, how we can reach you (yes, your email and cell phone number are super important), and of course, your date of birth. We\'re not just being nosy; all this helps us make sure the test and results are all about you and nobody else.\n\nNow, let\'s chat about your insurance because, let\'s face it, nobody wants a surprise bill. We\'ll need the name of your insurance company, the policy holder\'s name (that\'s you unless someone else\'s insurance is covering this), and your member ID. Plus, if the policy holder is someone else, we\'ll want to know how you\'re related.\n\nBefore we dive into the test itself, let\'s make sure we\'ve got all the essentials: your ancestry, because believe it or not, it can play a big role in your health; and if you\'re comfortable, your sex at birth, as it can affect certain genetic risks.\n\nNow, the heart of the matter – the Comprehensive Immunodeficiency Panel. This test is a deep dive into your genes to check for anything that might affect your immune system. It\'s not your everyday check-up; this is advanced stuff looking for specific conditions that could impact your health in a big way.\n\nBut before we go any further, let\'s talk consent. It\'s super important that you know what you\'re getting into and that you\'re okay with it. By moving forward, you\'re saying, \"Yes, I understand what this test is about, and I agree to it.\" It\'s also a big green light that you understand this test is necessary for diagnosing or figuring out if there\'s a disease or condition we should be aware of. And yes, this test is a big deal for your health management.\n\nAlso, just a heads up, if you\'re on Medicare, they\'re a bit picky about what tests they cover. This isn\'t a routine \"let\'s see what\'s up\" kind of test; it\'s specific and medically necessary based on your situation.\n\nFinally, by giving us the go-ahead, you\'re confirming a couple of things:\n- You have an ongoing relationship with your healthcare provider.\n- The test results will be used to manage your health condition.\n- Your healthcare provider will discuss the results with you and decide on the next steps together.\n- Your medical records will reflect how these results play into your health plan.\n- And, if needed, a genetics expert might take a look at your results to give the best advice possible.\n\nSo, if you\'re all set and agree with everything we\'ve talked about, it\'s time to sign on the dotted line. And, if you can, please attach a copy of both sides of your insurance card and ID, just to make sure we\'ve got everything covered.\n\nThere you have it! Together, we\'re taking a big step towards understanding and managing your health. Thanks for taking the time to walk through this with me.', 'sent', 1, '{\"id\": \"chatcmpl-BfSk7iKcGiDTZVRUyXAlDHfTiSe3Y\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 1573, \"prompt_tokens\": 909, \"completion_tokens\": 664, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! Today, we\'re going to walk through the process of getting ready for a Comprehensive Immunodeficiency Panel. This isn\'t just any form; it\'s your gateway to understanding more about your health, so let\'s make sure we get everything right together.\\n\\nFirst off, we\'re talking about you, so we need to know the basics: your name, where you live, how we can reach you (yes, your email and cell phone number are super important), and of course, your date of birth. We\'re not just being nosy; all this helps us make sure the test and results are all about you and nobody else.\\n\\nNow, let\'s chat about your insurance because, let\'s face it, nobody wants a surprise bill. We\'ll need the name of your insurance company, the policy holder\'s name (that\'s you unless someone else\'s insurance is covering this), and your member ID. Plus, if the policy holder is someone else, we\'ll want to know how you\'re related.\\n\\nBefore we dive into the test itself, let\'s make sure we\'ve got all the essentials: your ancestry, because believe it or not, it can play a big role in your health; and if you\'re comfortable, your sex at birth, as it can affect certain genetic risks.\\n\\nNow, the heart of the matter – the Comprehensive Immunodeficiency Panel. This test is a deep dive into your genes to check for anything that might affect your immune system. It\'s not your everyday check-up; this is advanced stuff looking for specific conditions that could impact your health in a big way.\\n\\nBut before we go any further, let\'s talk consent. It\'s super important that you know what you\'re getting into and that you\'re okay with it. By moving forward, you\'re saying, \\\"Yes, I understand what this test is about, and I agree to it.\\\" It\'s also a big green light that you understand this test is necessary for diagnosing or figuring out if there\'s a disease or condition we should be aware of. And yes, this test is a big deal for your health management.\\n\\nAlso, just a heads up, if you\'re on Medicare, they\'re a bit picky about what tests they cover. This isn\'t a routine \\\"let\'s see what\'s up\\\" kind of test; it\'s specific and medically necessary based on your situation.\\n\\nFinally, by giving us the go-ahead, you\'re confirming a couple of things:\\n- You have an ongoing relationship with your healthcare provider.\\n- The test results will be used to manage your health condition.\\n- Your healthcare provider will discuss the results with you and decide on the next steps together.\\n- Your medical records will reflect how these results play into your health plan.\\n- And, if needed, a genetics expert might take a look at your results to give the best advice possible.\\n\\nSo, if you\'re all set and agree with everything we\'ve talked about, it\'s time to sign on the dotted line. And, if you can, please attach a copy of both sides of your insurance card and ID, just to make sure we\'ve got everything covered.\\n\\nThere you have it! Together, we\'re taking a big step towards understanding and managing your health. Thanks for taking the time to walk through this with me.\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749221635, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-06 14:53:53', '2025-06-11 14:38:16', NULL, NULL);
INSERT INTO `consent_forms` (`id`, `user_id`, `avatar_id`, `title`, `pdf_path`, `generated_script`, `status`, `step`, `gpt_response`, `video_id`, `created_at`, `updated_at`, `video_generation_response`, `video_path`) VALUES
(43, 2, 15, 'fgfg', 'consent-forms/LQRFYKa7gXc4IAteUEivF3Xpkc2JTN7sRHBPhUOj.pdf', 'Hey there! It looks like you’re about to embark on an important journey with us, getting a comprehensive immunodeficiency panel test. This will help us get a clearer picture of what’s going on with your health, and to make sure we do this right, we need to go through a bit of paperwork together. It’s not the fun part, I know, but it’s crucial to ensure everything is clear and consented to. So, let’s break it down in a way that’s easy to digest.\n\nFirst up, we need some basic details about you - your name, date of birth, and where you live. This helps us keep all your test results and information organized and confidential.\n\nNext, we\'ll talk about your insurance. We need the name of your insurance company, your member ID, and the policy holder\'s details if it\'s not under your name. This is to make sure that all the financial aspects are taken care of smoothly.\n\nNow, the fun part - the test itself. We\'re looking at a comprehensive panel that checks for a wide range of immunodeficiencies. This means we\'re doing a deep dive into your genetic information to understand better what might be affecting your immune system. For this, we\'ll need a sample from you, and we’ll note down the date we collect this sample.\n\nIn terms of your background, it helps to know your ancestry because it can give us important clues about your health. So, if you could let us know that, it would be fantastic.\n\nBefore we proceed, there’s something super important - the informed consent and medical necessity confirmation. By moving forward, you\'re confirming a few key things:\n- You understand what this test is for and have agreed to undergo it.\n- This test is needed to diagnose or understand a disease or health condition you might have.\n- The results will play a critical role in your ongoing medical care.\n\nIt’s also essential for us to know that you have an ongoing relationship with your healthcare provider who is ordering this test. They\'ll look at your results, discuss them with you, and figure out the next steps in your care. Plus, they’ll keep detailed notes on how these results influence your treatment plan.\n\nJust a heads up, if you\'re a Medicare beneficiary, Medicare typically doesn’t cover routine screening tests. But not to worry, this test isn’t considered a routine screening. It’s a specific investigation based on your medical needs.\n\nLastly, your test results will be reviewed, potentially with the advice of a medical geneticist. This is all about making sure you get the best possible care and understanding of your health.\n\nBefore we wrap up, make sure to attach a copy of your insurance card and ID. This is just to double-check all the details and keep everything in order.\n\nAnd there you have it! By signing off on this, you’re all set to go. We’re here to support you through this process, and we want to make sure you feel informed and comfortable every step of the way. Thanks for taking the time to go through this with me. Let’s get you on the path to understanding your health better!', 'completed', 1, '{\"id\": \"chatcmpl-BfSlk7iHQ9KgqWnna817obfBlmspp\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 1540, \"prompt_tokens\": 909, \"completion_tokens\": 631, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! It looks like you’re about to embark on an important journey with us, getting a comprehensive immunodeficiency panel test. This will help us get a clearer picture of what’s going on with your health, and to make sure we do this right, we need to go through a bit of paperwork together. It’s not the fun part, I know, but it’s crucial to ensure everything is clear and consented to. So, let’s break it down in a way that’s easy to digest.\\n\\nFirst up, we need some basic details about you - your name, date of birth, and where you live. This helps us keep all your test results and information organized and confidential.\\n\\nNext, we\'ll talk about your insurance. We need the name of your insurance company, your member ID, and the policy holder\'s details if it\'s not under your name. This is to make sure that all the financial aspects are taken care of smoothly.\\n\\nNow, the fun part - the test itself. We\'re looking at a comprehensive panel that checks for a wide range of immunodeficiencies. This means we\'re doing a deep dive into your genetic information to understand better what might be affecting your immune system. For this, we\'ll need a sample from you, and we’ll note down the date we collect this sample.\\n\\nIn terms of your background, it helps to know your ancestry because it can give us important clues about your health. So, if you could let us know that, it would be fantastic.\\n\\nBefore we proceed, there’s something super important - the informed consent and medical necessity confirmation. By moving forward, you\'re confirming a few key things:\\n- You understand what this test is for and have agreed to undergo it.\\n- This test is needed to diagnose or understand a disease or health condition you might have.\\n- The results will play a critical role in your ongoing medical care.\\n\\nIt’s also essential for us to know that you have an ongoing relationship with your healthcare provider who is ordering this test. They\'ll look at your results, discuss them with you, and figure out the next steps in your care. Plus, they’ll keep detailed notes on how these results influence your treatment plan.\\n\\nJust a heads up, if you\'re a Medicare beneficiary, Medicare typically doesn’t cover routine screening tests. But not to worry, this test isn’t considered a routine screening. It’s a specific investigation based on your medical needs.\\n\\nLastly, your test results will be reviewed, potentially with the advice of a medical geneticist. This is all about making sure you get the best possible care and understanding of your health.\\n\\nBefore we wrap up, make sure to attach a copy of your insurance card and ID. This is just to double-check all the details and keep everything in order.\\n\\nAnd there you have it! By signing off on this, you’re all set to go. We’re here to support you through this process, and we want to make sure you feel informed and comfortable every step of the way. Thanks for taking the time to go through this with me. Let’s get you on the path to understanding your health better!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749221736, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-06 14:55:34', '2025-06-06 14:55:56', NULL, NULL),
(44, 2, 14, 'kjd jjmc', 'consent-forms/7sIF6ryPvTQ6vVcKXLnxwFCWCxmOHDrgutbfqzxS.pdf', 'Hey there! Welcome to our user guide video, where we\'re going to walk you through how to effortlessly navigate our system, whether you’re adding data, verifying it, or just here to get things rolling with your registration. Let’s dive right in and make this as smooth as possible for you.\n\n---\n\n**For University Staff:**\n\n**Roles at a Glance:**\n- **UNMKR:** You’re the one who adds all the data.\n- **UNCHK:** Your job is to verify and approve that data.\n\n**Actions You\'ll Be Handling:**\n- **UNMKR:** Adding colleges, courses, and students is your domain.\n- **UNCHK:** You\'ll be focusing on approving colleges, courses, and students.\n\n**Getting Started:**\n1. Pop over to our website by clicking on this link: [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\n2. Enter the username and password you got from the department.\n3. Once you\'re in, the system will guide you to your role-specific page.\n\n**For UNMKR: Adding to the Database**\n\n*Adding a College:*\n- Hit the College Tab, then Add College.\n- Type in the College Name, select its Type (like Government or Minority), and don’t forget the AISHE Code.\n- Fill in the college\'s full address, hit Save, and you’re done!\n\n*Adding a Course:*\n- Under the Course tab, look for Add Course Detail.\n- Choose the academic session, the college, and then the faculty.\n- You’ll see a list of subjects. Check the ones you need and click Add Course.\n\n*Adding a Student:*\n- Go to Student tab, then Upload Student Detail.\n- Choose the Excel file with student details, and upload it.\n- After the system checks, correct any errors if needed and re-upload.\n\n**For UNCHK: Approving the Data**\n\n*Approving a College:*\n- Log in, head to the Course Tab, and select Approve College.\n- Find the college you need to approve, and give it a thumbs up. If something’s off, correct it with UNMKR login first.\n\n*Approving a Course:*\n- Just like colleges, but under Approve Course Detail. Find the course, approve or reject as needed.\n\n*Approving a Student:*\n- In Student tab, hit Update Student Detail.\n- Approve each student carefully. If there’s an issue, delete and have it re-uploaded correctly.\n\n**For Department Operators: Approving Payment**\n\n1. Log in, hit the Payment tab, and select Approve Student For Payment.\n2. Choose the university, get the verified student list, and approve for payment.\n\n**For Students: Getting Registered**\n\n1. Head over to [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx) for registration.\n2. Fill in your details accurately—university reg. number, dad’s name, marksheet number.\n3. Verify your Aadhaar, mobile, and email through OTPs.\n4. Input your bank and residential details.\n5. Double-check everything, then hit Register.\n\n**A Few Tips Before You Go:**\nMake sure every detail is correct, especially your Aadhaar, mobile, and email verification, before you finalize your registration.\n\nAnd that’s all there is to it! Whether you’re adding, approving, or registering, following these steps will make your journey with us a breeze. If you hit a snag or need more info, don’t hesitate to reach out. Thanks for watching, and here’s to a smooth experience with us!', 'Script Generated', 1, '{\"id\": \"chatcmpl-Bg9M5QFsjHf3VmgWIWGwp9hQmAfCe\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2177, \"prompt_tokens\": 1407, \"completion_tokens\": 770, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! Welcome to our user guide video, where we\'re going to walk you through how to effortlessly navigate our system, whether you’re adding data, verifying it, or just here to get things rolling with your registration. Let’s dive right in and make this as smooth as possible for you.\\n\\n---\\n\\n**For University Staff:**\\n\\n**Roles at a Glance:**\\n- **UNMKR:** You’re the one who adds all the data.\\n- **UNCHK:** Your job is to verify and approve that data.\\n\\n**Actions You\'ll Be Handling:**\\n- **UNMKR:** Adding colleges, courses, and students is your domain.\\n- **UNCHK:** You\'ll be focusing on approving colleges, courses, and students.\\n\\n**Getting Started:**\\n1. Pop over to our website by clicking on this link: [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx).\\n2. Enter the username and password you got from the department.\\n3. Once you\'re in, the system will guide you to your role-specific page.\\n\\n**For UNMKR: Adding to the Database**\\n\\n*Adding a College:*\\n- Hit the College Tab, then Add College.\\n- Type in the College Name, select its Type (like Government or Minority), and don’t forget the AISHE Code.\\n- Fill in the college\'s full address, hit Save, and you’re done!\\n\\n*Adding a Course:*\\n- Under the Course tab, look for Add Course Detail.\\n- Choose the academic session, the college, and then the faculty.\\n- You’ll see a list of subjects. Check the ones you need and click Add Course.\\n\\n*Adding a Student:*\\n- Go to Student tab, then Upload Student Detail.\\n- Choose the Excel file with student details, and upload it.\\n- After the system checks, correct any errors if needed and re-upload.\\n\\n**For UNCHK: Approving the Data**\\n\\n*Approving a College:*\\n- Log in, head to the Course Tab, and select Approve College.\\n- Find the college you need to approve, and give it a thumbs up. If something’s off, correct it with UNMKR login first.\\n\\n*Approving a Course:*\\n- Just like colleges, but under Approve Course Detail. Find the course, approve or reject as needed.\\n\\n*Approving a Student:*\\n- In Student tab, hit Update Student Detail.\\n- Approve each student carefully. If there’s an issue, delete and have it re-uploaded correctly.\\n\\n**For Department Operators: Approving Payment**\\n\\n1. Log in, hit the Payment tab, and select Approve Student For Payment.\\n2. Choose the university, get the verified student list, and approve for payment.\\n\\n**For Students: Getting Registered**\\n\\n1. Head over to [medhasoft.bih.nic.in](medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx) for registration.\\n2. Fill in your details accurately—university reg. number, dad’s name, marksheet number.\\n3. Verify your Aadhaar, mobile, and email through OTPs.\\n4. Input your bank and residential details.\\n5. Double-check everything, then hit Register.\\n\\n**A Few Tips Before You Go:**\\nMake sure every detail is correct, especially your Aadhaar, mobile, and email verification, before you finalize your registration.\\n\\nAnd that’s all there is to it! Whether you’re adding, approving, or registering, following these steps will make your journey with us a breeze. If you hit a snag or need more info, don’t hesitate to reach out. Thanks for watching, and here’s to a smooth experience with us!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749385437, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-08 12:23:56', '2025-06-08 12:24:19', NULL, NULL),
(45, 2, 14, 'hbjnjwmwww', 'consent-forms/HpJUA0lZKQTIcXBEOSNwPyzLJXlYflK07HYQnVxX.pdf', 'Hey everyone, welcome to our quick and easy guide on how to navigate through our university system! Whether you\'re looking to add data, verify it, or even get yourself registered, we\'ve got you covered with simple steps to follow. So, let\'s dive in!\n\n**For our Data Markers (UNMKR) and Data Checkers (UNCHK):**\n\nFirst things first, you\'ll need to log in. Just head over to our website at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx, punch in your username and password as given by the department, and you\'re in!\n\n**If you\'re a Data Marker (UNMKR):**\n\n- **Adding a College:** Click on the \'College\' tab, hit \'Add College\', and fill in details like the college name, type, AISHE code, and address before saving your entry.\n\n- **Adding a Course:** Navigate to the \'Course\' tab, select \'Add Course Detail\', and enter the necessary details about the academic session, college, faculty and the specialized subjects you\'re adding.\n\n- **Adding a Student:** Easy as pie – go to the \'Student\' tab, click \'Upload Student Detail\', choose the excel sheet with student details, and upload. Any errors? They\'ll pop up for you to correct and re-upload.\n\n**For our Data Checkers (UNCHK):**\n\n- **Approving Colleges and Courses:** Log in with your checker credentials, select the college or course tab, find the entries pending approval, and give them a thumbs up. Spotted an error? No worries, let our markers correct it first, then approve.\n\n- **Approving Students:** Jump into the \'Student\' tab, click \'Update Student Detail\', and approve the students listed. Any mistakes? Just delete the record, and ask our markers to re-upload after corrections.\n\n**For Department Operators (DPTOPT):**\n\n- **Approving Student Payments:** After logging in, hit the \'Payment\' tab, select \'Approve Student For Payment\', choose the university, and you\'ll see a list of verified students ready for approval. Once done, their data is sent for payment processing.\n\n**And for our Students:**\n\n- **Registration:** Head to our registration page at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx. Enter your university registration number, father\'s name, marksheet number, and click \'Get Detail\'. Found everything in order? Great, proceed to verify your Aadhaar, mobile, email, and enter your bank details along with your residential information. Before hitting \'Register\', just double-check your Aadhaar, mobile, and email verifications are all good to go.\n\nRemember folks, whether you\'re adding, verifying, or registering, make sure all your details are spot on to avoid any hiccups along the way. Thanks for watching, and here\'s to a smooth and successful process for all!', 'sent', 1, '{\"id\": \"chatcmpl-Bg9UzcBUl8SWYrM27OnZuUFFRjNEY\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 2016, \"prompt_tokens\": 1407, \"completion_tokens\": 609, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey everyone, welcome to our quick and easy guide on how to navigate through our university system! Whether you\'re looking to add data, verify it, or even get yourself registered, we\'ve got you covered with simple steps to follow. So, let\'s dive in!\\n\\n**For our Data Markers (UNMKR) and Data Checkers (UNCHK):**\\n\\nFirst things first, you\'ll need to log in. Just head over to our website at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/UniversityLogin.aspx, punch in your username and password as given by the department, and you\'re in!\\n\\n**If you\'re a Data Marker (UNMKR):**\\n\\n- **Adding a College:** Click on the \'College\' tab, hit \'Add College\', and fill in details like the college name, type, AISHE code, and address before saving your entry.\\n\\n- **Adding a Course:** Navigate to the \'Course\' tab, select \'Add Course Detail\', and enter the necessary details about the academic session, college, faculty and the specialized subjects you\'re adding.\\n\\n- **Adding a Student:** Easy as pie – go to the \'Student\' tab, click \'Upload Student Detail\', choose the excel sheet with student details, and upload. Any errors? They\'ll pop up for you to correct and re-upload.\\n\\n**For our Data Checkers (UNCHK):**\\n\\n- **Approving Colleges and Courses:** Log in with your checker credentials, select the college or course tab, find the entries pending approval, and give them a thumbs up. Spotted an error? No worries, let our markers correct it first, then approve.\\n\\n- **Approving Students:** Jump into the \'Student\' tab, click \'Update Student Detail\', and approve the students listed. Any mistakes? Just delete the record, and ask our markers to re-upload after corrections.\\n\\n**For Department Operators (DPTOPT):**\\n\\n- **Approving Student Payments:** After logging in, hit the \'Payment\' tab, select \'Approve Student For Payment\', choose the university, and you\'ll see a list of verified students ready for approval. Once done, their data is sent for payment processing.\\n\\n**And for our Students:**\\n\\n- **Registration:** Head to our registration page at medhasoft.bih.nic.in/MKUYSnatak2021/PMS/StudentRegistration.aspx. Enter your university registration number, father\'s name, marksheet number, and click \'Get Detail\'. Found everything in order? Great, proceed to verify your Aadhaar, mobile, email, and enter your bank details along with your residential information. Before hitting \'Register\', just double-check your Aadhaar, mobile, and email verifications are all good to go.\\n\\nRemember folks, whether you\'re adding, verifying, or registering, make sure all your details are spot on to avoid any hiccups along the way. Thanks for watching, and here\'s to a smooth and successful process for all!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749385989, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-08 12:33:09', '2025-06-11 14:39:09', NULL, NULL),
(46, 2, 14, 'Test', 'consent-forms/P4LP3TodLgBodTJJmYVUDF8kW1lKmHvtcSQWk9vG.pdf', 'Hey there! Welcome to a quick walkthrough on how we\'re bringing the magic of HeyGen avatars into our platform. We\'re super excited to share how this works and what you need to know to get started.\n\nFirst off, HeyGen is this awesome tool we’re partnering with. It helps us create amazing avatars from your photos, audio, and videos. Plus, we can automatically generate videos with these avatars through something called an API – it\'s like a digital bridge that lets our platform and HeyGen chat and work together seamlessly.\n\nTo make the magic happen, there are a couple of things we need:\n1. A HeyGen subscription, which could be Creator, Team, or Enterprise, depending on what we need.\n2. An API plan – that’s Pro, Scale, or Enterprise – for all the technical back-and-forth.\n\nGood news is, there are free credits for us to test things out. And there\'s a goldmine of information at HeyGen’s documentation site to help us along.\n\nNow, let’s talk avatars and consent, because we want to make sure we’re doing this right and respecting everyone involved:\n- Photo Avatars are super simple. We don’t need any special permissions to create these, and the API handles it all.\n- Video Avatars, though, are a bit different. Whether they\'re instant or hyper-realistic, we need to get a thumbs-up from the person in the video. This means a quick consent video is a must, and it’s a step that needs a human touch – no API shortcuts here.\n\nFor video avatars, here’s the drill:\n- It’s all about keeping everyone safe and making sure we’re using AI responsibly.\n- You’ll make a quick video, under 30 seconds, following a script we provide. It should include a unique security code, just to verify it’s really you.\n- You can record this video right on our website or use your mobile by scanning a QR code. And for those with Enterprise plans, you can even upload a video or use a Google Drive link.\n\nRemember, this part’s manual. But once your consent video is good to go, creating your avatar videos is all automated.\n\nSo, how does this all come together in our app?\n1. You sign up and get a shiny consent QR code from HeyGen.\n2. You record your consent video, either through your mobile or directly on your webcam.\n3. Our team checks your video, gives it the green light, and connects your avatar to your user profile.\n4. From there, the API takes over and brings your avatar to life in videos.\n\nWe’ve got some key tools to make all this happen, with links to upload assets and create avatar videos directly through HeyGen’s API.\n\nAnd just so you know, consent is a one-and-done deal – one consent video per person is all we need. Also, automating the whole QR code or consent step isn’t in the cards just yet.\n\nThis guide is meant to help us get everything set up and rolling smoothly. We\'re thrilled to see what we can create together with HeyGen. Thanks for tuning in, and here’s to bringing our digital interactions to a whole new level of cool!', 'Script Generated', 1, '{\"id\": \"chatcmpl-BiFtL5dmvhO2C7vmDyw6TYJzi2uZs\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 1201, \"prompt_tokens\": 548, \"completion_tokens\": 653, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hey there! Welcome to a quick walkthrough on how we\'re bringing the magic of HeyGen avatars into our platform. We\'re super excited to share how this works and what you need to know to get started.\\n\\nFirst off, HeyGen is this awesome tool we’re partnering with. It helps us create amazing avatars from your photos, audio, and videos. Plus, we can automatically generate videos with these avatars through something called an API – it\'s like a digital bridge that lets our platform and HeyGen chat and work together seamlessly.\\n\\nTo make the magic happen, there are a couple of things we need:\\n1. A HeyGen subscription, which could be Creator, Team, or Enterprise, depending on what we need.\\n2. An API plan – that’s Pro, Scale, or Enterprise – for all the technical back-and-forth.\\n\\nGood news is, there are free credits for us to test things out. And there\'s a goldmine of information at HeyGen’s documentation site to help us along.\\n\\nNow, let’s talk avatars and consent, because we want to make sure we’re doing this right and respecting everyone involved:\\n- Photo Avatars are super simple. We don’t need any special permissions to create these, and the API handles it all.\\n- Video Avatars, though, are a bit different. Whether they\'re instant or hyper-realistic, we need to get a thumbs-up from the person in the video. This means a quick consent video is a must, and it’s a step that needs a human touch – no API shortcuts here.\\n\\nFor video avatars, here’s the drill:\\n- It’s all about keeping everyone safe and making sure we’re using AI responsibly.\\n- You’ll make a quick video, under 30 seconds, following a script we provide. It should include a unique security code, just to verify it’s really you.\\n- You can record this video right on our website or use your mobile by scanning a QR code. And for those with Enterprise plans, you can even upload a video or use a Google Drive link.\\n\\nRemember, this part’s manual. But once your consent video is good to go, creating your avatar videos is all automated.\\n\\nSo, how does this all come together in our app?\\n1. You sign up and get a shiny consent QR code from HeyGen.\\n2. You record your consent video, either through your mobile or directly on your webcam.\\n3. Our team checks your video, gives it the green light, and connects your avatar to your user profile.\\n4. From there, the API takes over and brings your avatar to life in videos.\\n\\nWe’ve got some key tools to make all this happen, with links to upload assets and create avatar videos directly through HeyGen’s API.\\n\\nAnd just so you know, consent is a one-and-done deal – one consent video per person is all we need. Also, automating the whole QR code or consent step isn’t in the cards just yet.\\n\\nThis guide is meant to help us get everything set up and rolling smoothly. We\'re thrilled to see what we can create together with HeyGen. Thanks for tuning in, and here’s to bringing our digital interactions to a whole new level of cool!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749887219, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-14 07:46:58', '2025-06-14 07:47:19', NULL, NULL),
(47, 2, 14, 'Test', 'consent-forms/Zk85rI4TX5mugeMzkad7RfCpnfaYwaWld87dNY2f.pdf', '**Hey there! Welcome to our video on the Professional Services Agreement between Santa Cruz County Regional Transportation Commission (let\'s call them the Commission) and our wonderful Consultant—that\'s you! Let\'s dive into the details in a way that\'s easy to understand.**\n\n---\n\n**Introduction**\n\nThis agreement is pulling us together to work on a specific project or service. It\'s like we\'re joining forces to tackle something big, and this document is our game plan.\n\n---\n\n**1. What You\'ll Be Doing (Duties)**\n\n- **Your Mission:** You\'ve got a special set of skills, and we\'re counting on you to use them to deliver some impressive results. We\'ve outlined exactly what we\'re hoping to see in something called Exhibit A: Scope of Services.\n- **Your A-Team:** You\'ll tell us who\'s who in your team—these are the key players who\'ll help you cross the finish line.\n- **Stick to the Plan:** If you need to switch out any of these key players or change their roles, just chat with us first. We\'re pretty reasonable folks.\n- **Keep Us in the Loop:** Send over progress reports with your invoices. Let\'s meet up as needed to ensure everything\'s moving smoothly.\n\n---\n\n**2. The Deal (Compensation)**\n\n- **The Cap:** We\'ve set a maximum budget for this project. Details, including how we handle expenses and payments, are in Exhibit B: Fee Schedule.\n- **Follow the Rules:** We\'re sticking to standard rates for things like travel—nothing fancy.\n- **Show Us the Numbers:** Keep those invoices detailed and timely, and we\'ll make sure you get paid for the great work you\'re doing.\n\n---\n\n**3. Timing is Everything (Term)**\n\n- **When We Start:** We\'ll kick things off officially once everything\'s signed off by the Commission\'s board. You\'ll get the green light from us.\n- **Finish Line:** We\'ve got an end date in mind, but if we need to, we can talk about extending our time together.\n\n---\n\n**4. Breaking Up is Hard to Do (Early Termination)**\n\n- **Change of Plans:** Either of us can end this agreement if things aren\'t working out, but let\'s give each other a heads-up.\n- **Money Matters:** If we wrap up early, we\'ll settle up based on the work you\'ve done up to that point.\n\n---\n\n**5. Cover Your Bases (Indemnification and Insurance)**\n\n- **Stay Protected:** We expect you to have certain types of insurance to cover your work. If you\'re bringing in subcontractors, they need to be covered, too.\n\n---\n\n**6. Play by the Rules (Compliance)**\n\n- **Legal Stuff:** Make sure your work follows all relevant laws and regulations. And, of course, keep it professional and fair, no matter who you\'re working with or hiring.\n\n---\n\n**7. Details, Details (Miscellaneous Provisions)**\n\n- **Keeping Records:** Hang onto your project-related documents for a while, just in case we need to look back at something.\n- **Safety First:** If your work takes you onsite, gear up with the required safety equipment.\n- **Changes Along the Way:** Need to adjust our plans? Let\'s talk about it and agree in writing.\n- **In It Together:** Remember, we\'re working towards the same goal. Keep us updated, and we\'ll do the same for you.\n\n---\n\n**Closing**\n\n**So, there you have it!** We\'re excited to have you on board and can\'t wait to see what we\'ll accomplish together. This agreement is our roadmap, so let\'s make this journey a success. If you\'ve got any questions or need clarity on anything, don\'t hesitate to reach out.\n\n**Thanks for joining us,** and here\'s to a fantastic collaboration with the Santa Cruz County Regional Transportation Commission!\n\n---\n\n*Remember, while this video gives you a good overview, make sure to read through the actual agreement documents for all the nitty-gritty details. Let\'s do this!*', 'Script Generated', 1, '{\"id\": \"chatcmpl-BiFzUxmQUwo0kJTksOz6cDkYPlG7h\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 7821, \"prompt_tokens\": 6992, \"completion_tokens\": 829, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"**Hey there! Welcome to our video on the Professional Services Agreement between Santa Cruz County Regional Transportation Commission (let\'s call them the Commission) and our wonderful Consultant—that\'s you! Let\'s dive into the details in a way that\'s easy to understand.**\\n\\n---\\n\\n**Introduction**\\n\\nThis agreement is pulling us together to work on a specific project or service. It\'s like we\'re joining forces to tackle something big, and this document is our game plan.\\n\\n---\\n\\n**1. What You\'ll Be Doing (Duties)**\\n\\n- **Your Mission:** You\'ve got a special set of skills, and we\'re counting on you to use them to deliver some impressive results. We\'ve outlined exactly what we\'re hoping to see in something called Exhibit A: Scope of Services.\\n- **Your A-Team:** You\'ll tell us who\'s who in your team—these are the key players who\'ll help you cross the finish line.\\n- **Stick to the Plan:** If you need to switch out any of these key players or change their roles, just chat with us first. We\'re pretty reasonable folks.\\n- **Keep Us in the Loop:** Send over progress reports with your invoices. Let\'s meet up as needed to ensure everything\'s moving smoothly.\\n\\n---\\n\\n**2. The Deal (Compensation)**\\n\\n- **The Cap:** We\'ve set a maximum budget for this project. Details, including how we handle expenses and payments, are in Exhibit B: Fee Schedule.\\n- **Follow the Rules:** We\'re sticking to standard rates for things like travel—nothing fancy.\\n- **Show Us the Numbers:** Keep those invoices detailed and timely, and we\'ll make sure you get paid for the great work you\'re doing.\\n\\n---\\n\\n**3. Timing is Everything (Term)**\\n\\n- **When We Start:** We\'ll kick things off officially once everything\'s signed off by the Commission\'s board. You\'ll get the green light from us.\\n- **Finish Line:** We\'ve got an end date in mind, but if we need to, we can talk about extending our time together.\\n\\n---\\n\\n**4. Breaking Up is Hard to Do (Early Termination)**\\n\\n- **Change of Plans:** Either of us can end this agreement if things aren\'t working out, but let\'s give each other a heads-up.\\n- **Money Matters:** If we wrap up early, we\'ll settle up based on the work you\'ve done up to that point.\\n\\n---\\n\\n**5. Cover Your Bases (Indemnification and Insurance)**\\n\\n- **Stay Protected:** We expect you to have certain types of insurance to cover your work. If you\'re bringing in subcontractors, they need to be covered, too.\\n\\n---\\n\\n**6. Play by the Rules (Compliance)**\\n\\n- **Legal Stuff:** Make sure your work follows all relevant laws and regulations. And, of course, keep it professional and fair, no matter who you\'re working with or hiring.\\n\\n---\\n\\n**7. Details, Details (Miscellaneous Provisions)**\\n\\n- **Keeping Records:** Hang onto your project-related documents for a while, just in case we need to look back at something.\\n- **Safety First:** If your work takes you onsite, gear up with the required safety equipment.\\n- **Changes Along the Way:** Need to adjust our plans? Let\'s talk about it and agree in writing.\\n- **In It Together:** Remember, we\'re working towards the same goal. Keep us updated, and we\'ll do the same for you.\\n\\n---\\n\\n**Closing**\\n\\n**So, there you have it!** We\'re excited to have you on board and can\'t wait to see what we\'ll accomplish together. This agreement is our roadmap, so let\'s make this journey a success. If you\'ve got any questions or need clarity on anything, don\'t hesitate to reach out.\\n\\n**Thanks for joining us,** and here\'s to a fantastic collaboration with the Santa Cruz County Regional Transportation Commission!\\n\\n---\\n\\n*Remember, while this video gives you a good overview, make sure to read through the actual agreement documents for all the nitty-gritty details. Let\'s do this!*\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749887600, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-14 07:53:20', '2025-06-14 07:53:39', NULL, NULL),
(48, 2, 14, 'kkk', 'consent-forms/l6t4LlxwMn080wY7mq6BkoigyayY0kWytB72Br48.pdf', 'Hi there! Today, we\'re going to walk you through your Professional Services Agreement with the Santa Cruz County Regional Transportation Commission, also known as the COMMISSION. This agreement outlines the work you, the CONSULTANT, will be doing, how you\'ll be compensated, and other key details to ensure a smooth partnership. Let\'s dive in.\n\n**What You\'re Agreeing To:**\nAs the CONSULTANT, you\'re bringing your special skills to the table to deliver results that the COMMISSION will be happy with. This could range from specific services to working on a particular project, all detailed in Exhibit A, which is part of this agreement.\n\nYou\'ll have a team, including key personnel, who are specifically named in the contract. It\'s important to remember that you can\'t change this team or their roles without getting the ok from the COMMISSION first.\n\n**How Your Progress and Meetings Work:**\nYou\'ll need to keep the COMMISSION in the loop with written progress reports alongside each invoice you submit. Plus, your Project Manager and the COMMISSION’s Contract Manager will catch up as needed to discuss how things are going.\n\n**Compensation Details:**\nYour payment has a cap, and it\'s based on time and materials at agreed rates found in Exhibit B. Remember, you can’t exceed this without written approval from the COMMISSION. Expenses for travel and subsistence will follow current U.S. General Service Administration rules. Also, you\'ll be invoiced monthly in arrears based on the satisfactory services provided.\n\n**Term of Agreement:**\nThis contract kicks off on a specific start date and concludes on an end date unless terminated earlier or extended through an amendment. Work begins once you get a notification to proceed from the COMMISSION’s Contract Manager.\n\n**Early Termination:**\nEither party can terminate the agreement under certain conditions, like default or for convenience, which basically means if things aren\'t working out as planned.\n\n**Indemnification, Taxes, and Insurance:**\nYou\'ll need to protect the COMMISSION against any claims or damages that arise from your work. Also, you are responsible for all taxes and contributions for your employees. Insurance is a big deal here - you must have the required coverage, including Workers’ Compensation and General Liability, to name a few.\n\n**Compliance with Laws and Equal Employment Opportunity:**\nYour work must comply with all federal, state, and local laws. Discrimination in employment practices is a no-go, and you\'re expected to uphold a non-discrimination and harassment-free environment.\n\n**Licenses and Independent Contractor Status:**\nIf your work requires a specific license, you\'re responsible for maintaining it. Also, you are considered an independent contractor, not an employee of the COMMISSION.\n\n**Record Keeping and Audits:**\nKeep all records related to this agreement for at least five years after final payment, as they might be reviewed by the COMMISSION or other government bodies.\n\n**Subcontracting:**\nIf you plan to subcontract any of the work, you need prior written approval from the COMMISSION. The same rules apply to your subcontractors.\n\n**Nonassignment and Legal Stuff:**\nYou can’t transfer this agreement to someone else without the COMMISSION’s okay. And, of course, kickbacks or unlawful considerations are strictly forbidden.\n\n**Communication:**\nAll official communications need to be in writing and sent to the addresses provided in the agreement.\n\n**Wrapping Up:**\nThis agreement, including all its exhibits and attachments, is the whole deal between you and the COMMISSION. It supersedes any prior discussions or agreements.\n\nNow that you\'ve heard the summary, please make sure to review the full document before signing. This partnership is important, and we want to ensure you\'re fully informed and comfortable with the agreement. Thanks for walking through this with us, and here\'s to a successful project ahead!', 'Script Generated', 1, '{\"id\": \"chatcmpl-BiG72rZzH3wMNg4RGOA4dh9DcKflL\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 8078, \"prompt_tokens\": 7301, \"completion_tokens\": 777, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hi there! Today, we\'re going to walk you through your Professional Services Agreement with the Santa Cruz County Regional Transportation Commission, also known as the COMMISSION. This agreement outlines the work you, the CONSULTANT, will be doing, how you\'ll be compensated, and other key details to ensure a smooth partnership. Let\'s dive in.\\n\\n**What You\'re Agreeing To:**\\nAs the CONSULTANT, you\'re bringing your special skills to the table to deliver results that the COMMISSION will be happy with. This could range from specific services to working on a particular project, all detailed in Exhibit A, which is part of this agreement.\\n\\nYou\'ll have a team, including key personnel, who are specifically named in the contract. It\'s important to remember that you can\'t change this team or their roles without getting the ok from the COMMISSION first.\\n\\n**How Your Progress and Meetings Work:**\\nYou\'ll need to keep the COMMISSION in the loop with written progress reports alongside each invoice you submit. Plus, your Project Manager and the COMMISSION’s Contract Manager will catch up as needed to discuss how things are going.\\n\\n**Compensation Details:**\\nYour payment has a cap, and it\'s based on time and materials at agreed rates found in Exhibit B. Remember, you can’t exceed this without written approval from the COMMISSION. Expenses for travel and subsistence will follow current U.S. General Service Administration rules. Also, you\'ll be invoiced monthly in arrears based on the satisfactory services provided.\\n\\n**Term of Agreement:**\\nThis contract kicks off on a specific start date and concludes on an end date unless terminated earlier or extended through an amendment. Work begins once you get a notification to proceed from the COMMISSION’s Contract Manager.\\n\\n**Early Termination:**\\nEither party can terminate the agreement under certain conditions, like default or for convenience, which basically means if things aren\'t working out as planned.\\n\\n**Indemnification, Taxes, and Insurance:**\\nYou\'ll need to protect the COMMISSION against any claims or damages that arise from your work. Also, you are responsible for all taxes and contributions for your employees. Insurance is a big deal here - you must have the required coverage, including Workers’ Compensation and General Liability, to name a few.\\n\\n**Compliance with Laws and Equal Employment Opportunity:**\\nYour work must comply with all federal, state, and local laws. Discrimination in employment practices is a no-go, and you\'re expected to uphold a non-discrimination and harassment-free environment.\\n\\n**Licenses and Independent Contractor Status:**\\nIf your work requires a specific license, you\'re responsible for maintaining it. Also, you are considered an independent contractor, not an employee of the COMMISSION.\\n\\n**Record Keeping and Audits:**\\nKeep all records related to this agreement for at least five years after final payment, as they might be reviewed by the COMMISSION or other government bodies.\\n\\n**Subcontracting:**\\nIf you plan to subcontract any of the work, you need prior written approval from the COMMISSION. The same rules apply to your subcontractors.\\n\\n**Nonassignment and Legal Stuff:**\\nYou can’t transfer this agreement to someone else without the COMMISSION’s okay. And, of course, kickbacks or unlawful considerations are strictly forbidden.\\n\\n**Communication:**\\nAll official communications need to be in writing and sent to the addresses provided in the agreement.\\n\\n**Wrapping Up:**\\nThis agreement, including all its exhibits and attachments, is the whole deal between you and the COMMISSION. It supersedes any prior discussions or agreements.\\n\\nNow that you\'ve heard the summary, please make sure to review the full document before signing. This partnership is important, and we want to ensure you\'re fully informed and comfortable with the agreement. Thanks for walking through this with us, and here\'s to a successful project ahead!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749888068, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-14 08:01:07', '2025-06-14 08:01:27', NULL, NULL);
INSERT INTO `consent_forms` (`id`, `user_id`, `avatar_id`, `title`, `pdf_path`, `generated_script`, `status`, `step`, `gpt_response`, `video_id`, `created_at`, `updated_at`, `video_generation_response`, `video_path`) VALUES
(49, 2, 14, 'fgf', 'consent-forms/7vK8jZZT4Od8eynGCHHUootMIUnZwMfd2hoMwzut.pdf', 'Hi there! Let\'s walk you through this agreement so you know exactly what to expect.\n\n**Introduction to the Agreement:**\nThis agreement is between the Santa Cruz County Regional Transportation Commission, which we\'ll call the Commission, and a consultant. It outlines the work the consultant will do, how they\'ll be paid, and other important terms.\n\n**What You\'re Agreeing To:**\n\n1. **Duties:** As a consultant, you\'ll use your special skills to complete specific services satisfactorily for the Commission. You\'ll provide key personnel for the project, and if any changes need to be made to this team, the Commission has to agree to it. You\'ll also need to keep the Commission updated with progress reports and meet as necessary to discuss the project\'s progress.\n\n2. **Compensation:** You\'ll be paid based on the time and materials used, up to a maximum amount agreed upon. This includes your direct costs but doesn\'t cover overhead costs beyond a set rate. You\'ll also be reimbursed for approved out-of-pocket expenses. Payments will be made monthly, based on the satisfactory completion of work.\n\n3. **Term:** The agreement starts and ends on specific dates, but it\'s not effective until the Commission\'s governing board approves it.\n\n4. **Early Termination:** Either party can end the agreement early under certain conditions. If that happens, you\'ll be paid for the work done up to the point of termination.\n\n5. **Indemnification:** You agree to protect the Commission against any losses or damages related to your work.\n\n6. **Insurance:** You need to have specific types of insurance, like Workers\' Compensation and General Liability. If you use subcontractors, they also need to have the proper insurance.\n\n7. **Compliance with Laws and Regulations:** Your work should comply with all relevant laws, regulations, and codes.\n\n8. **Equal Employment Opportunity:** Discrimination in employment practices is strictly prohibited.\n\n9. **Harassment:** Unlawful harassment is not tolerated.\n\n10. **Licenses:** You certify that you have all the necessary licenses for the work.\n\n11. **Independent Consultant Status:** You\'re an independent consultant, not an employee of the Commission, responsible for your own insurance and taxes.\n\n12. **Record Keeping and Audits:** You\'re required to keep detailed records related to the agreement and cooperate with any audits.\n\n13. **Safety:** You must comply with safety regulations, especially when working on site.\n\n14. **Modifications to the Agreement:** Any changes to this agreement must be made in writing and agreed upon by both parties.\n\n15. **Disputes:** Any disagreements will be resolved according to the procedures outlined, keeping in mind the performance of the agreement shouldn\'t be delayed.\n\n16. **Subcontracting and Assignment:** You must get written approval from the Commission before subcontracting any of the work or assigning the agreement to another party.\n\n17. **Notifications:** All notices related to the agreement should be sent to specific addresses mentioned.\n\nThe agreement, including all its terms and conditions, represents the entire understanding between the Commission and you, the consultant.\n\n**Summary:**\nNow that you\'ve heard the summary, please make sure to review the full document before signing. This will ensure you fully understand your rights and obligations under this agreement. Thank you for paying attention, and we look forward to a successful partnership!', 'Script Generated', 1, '{\"id\": \"chatcmpl-BiGMrU7f7fhbTNdhAnRDmyR18uozH\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 7982, \"prompt_tokens\": 7301, \"completion_tokens\": 681, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hi there! Let\'s walk you through this agreement so you know exactly what to expect.\\n\\n**Introduction to the Agreement:**\\nThis agreement is between the Santa Cruz County Regional Transportation Commission, which we\'ll call the Commission, and a consultant. It outlines the work the consultant will do, how they\'ll be paid, and other important terms.\\n\\n**What You\'re Agreeing To:**\\n\\n1. **Duties:** As a consultant, you\'ll use your special skills to complete specific services satisfactorily for the Commission. You\'ll provide key personnel for the project, and if any changes need to be made to this team, the Commission has to agree to it. You\'ll also need to keep the Commission updated with progress reports and meet as necessary to discuss the project\'s progress.\\n\\n2. **Compensation:** You\'ll be paid based on the time and materials used, up to a maximum amount agreed upon. This includes your direct costs but doesn\'t cover overhead costs beyond a set rate. You\'ll also be reimbursed for approved out-of-pocket expenses. Payments will be made monthly, based on the satisfactory completion of work.\\n\\n3. **Term:** The agreement starts and ends on specific dates, but it\'s not effective until the Commission\'s governing board approves it.\\n\\n4. **Early Termination:** Either party can end the agreement early under certain conditions. If that happens, you\'ll be paid for the work done up to the point of termination.\\n\\n5. **Indemnification:** You agree to protect the Commission against any losses or damages related to your work.\\n\\n6. **Insurance:** You need to have specific types of insurance, like Workers\' Compensation and General Liability. If you use subcontractors, they also need to have the proper insurance.\\n\\n7. **Compliance with Laws and Regulations:** Your work should comply with all relevant laws, regulations, and codes.\\n\\n8. **Equal Employment Opportunity:** Discrimination in employment practices is strictly prohibited.\\n\\n9. **Harassment:** Unlawful harassment is not tolerated.\\n\\n10. **Licenses:** You certify that you have all the necessary licenses for the work.\\n\\n11. **Independent Consultant Status:** You\'re an independent consultant, not an employee of the Commission, responsible for your own insurance and taxes.\\n\\n12. **Record Keeping and Audits:** You\'re required to keep detailed records related to the agreement and cooperate with any audits.\\n\\n13. **Safety:** You must comply with safety regulations, especially when working on site.\\n\\n14. **Modifications to the Agreement:** Any changes to this agreement must be made in writing and agreed upon by both parties.\\n\\n15. **Disputes:** Any disagreements will be resolved according to the procedures outlined, keeping in mind the performance of the agreement shouldn\'t be delayed.\\n\\n16. **Subcontracting and Assignment:** You must get written approval from the Commission before subcontracting any of the work or assigning the agreement to another party.\\n\\n17. **Notifications:** All notices related to the agreement should be sent to specific addresses mentioned.\\n\\nThe agreement, including all its terms and conditions, represents the entire understanding between the Commission and you, the consultant.\\n\\n**Summary:**\\nNow that you\'ve heard the summary, please make sure to review the full document before signing. This will ensure you fully understand your rights and obligations under this agreement. Thank you for paying attention, and we look forward to a successful partnership!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749889049, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-14 08:17:29', '2025-06-14 08:17:52', NULL, NULL),
(50, 2, 15, 'df', 'consent-forms/h3cmeDSOxCKNq0no9ojYifeHC4lOB4AbWQuYpM5u.pdf', 'Hi there! Let\'s walk you through this agreement so you know exactly what to expect.\n\n**Introduction:**\nThis contract is between the Santa Cruz County Regional Transportation Commission, which we\'ll call the \"Commission,\" and a consultant, which could be you. This is all about the services or project you\'ll be providing.\n\n**Duties and Responsibilities:**\n- As a consultant, you\'re expected to bring your special skills to the table to achieve the results outlined in Exhibit A, which is part of this agreement.\n- You\'ll have a team, with key roles like the Principal in Charge and Project Manager, who are crucial to the project. Any changes to this team need the Commission\'s okay.\n- Regular updates and meetings with the Commission are part of the deal, to make sure everything is on track.\n\n**Compensation:**\n- There\'s a cap on how much you\'ll be paid, detailed in Exhibit B, and it covers your time and materials.\n- Don\'t worry about overhead costs exceeding the agreed rate, and travel expenses will be in line with U.S. General Service Administration rules.\n- Payments are made monthly, based on the progress and actual costs. But, no payment for work done before the contract is officially approved.\n\n**Term and Termination:**\n- The contract has start and end dates, but it\'s not set in stone until the Commission\'s governing board gives the nod. If things change, or if there\'s a need to end the agreement early, both sides have ways to do so respectfully and fairly.\n\n**Indemnification, Insurance, and Legal Compliance:**\n- Basically, you agree to be responsible for certain risks and to have insurance that covers the work you do.\n- You also promise to follow all federal, state, and local laws, especially regarding safety and nondiscrimination.\n\n**Working Relationship:**\n- You\'re an independent contractor, not an employee. This means you handle your own insurance and taxes.\n- Your independence also means you decide how to get the job done, but the results need to meet the Commission\'s expectations.\n\n**Record-keeping and Audits:**\n- Keep all your work-related documents for at least five years after the project ends, as there might be audits to check everything was above board.\n\n**Equal Opportunity and Harassment:**\n- Fair treatment, without discrimination or harassment, is non-negotiable.\n\n**Licenses and Safety:**\n- Any required licenses must be up to date. Safety, especially on project sites, is a priority.\n\n**Changes and Disputes:**\n- Any changes to this agreement need to be in writing. If there are disagreements, there are steps to resolve them, aiming to keep the project moving forward.\n\n**Conclusion:**\nThis summary highlights the key parts of your contract with the Commission. It\'s essential to review the full document carefully to understand all the details and requirements.\n\nNow that you\'ve heard the summary, please make sure to review the full document before signing. This is a partnership, and we\'re excited to work together on this project!', 'sent', 1, '{\"id\": \"chatcmpl-BiGTEpIxvQLF3GVXYOKIuBaEMUv29\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 7918, \"prompt_tokens\": 7301, \"completion_tokens\": 617, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hi there! Let\'s walk you through this agreement so you know exactly what to expect.\\n\\n**Introduction:**\\nThis contract is between the Santa Cruz County Regional Transportation Commission, which we\'ll call the \\\"Commission,\\\" and a consultant, which could be you. This is all about the services or project you\'ll be providing.\\n\\n**Duties and Responsibilities:**\\n- As a consultant, you\'re expected to bring your special skills to the table to achieve the results outlined in Exhibit A, which is part of this agreement.\\n- You\'ll have a team, with key roles like the Principal in Charge and Project Manager, who are crucial to the project. Any changes to this team need the Commission\'s okay.\\n- Regular updates and meetings with the Commission are part of the deal, to make sure everything is on track.\\n\\n**Compensation:**\\n- There\'s a cap on how much you\'ll be paid, detailed in Exhibit B, and it covers your time and materials.\\n- Don\'t worry about overhead costs exceeding the agreed rate, and travel expenses will be in line with U.S. General Service Administration rules.\\n- Payments are made monthly, based on the progress and actual costs. But, no payment for work done before the contract is officially approved.\\n\\n**Term and Termination:**\\n- The contract has start and end dates, but it\'s not set in stone until the Commission\'s governing board gives the nod. If things change, or if there\'s a need to end the agreement early, both sides have ways to do so respectfully and fairly.\\n\\n**Indemnification, Insurance, and Legal Compliance:**\\n- Basically, you agree to be responsible for certain risks and to have insurance that covers the work you do.\\n- You also promise to follow all federal, state, and local laws, especially regarding safety and nondiscrimination.\\n\\n**Working Relationship:**\\n- You\'re an independent contractor, not an employee. This means you handle your own insurance and taxes.\\n- Your independence also means you decide how to get the job done, but the results need to meet the Commission\'s expectations.\\n\\n**Record-keeping and Audits:**\\n- Keep all your work-related documents for at least five years after the project ends, as there might be audits to check everything was above board.\\n\\n**Equal Opportunity and Harassment:**\\n- Fair treatment, without discrimination or harassment, is non-negotiable.\\n\\n**Licenses and Safety:**\\n- Any required licenses must be up to date. Safety, especially on project sites, is a priority.\\n\\n**Changes and Disputes:**\\n- Any changes to this agreement need to be in writing. If there are disagreements, there are steps to resolve them, aiming to keep the project moving forward.\\n\\n**Conclusion:**\\nThis summary highlights the key parts of your contract with the Commission. It\'s essential to review the full document carefully to understand all the details and requirements.\\n\\nNow that you\'ve heard the summary, please make sure to review the full document before signing. This is a partnership, and we\'re excited to work together on this project!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1749889444, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-14 08:24:03', '2025-06-14 08:26:07', NULL, NULL),
(51, 2, 8, 'Test PDF', 'consent-forms/RwgUvJuUdDHk5qE2TZjKj12IGFkPmqDitop59Rwe.pdf', 'Hi there! Today, we\'re going to walk you through the care instructions you need to follow after your breast surgery. Our aim is to make sure you\'re well-informed and comfortable with the process, ensuring the best possible outcome for your recovery.\n\n**Before Surgery - Two Weeks Prior:**\n- It\'s crucial to stop all smoking and vaping, including nicotine-free options.\n- Avoid certain over-the-counter vitamins and supplements like Ginger, Garlic, and others listed in your document.\n- Please halt the use of NSAIDs, such as Ibuprofen and Aspirin.\n- Inform our staff if you\'re on birth control, hormone replacement, or any weight loss supplements.\n- Remember, you need an adult over 18 to drive you to and from your surgery, and stay with you for the first 24 hours post-procedure.\n\n**Morning of Surgery:**\n- Don\'t eat or drink unless we\'ve told you otherwise.\n- Start using Hibiclens antibacterial soap 5 days before surgery for your showers.\n- No lotions, deodorants, make-up, or metal on your body. Glasses are okay, but no contact lenses.\n- Wear comfy clothes that open in the front. Bring all medications prescribed by your doctor.\n\n**After Surgery:**\n- Keep moving! Gentle walking is good, but avoid any strenuous activities for 6 weeks.\n- Be mindful with personal hygiene; warm showers are fine from the day after surgery, but no baths or swimming for 6 weeks.\n- Follow the dressing and surgical bra guidelines we\'ve provided until your 6-week postoperative visit.\n\n**Wound Care:**\n- Keep the incision covered with gauze until it stops bleeding.\n- If the wound opens slightly, clean it as instructed, but don\'t worry too much. It\'s usually part of the healing process.\n\n**Pain Management:**\n- We\'ll give you guidelines on managing pain with medications like Tylenol and Advil, but we aim to minimize narcotic use due to new regulations.\n\n**Emergency Contacts:**\n- We\'ve provided a list of numbers for non-emergency questions, emergencies, and anything that might worry you post-surgery.\n\n**Remember:**\n- Swelling and some discomfort are normal. Patience is key to your recovery.\n- We have post-op visits scheduled to check on your progress and address any concerns.\n\nPlease pick up a few items like maxi pads for dressing changes, Miralax to help with post-surgery constipation, and paper tape for your incisions.\n\nWe want your experience with Virtu Cosmetic Surgery to be positive and healing. Don\'t hesitate to reach out with questions, concerns, or suggestions. We\'re here to support you every step of the way.\n\nNow that you\'ve heard this overview, please make sure to review the full document before your surgery. This will help ensure you\'re fully prepared and know what to expect. Thanks for listening, and take care!', 'Script Generated', 1, '{\"id\": \"chatcmpl-Bk95WTwut1jjXIvayTIJkJXG6L3qr\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 3282, \"prompt_tokens\": 2688, \"completion_tokens\": 594, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hi there! Today, we\'re going to walk you through the care instructions you need to follow after your breast surgery. Our aim is to make sure you\'re well-informed and comfortable with the process, ensuring the best possible outcome for your recovery.\\n\\n**Before Surgery - Two Weeks Prior:**\\n- It\'s crucial to stop all smoking and vaping, including nicotine-free options.\\n- Avoid certain over-the-counter vitamins and supplements like Ginger, Garlic, and others listed in your document.\\n- Please halt the use of NSAIDs, such as Ibuprofen and Aspirin.\\n- Inform our staff if you\'re on birth control, hormone replacement, or any weight loss supplements.\\n- Remember, you need an adult over 18 to drive you to and from your surgery, and stay with you for the first 24 hours post-procedure.\\n\\n**Morning of Surgery:**\\n- Don\'t eat or drink unless we\'ve told you otherwise.\\n- Start using Hibiclens antibacterial soap 5 days before surgery for your showers.\\n- No lotions, deodorants, make-up, or metal on your body. Glasses are okay, but no contact lenses.\\n- Wear comfy clothes that open in the front. Bring all medications prescribed by your doctor.\\n\\n**After Surgery:**\\n- Keep moving! Gentle walking is good, but avoid any strenuous activities for 6 weeks.\\n- Be mindful with personal hygiene; warm showers are fine from the day after surgery, but no baths or swimming for 6 weeks.\\n- Follow the dressing and surgical bra guidelines we\'ve provided until your 6-week postoperative visit.\\n\\n**Wound Care:**\\n- Keep the incision covered with gauze until it stops bleeding.\\n- If the wound opens slightly, clean it as instructed, but don\'t worry too much. It\'s usually part of the healing process.\\n\\n**Pain Management:**\\n- We\'ll give you guidelines on managing pain with medications like Tylenol and Advil, but we aim to minimize narcotic use due to new regulations.\\n\\n**Emergency Contacts:**\\n- We\'ve provided a list of numbers for non-emergency questions, emergencies, and anything that might worry you post-surgery.\\n\\n**Remember:**\\n- Swelling and some discomfort are normal. Patience is key to your recovery.\\n- We have post-op visits scheduled to check on your progress and address any concerns.\\n\\nPlease pick up a few items like maxi pads for dressing changes, Miralax to help with post-surgery constipation, and paper tape for your incisions.\\n\\nWe want your experience with Virtu Cosmetic Surgery to be positive and healing. Don\'t hesitate to reach out with questions, concerns, or suggestions. We\'re here to support you every step of the way.\\n\\nNow that you\'ve heard this overview, please make sure to review the full document before your surgery. This will help ensure you\'re fully prepared and know what to expect. Thanks for listening, and take care!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1750337722, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-19 12:55:22', '2025-06-19 12:55:46', NULL, NULL),
(52, 2, 8, 'Pranshu\'s Test', 'consent-forms/0FOlWvnoz1SUq0tWdbbLkUSkShYCdmVL8Bxs7Ug2.pdf', 'Hi there! If you\'re gearing up for breast surgery, we\'ve got you covered with some essential care instructions to ensure your recovery goes smoothly. Let’s walk through what you need to know, step by step.\n\n**Before Surgery - Two Weeks Out:**\n- It’s time to hit pause on smoking, vaping, and certain over-the-counter items like vitamins or supplements containing ginger, garlic, and a few others. Also, hold off on NSAIDs like Ibuprofen and Aspirin.\n- Got any medications or supplements you\'re taking, like birth control or weight loss meds? Please tell our staff.\n- Important: You’ll need someone over 18 to drive you to the surgery and be with you for the first 24 hours afterward.\n\n**Morning of Surgery:**\n- Skip breakfast and any drinks unless we\'ve told you otherwise.\n- Start your day with a shower using Hibiclens soap for the five days leading up to your surgery. Skip the lotions and makeup.\n- Leave metal jewelry at home, but plastic is fine for piercings. Glasses over contacts, please, and wear comfy clothes that button or zip up front.\n- Bring all medications prescribed by Dr. Paul.\n\n**The Day After Surgery:**\n- Expect a call from our nurse or tech to check in on you.\n\n**Physical Activity:**\n- Don’t stay in bed. Light walking is good, but no heavy lifting or intense exercise for six weeks.\n- Be careful with how you move; avoid any sudden jerky motions to allow your breast tissue to heal properly.\n\n**Personal Hygiene:**\n- You can take a warm shower from the first day after surgery, but be gentle. No baths, pools, or hot tubs for six weeks.\n\n**Dressings and Surgical Bra:**\n- Keep any surgical tape on until your follow-up appointment unless it falls off. If it does, no worries—just cover the area as instructed.\n- Wear your surgical bra day and night until your six-week visit. Then, you can switch to a non-underwire sports bra until you\'re healed.\n\n**Wound Care:**\n- Keep an eye on your incisions and cover them with gauze until they stop bleeding.\n- If you notice any opening or yellowish discharge, clean the area with hydrogen peroxide and apply the ointment provided.\n\n**Drain Care (If Applicable):**\n- If you have a drain, remember to strip the tubing before recording the output as instructed.\n\n**Questions or Concerns:**\n- Got any questions? We\'re here for you. Call our main office or email us for non-urgent queries. For emergencies, you have Dr. Paul and Katie’s personal numbers.\n\n**Follow-up Visits:**\n- You\'ll have appointments at 1 week, 6 weeks, 6 months, and 1 year post-surgery to ensure everything is healing as it should.\n\n**Remember:**\n- Healing takes time, and it’s normal for the area to be swollen for a bit. Patience is key.\n\n**Pain Management:**\n- We\'re careful with pain meds, adhering to new regulations. We\'ll manage your pain with a careful plan that avoids narcotics as much as possible.\n\nAnd that’s it! We want this experience to be as smooth and comfortable for you as possible. Don’t hesitate to reach out with any questions or feedback. Before you go, make sure to review the full document we provided, and here’s to a swift and smooth recovery!', 'Video Generation Failed', 1, '{\"id\": \"chatcmpl-Bk9GIwFashuBpDFfIwNCrvs2UT5th\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 3398, \"prompt_tokens\": 2688, \"completion_tokens\": 710, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hi there! If you\'re gearing up for breast surgery, we\'ve got you covered with some essential care instructions to ensure your recovery goes smoothly. Let’s walk through what you need to know, step by step.\\n\\n**Before Surgery - Two Weeks Out:**\\n- It’s time to hit pause on smoking, vaping, and certain over-the-counter items like vitamins or supplements containing ginger, garlic, and a few others. Also, hold off on NSAIDs like Ibuprofen and Aspirin.\\n- Got any medications or supplements you\'re taking, like birth control or weight loss meds? Please tell our staff.\\n- Important: You’ll need someone over 18 to drive you to the surgery and be with you for the first 24 hours afterward.\\n\\n**Morning of Surgery:**\\n- Skip breakfast and any drinks unless we\'ve told you otherwise.\\n- Start your day with a shower using Hibiclens soap for the five days leading up to your surgery. Skip the lotions and makeup.\\n- Leave metal jewelry at home, but plastic is fine for piercings. Glasses over contacts, please, and wear comfy clothes that button or zip up front.\\n- Bring all medications prescribed by Dr. Paul.\\n\\n**The Day After Surgery:**\\n- Expect a call from our nurse or tech to check in on you.\\n\\n**Physical Activity:**\\n- Don’t stay in bed. Light walking is good, but no heavy lifting or intense exercise for six weeks.\\n- Be careful with how you move; avoid any sudden jerky motions to allow your breast tissue to heal properly.\\n\\n**Personal Hygiene:**\\n- You can take a warm shower from the first day after surgery, but be gentle. No baths, pools, or hot tubs for six weeks.\\n\\n**Dressings and Surgical Bra:**\\n- Keep any surgical tape on until your follow-up appointment unless it falls off. If it does, no worries—just cover the area as instructed.\\n- Wear your surgical bra day and night until your six-week visit. Then, you can switch to a non-underwire sports bra until you\'re healed.\\n\\n**Wound Care:**\\n- Keep an eye on your incisions and cover them with gauze until they stop bleeding.\\n- If you notice any opening or yellowish discharge, clean the area with hydrogen peroxide and apply the ointment provided.\\n\\n**Drain Care (If Applicable):**\\n- If you have a drain, remember to strip the tubing before recording the output as instructed.\\n\\n**Questions or Concerns:**\\n- Got any questions? We\'re here for you. Call our main office or email us for non-urgent queries. For emergencies, you have Dr. Paul and Katie’s personal numbers.\\n\\n**Follow-up Visits:**\\n- You\'ll have appointments at 1 week, 6 weeks, 6 months, and 1 year post-surgery to ensure everything is healing as it should.\\n\\n**Remember:**\\n- Healing takes time, and it’s normal for the area to be swollen for a bit. Patience is key.\\n\\n**Pain Management:**\\n- We\'re careful with pain meds, adhering to new regulations. We\'ll manage your pain with a careful plan that avoids narcotics as much as possible.\\n\\nAnd that’s it! We want this experience to be as smooth and comfortable for you as possible. Don’t hesitate to reach out with any questions or feedback. Before you go, make sure to review the full document we provided, and here’s to a swift and smooth recovery!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1750338390, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-19 13:06:29', '2025-06-19 13:07:17', NULL, NULL),
(56, 2, 10, 'yoyo', 'consent-forms/ggdR4zOsflwNvFKQ8W2w9dx1dBfz2javO2OHbcg4.pdf', NULL, 'failed', 1, NULL, NULL, '2025-06-19 14:20:42', '2025-06-19 14:21:12', NULL, NULL),
(57, 2, 10, 'yoyo', 'consent-forms/3CsQ7V7SG7GfbLGvRi6WZJ7rd6BGB11v1VfaOEIg.pdf', 'Hi there! Today, we\'re going to walk you through your postoperative care instructions after breast surgery, making sure you know exactly how to take care of yourself for the best possible results. Let’s break it down into simple steps, so you’re fully prepared and know what to expect.\n\n**Two Weeks Before Surgery**: \n- First things first, it’s time to quit smoking and vaping—yes, even the nicotine-free kind. \n- Put a pause on certain over-the-counter vitamins and supplements like Ginger, Garlic, and a few others; they can affect your surgery.\n- Also, stop taking any NSAIDs—that’s your Ibuprofen and similar meds.\n- If you’re on any birth control, hormones, or weight loss meds, do let the staff know.\n- And, very important, make sure you have someone 18 or older to drive you to and from your surgery and to stick with you for 24 hours afterward.\n\n**Morning of Surgery**:\n- Don’t eat or drink unless you’ve been told it’s okay by our team. \n- Shower with an antibacterial soap from neck to toes for 5 days before your surgery, but skip lotions and make-up.\n- Remove all metal objects; plastic is fine for piercings. \n- Wear glasses instead of contact lenses, and choose comfy clothes that open in the front.\n- Remember to bring all medications prescribed by your doctor.\n\n**Physical Activity Post-Surgery**:\n- Don’t just stay in bed; moving a bit is good but keep it gentle. No heavy lifting or strenuous activities for 6 weeks.\n- Be careful about how you move; avoid any sudden or jerking motions.\n\n**Personal Hygiene**:\n- You can shower (carefully) from the day after your surgery, but no baths or swimming for 6 weeks to avoid infection.\n\n**Dressings and Surgical Bra**:\n- Keep any surgical tape on until your first post-op appointment unless it falls off. \n- Wear your surgical bra day and night until your 6-week check-up. No underwire bras until after 6 weeks.\n\n**Wound Care**:\n- Keep the incision covered and clean. If you notice anything unusual, clean it with hydrogen peroxide, apply ointment, and cover it with dry gauze. Remember, no Neosporin.\n\n**If You Have a Drain**:\n- Keep track of the fluid output as instructed. This helps us know when to remove the drains.\n\n**Questions or Concerns**:\n- We’re here for you. Save our contact information, and don’t hesitate to reach out, especially if you notice any signs of infection or have any emergencies.\n\n**Pain Management**:\n- We’re careful with narcotics due to regulations. We’ll manage your pain with alternatives like Tylenol and Advil, and only prescribe narcotics for severe cases. Remember, those can cause constipation, so keep hydrated and maybe use a stool softener.\n\n**Follow-Up Visits**:\n- You’ll have visits at 1 week, 6 weeks, 6 months, and 1 year post-surgery to check on your healing, address any concerns, and update your care plan.\n\nRemember, healing takes time. Swelling and tissue adjustments can take up to a year to settle fully. We’re committed to making sure your recovery is as smooth and comfortable as possible.\n\nPlease review all the details provided before your surgery, and don’t hesitate to reach out with any questions or for clarification. We want your experience with Virtu Cosmetic Surgery to be positive and your recovery swift and satisfactory. Looking forward to seeing you for your follow-up and hearing how you’re doing. Take care!', 'Generating Video', 1, '{\"id\": \"chatcmpl-BkARrNkjgcwBpI0gZlspk4Qr09xzf\", \"model\": \"gpt-4-0125-preview\", \"usage\": {\"total_tokens\": 3438, \"prompt_tokens\": 2688, \"completion_tokens\": 750, \"prompt_tokens_details\": {\"audio_tokens\": 0, \"cached_tokens\": 0}, \"completion_tokens_details\": {\"audio_tokens\": 0, \"reasoning_tokens\": 0, \"accepted_prediction_tokens\": 0, \"rejected_prediction_tokens\": 0}}, \"object\": \"chat.completion\", \"choices\": [{\"index\": 0, \"message\": {\"role\": \"assistant\", \"content\": \"Hi there! Today, we\'re going to walk you through your postoperative care instructions after breast surgery, making sure you know exactly how to take care of yourself for the best possible results. Let’s break it down into simple steps, so you’re fully prepared and know what to expect.\\n\\n**Two Weeks Before Surgery**: \\n- First things first, it’s time to quit smoking and vaping—yes, even the nicotine-free kind. \\n- Put a pause on certain over-the-counter vitamins and supplements like Ginger, Garlic, and a few others; they can affect your surgery.\\n- Also, stop taking any NSAIDs—that’s your Ibuprofen and similar meds.\\n- If you’re on any birth control, hormones, or weight loss meds, do let the staff know.\\n- And, very important, make sure you have someone 18 or older to drive you to and from your surgery and to stick with you for 24 hours afterward.\\n\\n**Morning of Surgery**:\\n- Don’t eat or drink unless you’ve been told it’s okay by our team. \\n- Shower with an antibacterial soap from neck to toes for 5 days before your surgery, but skip lotions and make-up.\\n- Remove all metal objects; plastic is fine for piercings. \\n- Wear glasses instead of contact lenses, and choose comfy clothes that open in the front.\\n- Remember to bring all medications prescribed by your doctor.\\n\\n**Physical Activity Post-Surgery**:\\n- Don’t just stay in bed; moving a bit is good but keep it gentle. No heavy lifting or strenuous activities for 6 weeks.\\n- Be careful about how you move; avoid any sudden or jerking motions.\\n\\n**Personal Hygiene**:\\n- You can shower (carefully) from the day after your surgery, but no baths or swimming for 6 weeks to avoid infection.\\n\\n**Dressings and Surgical Bra**:\\n- Keep any surgical tape on until your first post-op appointment unless it falls off. \\n- Wear your surgical bra day and night until your 6-week check-up. No underwire bras until after 6 weeks.\\n\\n**Wound Care**:\\n- Keep the incision covered and clean. If you notice anything unusual, clean it with hydrogen peroxide, apply ointment, and cover it with dry gauze. Remember, no Neosporin.\\n\\n**If You Have a Drain**:\\n- Keep track of the fluid output as instructed. This helps us know when to remove the drains.\\n\\n**Questions or Concerns**:\\n- We’re here for you. Save our contact information, and don’t hesitate to reach out, especially if you notice any signs of infection or have any emergencies.\\n\\n**Pain Management**:\\n- We’re careful with narcotics due to regulations. We’ll manage your pain with alternatives like Tylenol and Advil, and only prescribe narcotics for severe cases. Remember, those can cause constipation, so keep hydrated and maybe use a stool softener.\\n\\n**Follow-Up Visits**:\\n- You’ll have visits at 1 week, 6 weeks, 6 months, and 1 year post-surgery to check on your healing, address any concerns, and update your care plan.\\n\\nRemember, healing takes time. Swelling and tissue adjustments can take up to a year to settle fully. We’re committed to making sure your recovery is as smooth and comfortable as possible.\\n\\nPlease review all the details provided before your surgery, and don’t hesitate to reach out with any questions or for clarification. We want your experience with Virtu Cosmetic Surgery to be positive and your recovery swift and satisfactory. Looking forward to seeing you for your follow-up and hearing how you’re doing. Take care!\", \"refusal\": null, \"annotations\": []}, \"logprobs\": null, \"finish_reason\": \"stop\"}], \"created\": 1750342951, \"service_tier\": \"default\", \"system_fingerprint\": null}', NULL, '2025-06-19 14:22:31', '2025-06-19 14:23:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consent_signatures`
--

CREATE TABLE `consent_signatures` (
  `id` bigint UNSIGNED NOT NULL,
  `consent_form_id` bigint UNSIGNED NOT NULL,
  `video_id` bigint UNSIGNED DEFAULT NULL,
  `contact_id` bigint UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `viewed_at` timestamp NULL DEFAULT NULL,
  `signed_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `signature_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consent_signatures`
--

INSERT INTO `consent_signatures` (`id`, `consent_form_id`, `video_id`, `contact_id`, `email`, `phone`, `sign_link`, `sent_at`, `viewed_at`, `signed_at`, `status`, `signature_data`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, 1, 'john@example.com', '9876543210', 'http://consentai.gaincafe.com/sign/b0ZQVkhclpEeUof8baozX58DKrIh12mgoWWqi8h3', '2025-06-11 12:08:23', NULL, NULL, 'pending', NULL, '2025-06-11 12:08:23', '2025-06-11 12:08:23'),
(2, 13, NULL, 5, 'sebastian@digivomedia.co.uk', '567788678', 'http://consentai.gaincafe.com/sign/mL4scXk5cd2OUEcfpyPqQeItZDwnLLsUKUhhL33W', '2025-06-11 12:08:23', NULL, NULL, 'pending', NULL, '2025-06-11 12:08:23', '2025-06-11 12:08:23'),
(3, 42, NULL, 6, 'ss@ss.com', 'ww', 'http://consentai.gaincafe.com/sign/D3iNxgUNogo9YVQHiMFcPnjp7wzKC3Uh5q0xLaM4', '2025-06-11 14:38:16', NULL, NULL, 'pending', NULL, '2025-06-11 14:38:16', '2025-06-11 14:38:16'),
(4, 45, NULL, 6, 'ss@ss.com', 'ww', 'http://consentai.gaincafe.com/sign/czvEPo5HCwuJ7yln5CDaFeQvsSLklNlbP2x110Pk', '2025-06-11 14:39:09', NULL, NULL, 'pending', NULL, '2025-06-11 14:39:09', '2025-06-11 14:39:09'),
(5, 45, NULL, 5, 'sebastian@digivomedia.co.uk', '567788678', 'http://consentai.gaincafe.com/sign/232eCl0kOcBqNpqyNINvUfxZNahaNmFts7jZ21Ee', '2025-06-11 14:39:09', NULL, NULL, 'pending', NULL, '2025-06-11 14:39:09', '2025-06-11 14:39:09'),
(6, 45, NULL, 1, 'john@example.com', '9876543210', 'http://consentai.gaincafe.com/sign/CXj3fQkMvJepd0m5OyPCtkIg3vOhLbS2YaDWmLol', '2025-06-11 14:39:09', NULL, NULL, 'pending', NULL, '2025-06-11 14:39:09', '2025-06-11 14:39:09'),
(7, 50, NULL, 1, 'john@example.com', '9876543210', 'http://consentai.gaincafe.com/sign/yQFzb04YA620jDcdLdwkls8oyczFM0vpg5Sl3Nq4', '2025-06-14 08:26:07', NULL, NULL, 'pending', NULL, '2025-06-14 08:26:07', '2025-06-14 08:26:07'),
(8, 50, NULL, 5, 'sebastian@digivomedia.co.uk', '567788678', '4SrYUEom2QVTEkBUXs5vJE9xPFG3ZEedPQRB02bR', '2025-06-14 08:26:07', NULL, NULL, 'pending', NULL, '2025-06-14 08:26:07', '2025-06-14 08:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `company`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'John New', 'Doe', 'john@example.com', '9876543210', 'Acme Corp', 2, '2025-04-29 13:08:29', '2025-04-29 13:08:29'),
(5, 'ggg', 'kk', 'sebastian@digivomedia.co.uk', '567788678', NULL, 2, '2025-06-04 15:40:47', '2025-06-04 15:40:47'),
(6, 'qq', 'dd', 'ss@ss.com', 'ww', 'ww', 2, '2025-06-05 15:37:08', '2025-06-05 15:37:08'),
(7, 'hh', 'nb', 'sales@accessgrantedonline.com', '87656555555', NULL, 4, '2025-06-18 17:24:24', '2025-06-18 17:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact_list`
--

CREATE TABLE `contact_contact_list` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_id` bigint UNSIGNED NOT NULL,
  `contact_list_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_contact_list`
--

INSERT INTO `contact_contact_list` (`id`, `contact_id`, `contact_list_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2025-05-09 09:19:54', '2025-05-09 09:19:54'),
(4, 1, 2, '2025-05-29 11:29:29', '2025-05-29 11:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `contact_lists`
--

CREATE TABLE `contact_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_lists`
--

INSERT INTO `contact_lists` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'T', 2, '2025-05-09 09:19:22', '2025-05-09 09:19:22'),
(2, 'Edited', 'This is test list', 2, '2025-05-29 11:28:40', '2025-05-29 11:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(3, '45d4154b-1929-4122-9290-e1f091d79fcd', 'database', 'default', '{\"uuid\":\"45d4154b-1929-4122-9290-e1f091d79fcd\",\"displayName\":\"App\\\\Jobs\\\\GenerateConsentVideoWithSadTalker\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateConsentVideoWithSadTalker\",\"command\":\"O:42:\\\"App\\\\Jobs\\\\GenerateConsentVideoWithSadTalker\\\":2:{s:14:\\\"\\u0000*\\u0000consentForm\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\ConsentForm\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"avatar\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:9:\\\"\\u0000*\\u0000avatar\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Avatar\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'ErrorException: file_put_contents(/home/forge/consentai.gaincafe.com/storage/app/temp/68540b8528a4d.wav): Failed to open stream: No such file or directory in /home/forge/consentai.gaincafe.com/app/Jobs/GenerateConsentVideoWithSadTalker.php:40\nStack trace:\n#0 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(255): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}()\n#2 /home/forge/consentai.gaincafe.com/app/Jobs/GenerateConsentVideoWithSadTalker.php(40): file_put_contents()\n#3 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\GenerateConsentVideoWithSadTalker->handle()\n#4 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#8 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#9 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#12 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#16 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#20 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#21 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#22 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#28 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#29 /home/forge/consentai.gaincafe.com/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#30 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /home/forge/consentai.gaincafe.com/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#32 /home/forge/consentai.gaincafe.com/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /home/forge/consentai.gaincafe.com/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#34 /home/forge/consentai.gaincafe.com/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#35 /home/forge/consentai.gaincafe.com/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#36 {main}', '2025-06-19 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_23_094721_create_contacts_table', 1),
(6, '2025_04_23_103330_create_contact_lists_table', 1),
(7, '2025_04_23_103345_create_contact_list_pivot_table', 1),
(8, '2024_04_23_000000_create_videos_table', 2),
(9, '2024_04_23_000001_create_quizzes_table', 2),
(10, '2025_05_08_133021_create_questions_table', 2),
(11, '2025_05_08_133132_create_options_table', 2),
(12, '2025_05_08_150406_add_field_to_quizzes_table', 2),
(13, '2025_05_08_150434_add_field_to_videos_table', 2),
(14, '2025_05_09_092709_add_file_path_to_videos_table', 2),
(15, '2025_05_13_101928_create_avatars_table', 2),
(16, '2024_03_14_000000_create_consent_forms_table', 3),
(17, '2025_06_02_105811_create_clients_table', 4),
(18, '2025_06_02_105725_add_role_and_client_id_to_users_table', 5),
(19, '2025_06_03_091631_create_permission_tables', 5),
(20, '2025_06_03_094426_remove_role_from_users_table', 5),
(21, '2025_06_06_075429_add_profile_fields_to_users_table', 6),
(22, '2025_06_06_115030_add_step_to_consent_forms_table', 7),
(23, '2025_06_06_120000_add_fields_to_videos_table', 8),
(24, '2025_06_06_120100_add_video_id_to_consent_forms_table', 8),
(25, '2025_06_06_121000_create_consent_signatures_table', 8),
(26, '2025_06_12_123438_create_user_video_options_table', 9),
(27, '2025_06_13_000001_add_runpod_fields_to_avatars_table', 10),
(28, '2025_06_13_043358_create_jobs_table', 10),
(29, '2025_06_14_000001_add_runpod_status_fields_to_avatars_table', 10),
(30, '2025_06_12_193400_add_video_generation_response_field_to_video_generation_response_table', 11),
(31, '2025_06_19_083953_add_audio_generation_response_field_to_consent_forms_table', 12),
(32, '2025_06_19_084312_add_runpod_metadata_field_to_avatars_table', 12),
(33, '2025_06_13_000000_add_video_service_to_avatars_table', 13),
(34, '2025_06_15_000000_add_indexes_to_avatars_table', 13),
(35, '2025_06_19_151303_make_user_id_nullable_for_system_avatars', 13),
(36, '2025_06_19_151336_make_client_id_nullable_for_system_avatars', 13),
(37, '2025_06_20_000001_add_avatar_source_and_external_columns', 13),
(38, '2025_06_20_100000_add_heygen_fields_to_videos_table', 13),
(39, '2025_06_20_140000_add_heygen_urls_to_videos_table', 13),
(40, '2025_06_20_140100_add_video_path_to_consent_forms_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `option_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage clients', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(2, 'manage users', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(3, 'manage avatars', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(4, 'manage contacts', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(5, 'view dashboard', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(6, 'send consent', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '37e44957a41008edd39a679cd51b734c1c5daf8a92168928b9474f9a056981bf', '[\"*\"]', NULL, NULL, '2025-04-29 13:06:59', '2025-04-29 13:06:59'),
(2, 'App\\Models\\User', 2, 'auth_token', '39a25c2019895e37fbaef22cfb523989e3ec2464b58332202b64fa27a30d4e95', '[\"*\"]', NULL, NULL, '2025-04-29 13:08:16', '2025-04-29 13:08:16'),
(3, 'App\\Models\\User', 2, 'auth_token', '129b3e0e0b72e5e2a30efb445ee0d2fa75b3bd3a525009ba941cd6347cb6963a', '[\"*\"]', '2025-05-15 13:54:36', NULL, '2025-04-29 13:08:19', '2025-05-15 13:54:36'),
(4, 'App\\Models\\User', 2, 'auth_token', '9a5a7b607c21c1f287ed5f87bf69fbfd7d1c4b2f149b2974f50fd7d4e8103896', '[\"*\"]', NULL, NULL, '2025-04-29 14:51:09', '2025-04-29 14:51:09'),
(5, 'App\\Models\\User', 2, 'auth_token', 'd8a8b5b09a0a99ac921d75836ef8780dd9de11fae7bc77ab34a520baabb5612f', '[\"*\"]', NULL, NULL, '2025-04-29 15:22:47', '2025-04-29 15:22:47'),
(6, 'App\\Models\\User', 2, 'auth_token', 'aa2c581688d391141dfeba72dbf07f4bb660e17772da0963bb7a6c0b378f6e0c', '[\"*\"]', NULL, NULL, '2025-04-29 15:23:07', '2025-04-29 15:23:07'),
(7, 'App\\Models\\User', 2, 'auth_token', '2e16ecadfd405c5d1a1d13544b3f9410d6c7ce00ff7462e297a5a7d18beb1672', '[\"*\"]', NULL, NULL, '2025-04-29 15:25:11', '2025-04-29 15:25:11'),
(8, 'App\\Models\\User', 2, 'auth_token', 'd735e8816236e7af29575f56795760ec4544981824825af7c985f3c177608440', '[\"*\"]', NULL, NULL, '2025-04-29 15:28:03', '2025-04-29 15:28:03'),
(9, 'App\\Models\\User', 2, 'auth_token', '99d2a51ddb64b1b0c2d316a637ca976eeb9a91ca0a46c1913a72264e44f260e9', '[\"*\"]', NULL, NULL, '2025-04-29 15:29:01', '2025-04-29 15:29:01'),
(10, 'App\\Models\\User', 2, 'auth_token', '0b60246524f2752256117ae7b0a45325c75ac6ca42a662e3dfb41420a3a72428', '[\"*\"]', NULL, NULL, '2025-04-29 15:32:00', '2025-04-29 15:32:00'),
(11, 'App\\Models\\User', 2, 'auth_token', '455c206375f1cf29c353528639d4e2c3e5ccd4e2f2160c97f79cb77f1f9d7fc9', '[\"*\"]', NULL, NULL, '2025-04-29 15:36:41', '2025-04-29 15:36:41'),
(12, 'App\\Models\\User', 2, 'auth_token', 'fd542d9f80400ee31f1a35353dd535de3fc625ad7f9db9b93b41c45ca9fc11a2', '[\"*\"]', NULL, NULL, '2025-04-29 15:37:40', '2025-04-29 15:37:40'),
(13, 'App\\Models\\User', 2, 'auth_token', '8317f13db47509647a09e041bebfecf0028632a8a95b8fc498b140118bcc1aaa', '[\"*\"]', NULL, NULL, '2025-04-29 15:38:51', '2025-04-29 15:38:51'),
(14, 'App\\Models\\User', 2, 'auth_token', '2977749a2e39c3cdeda96c3a40a79cbc6d2a710d17c4dfd89a1b64cd055a7a52', '[\"*\"]', NULL, NULL, '2025-04-29 15:44:01', '2025-04-29 15:44:01'),
(15, 'App\\Models\\User', 2, 'auth_token', '19541896aa70bf9d4a3dfb3454078f6e9a61e6a5f3617240271bb97191aec37a', '[\"*\"]', NULL, NULL, '2025-04-29 15:44:26', '2025-04-29 15:44:26'),
(16, 'App\\Models\\User', 2, 'auth_token', 'a58df749dfb46e0c962ce86b3feb4dac498d7af61204ef5a154afed2a8035d25', '[\"*\"]', NULL, NULL, '2025-04-29 15:50:25', '2025-04-29 15:50:25'),
(17, 'App\\Models\\User', 2, 'auth_token', '45837f196cdb15eacd654bc2575d838413e958ff6c54c5027989217c6be91af3', '[\"*\"]', NULL, NULL, '2025-04-29 16:32:05', '2025-04-29 16:32:05'),
(18, 'App\\Models\\User', 2, 'auth_token', 'b84ad5a09c8dbad62635bb0f3750a40da20b0417898515f81632dbd261958e07', '[\"*\"]', NULL, NULL, '2025-04-29 16:36:27', '2025-04-29 16:36:27'),
(19, 'App\\Models\\User', 2, 'auth_token', '49900cd4feab05d6b66caf01721000bd2427957a6d6f568a48c3088c2ef1b3f5', '[\"*\"]', NULL, NULL, '2025-04-29 16:45:33', '2025-04-29 16:45:33'),
(20, 'App\\Models\\User', 2, 'auth_token', 'd0946c50f05a2bdc4588ad3f0d7d538098ea876d55a4b080aecea2a8cbfc1e05', '[\"*\"]', NULL, NULL, '2025-04-29 16:49:18', '2025-04-29 16:49:18'),
(21, 'App\\Models\\User', 2, 'auth_token', '6e3f94fa6172a7907eb5034e1df0454431128b03f28f12fdfac01ea7c6ae5b01', '[\"*\"]', NULL, NULL, '2025-04-29 16:49:54', '2025-04-29 16:49:54'),
(22, 'App\\Models\\User', 2, 'auth_token', '5051e04d92571936f8d02d3f00883fba3bce91ed99d5e3202d6e2123a1d692b0', '[\"*\"]', NULL, NULL, '2025-04-29 16:56:21', '2025-04-29 16:56:21'),
(23, 'App\\Models\\User', 2, 'auth_token', '979d16c5596e1e9ffede6a53559c533c096d4c4c171328dd7cdb7214eec362c9', '[\"*\"]', NULL, NULL, '2025-04-29 16:57:51', '2025-04-29 16:57:51'),
(24, 'App\\Models\\User', 2, 'auth_token', '4199f655eda274b4d774275ca481e4bddb564da2836d17d4d3e1a6430be76992', '[\"*\"]', NULL, NULL, '2025-04-29 17:03:41', '2025-04-29 17:03:41'),
(25, 'App\\Models\\User', 2, 'auth_token', '6eb02884a008393f412b1ff87fab5aa1e6e7637eb804ec41b9600b05c1348205', '[\"*\"]', NULL, NULL, '2025-04-29 17:04:25', '2025-04-29 17:04:25'),
(26, 'App\\Models\\User', 2, 'auth_token', 'dd669a1ce888985ae37fd5b3675d0db08cd67c38e21316e4941ed33c6723e09f', '[\"*\"]', NULL, NULL, '2025-04-29 17:14:56', '2025-04-29 17:14:56'),
(27, 'App\\Models\\User', 2, 'auth_token', '099da1a4677e192cdf6de205d4e1915c4a4bfd82ca8313ea894599d766cd509e', '[\"*\"]', NULL, NULL, '2025-04-29 17:18:54', '2025-04-29 17:18:54'),
(28, 'App\\Models\\User', 2, 'auth_token', 'e298ef98e3eb601590fab05ea617b7a1fd65521739feafdafc4db652fd762aca', '[\"*\"]', NULL, NULL, '2025-04-29 17:20:54', '2025-04-29 17:20:54'),
(29, 'App\\Models\\User', 2, 'auth_token', 'e66dc8f9a89124b8a5c7b5ed0fe7c65c8544dc7f3d45152bc369965bff52e341', '[\"*\"]', NULL, NULL, '2025-04-29 17:21:48', '2025-04-29 17:21:48'),
(30, 'App\\Models\\User', 2, 'auth_token', 'd962a23da07828feda8f8ec034e583c659dfbf10ecc1e284ad2c9711c04d43f7', '[\"*\"]', NULL, NULL, '2025-04-29 17:29:31', '2025-04-29 17:29:31'),
(36, 'App\\Models\\User', 2, 'auth_token', '36e22844b1de619a6ddbd15d79090a128daf985b3cc61d855b7989da713f0c1e', '[\"*\"]', NULL, NULL, '2025-04-30 10:52:20', '2025-04-30 10:52:20'),
(37, 'App\\Models\\User', 2, 'auth_token', '5a53698306e93b478c0f40e84088080faa76ec8a7610477fec8fc53b045a8233', '[\"*\"]', '2025-05-01 09:39:57', NULL, '2025-05-01 09:04:57', '2025-05-01 09:39:57'),
(38, 'App\\Models\\User', 2, 'auth_token', 'dc649ca0d9b1a4d1f861185866ba3a2fc1a14b9c37e926e0234246d5a03cba1b', '[\"*\"]', NULL, NULL, '2025-05-05 09:34:42', '2025-05-05 09:34:42'),
(39, 'App\\Models\\User', 2, 'auth_token', '1e6a783ae4bdfc2cc136bbdcbc55094a656a2cae6379a25977488d3eaa07d370', '[\"*\"]', '2025-05-09 09:20:17', NULL, '2025-05-09 09:10:15', '2025-05-09 09:20:17'),
(41, 'App\\Models\\User', 2, 'auth_token', 'ecee459c92a06a94116fb9564b80eddbc27a78d4645f869366738660b2365ffb', '[\"*\"]', '2025-05-18 11:16:15', NULL, '2025-05-15 17:30:48', '2025-05-18 11:16:15'),
(42, 'App\\Models\\User', 2, 'auth_token', 'b99c2bbf97828cf9cc1c701dde6cdba46ad0969059076ca4274b9eda691303af', '[\"*\"]', '2025-06-20 17:51:37', NULL, '2025-05-27 16:26:13', '2025-06-20 17:51:37'),
(43, 'App\\Models\\User', 2, 'auth_token', '45b4d49ee9f6ebac98db40f4b6d46cd5d38c7ecd5aa6252e8c75cde95fc83a4f', '[\"*\"]', '2025-06-19 09:35:46', NULL, '2025-05-27 16:27:57', '2025-06-19 09:35:46'),
(44, 'App\\Models\\User', 2, 'auth_token', 'fadaf1c632c090281d70db79165b22b2373957d6e5c4e9fe681021f86e22d76f', '[\"*\"]', '2025-06-05 12:19:57', NULL, '2025-05-27 16:54:04', '2025-06-05 12:19:57'),
(45, 'App\\Models\\User', 2, 'auth_token', '613a0eeeb3857a68d2828019d56d5436eb32c3c70d71e4c02ef1dcfd3c9c2378', '[\"*\"]', '2025-06-05 08:48:30', NULL, '2025-05-28 13:26:06', '2025-06-05 08:48:30'),
(46, 'App\\Models\\User', 2, 'auth_token', '19b5dbbbd913a84b0c8984bace1a5e5064c3538258827bf281884b483e4638c4', '[\"*\"]', NULL, NULL, '2025-05-30 07:05:28', '2025-05-30 07:05:28'),
(47, 'App\\Models\\User', 2, 'auth_token', 'c0987b3834a891c293329adb13293c657238d5435a3b8938eca651891924ff3f', '[\"*\"]', '2025-06-20 18:03:43', NULL, '2025-05-30 07:07:01', '2025-06-20 18:03:43'),
(48, 'App\\Models\\User', 2, 'auth_token', 'b4ce577919953a44dc5ac28e24d0d2b128eee4080e9d21e44651ec5b8edde02c', '[\"*\"]', '2025-06-20 17:49:45', NULL, '2025-05-30 07:56:12', '2025-06-20 17:49:45'),
(49, 'App\\Models\\User', 2, 'auth_token', '6282b75424fbd842f95c3b9f11de3bd21b5cf4c0850b248149b6a11261498116', '[\"*\"]', '2025-06-10 17:17:44', NULL, '2025-05-31 06:52:07', '2025-06-10 17:17:44'),
(50, 'App\\Models\\User', 2, 'auth_token', '49c961eaf16ece7a3837246be1d35818e816024067324ce8b911c81ed5564f5a', '[\"*\"]', '2025-06-18 17:23:52', NULL, '2025-05-31 07:06:02', '2025-06-18 17:23:52'),
(51, 'App\\Models\\User', 2, 'auth_token', '347224b902631166dc28ef35d7032c0a2e316aa90738f226225d3e1691e908b1', '[\"*\"]', '2025-06-16 14:43:12', NULL, '2025-05-31 09:28:45', '2025-06-16 14:43:12'),
(52, 'App\\Models\\User', 2, 'auth_token', '21b06f1e10762c5d670c226c0230c80dc45a8eaba5d725fb414d01982f81d019', '[\"*\"]', '2025-06-20 17:52:13', NULL, '2025-05-31 09:29:53', '2025-06-20 17:52:13'),
(53, 'App\\Models\\User', 2, 'auth_token', 'fa9e5e1587fa8e65b7f82bdd010a369adc9a680dfd11019e5440bfc3af41205c', '[\"*\"]', '2025-06-16 16:42:42', NULL, '2025-05-31 09:39:58', '2025-06-16 16:42:42'),
(54, 'App\\Models\\User', 2, 'auth_token', 'a7478d476e4e93210a6a88120a2321f7744244d7593fe444eb356afcfcaa88d8', '[\"*\"]', '2025-06-18 18:54:04', NULL, '2025-06-01 05:57:29', '2025-06-18 18:54:04'),
(55, 'App\\Models\\User', 2, 'auth_token', '9486e1f3f6c5f120d264f9c2631b51d21a233c662bd44e0e0bedda83801c68d4', '[\"*\"]', '2025-06-01 11:56:35', NULL, '2025-06-01 11:53:33', '2025-06-01 11:56:35'),
(56, 'App\\Models\\User', 2, 'auth_token', '8e8632639dc1c17468038a9d3c4bc229dd9ab6c97f5f19be70784200e0801ade', '[\"*\"]', '2025-06-20 17:50:51', NULL, '2025-06-01 11:57:21', '2025-06-20 17:50:51'),
(57, 'App\\Models\\User', 2, 'auth_token', '05789d5041b41480ea447125e4970894385684f6b0d3742bb3f3a8a02135c1d3', '[\"*\"]', '2025-06-03 17:31:31', NULL, '2025-06-03 15:34:11', '2025-06-03 17:31:31'),
(58, 'App\\Models\\User', 2, 'auth_token', '456c5268dc9da290c421caaebced368cd669c49b3c0ab47bead2a0d23f33618b', '[\"*\"]', '2025-06-04 10:46:40', NULL, '2025-06-04 09:12:07', '2025-06-04 10:46:40'),
(59, 'App\\Models\\User', 2, 'auth_token', 'd83fb280d0a68ff3d5d939cd2552c1571dba59f5bc73667a25c1a001db3595e9', '[\"*\"]', '2025-06-04 11:51:57', NULL, '2025-06-04 10:47:03', '2025-06-04 11:51:57'),
(60, 'App\\Models\\User', 3, 'impersonation', 'f3ac124971a1a57a378974a0911cb1a8d8cb94031184cdb4437b32aaf9709894', '[\"*\"]', NULL, NULL, '2025-06-04 11:51:58', '2025-06-04 11:51:58'),
(61, 'App\\Models\\User', 2, 'auth_token', '11733ddf3fade3625ff4aa5201048044ce7ddbbbaa0cbbac321b6e5b1be151b0', '[\"*\"]', '2025-06-04 11:57:17', NULL, '2025-06-04 11:56:50', '2025-06-04 11:57:17'),
(62, 'App\\Models\\User', 3, 'impersonation', 'c41f1bad1b071410187b8ee20e7000268ac6b0b725fba34b3b99216c74f062bd', '[\"*\"]', NULL, NULL, '2025-06-04 11:57:17', '2025-06-04 11:57:17'),
(63, 'App\\Models\\User', 2, 'auth_token', '96d79e782018e267206647f1fb29edb4421d705f6c2fe0d369af4460cd28b694', '[\"*\"]', '2025-06-04 12:02:15', NULL, '2025-06-04 12:01:34', '2025-06-04 12:02:15'),
(64, 'App\\Models\\User', 3, 'impersonation', '54cf23d6b4c7b4fcd7fd5b71099dd898a31243192dfbc13b482d3739c98f071c', '[\"*\"]', NULL, NULL, '2025-06-04 12:02:15', '2025-06-04 12:02:15'),
(65, 'App\\Models\\User', 2, 'auth_token', '7db1b9281443c30fdcfdd9cf7ccbd6cacbbd18f69d0824a47a0917706a80d14a', '[\"*\"]', '2025-06-04 12:11:15', NULL, '2025-06-04 12:11:07', '2025-06-04 12:11:15'),
(66, 'App\\Models\\User', 3, 'impersonation', 'a7d7e7d6a7c076b4af622872f3bc4e882bc27161199fe740ec9d03a549899b1b', '[\"*\"]', NULL, NULL, '2025-06-04 12:11:15', '2025-06-04 12:11:15'),
(67, 'App\\Models\\User', 2, 'auth_token', '7cb73437b2127bcce440276690ec9cedc37b237d94646d55c61ebfb34a364656', '[\"*\"]', '2025-06-04 12:14:07', NULL, '2025-06-04 12:13:04', '2025-06-04 12:14:07'),
(68, 'App\\Models\\User', 3, 'impersonation', '75d995065a90d89c548798b7001aa5b7fd4aa74952055da0d0a66a17bf41102b', '[\"*\"]', NULL, NULL, '2025-06-04 12:14:07', '2025-06-04 12:14:07'),
(69, 'App\\Models\\User', 2, 'auth_token', '823bd6b03f01145cf608418d6723b2206cc245197896e37cbea08bec86794a53', '[\"*\"]', '2025-06-04 12:16:31', NULL, '2025-06-04 12:16:01', '2025-06-04 12:16:31'),
(70, 'App\\Models\\User', 3, 'impersonation', 'b90d928ff6c6cff996878397a6cc459df2acd144aecaf665b78fa0fbc1bf4096', '[\"*\"]', NULL, NULL, '2025-06-04 12:16:31', '2025-06-04 12:16:31'),
(71, 'App\\Models\\User', 2, 'auth_token', 'f32e873a38247d21faa37351c9a728cb4c3968f7eeb5d2c13496215b98c07db1', '[\"*\"]', '2025-06-04 12:18:46', NULL, '2025-06-04 12:17:59', '2025-06-04 12:18:46'),
(72, 'App\\Models\\User', 3, 'impersonation', 'e96e7658a33654107aead2327eef20cc6ab6ef8de6b33ee0d4c02054708c7cda', '[\"*\"]', NULL, NULL, '2025-06-04 12:18:46', '2025-06-04 12:18:46'),
(73, 'App\\Models\\User', 2, 'auth_token', '737568e2f3cbb3f7417c00f03993c16acc58f933a741e55547679314c82badf7', '[\"*\"]', '2025-06-04 12:29:51', NULL, '2025-06-04 12:20:49', '2025-06-04 12:29:51'),
(74, 'App\\Models\\User', 3, 'impersonation', '00328f1372631e56e4363de29c048c8baab2be5b83a0cf246dcb50d81fa387df', '[\"*\"]', NULL, NULL, '2025-06-04 12:21:01', '2025-06-04 12:21:01'),
(75, 'App\\Models\\User', 3, 'impersonation', 'fa35b77c09909897d809cfde7e08217fba5c40a545c9368fcd033890f682170e', '[\"*\"]', NULL, NULL, '2025-06-04 12:22:02', '2025-06-04 12:22:02'),
(76, 'App\\Models\\User', 2, 'auth_token', '19dca0a23d8097a54d0021fa47f0b8851258d6f9cc4032aba1ac7ed0f99059bd', '[\"*\"]', '2025-06-12 14:37:25', NULL, '2025-06-05 08:03:21', '2025-06-12 14:37:25'),
(77, 'App\\Models\\User', 2, 'auth_token', 'db09e1c0618387e74c8d647a759b2252788e16ea84d7a804f4e430d495124812', '[\"*\"]', '2025-06-20 17:57:59', NULL, '2025-06-05 08:48:41', '2025-06-20 17:57:59'),
(78, 'App\\Models\\User', 2, 'auth_token', '0c76b412675caa1cc672b1f970ceb2b77075063660d1a496e0e8902ed3976874', '[\"*\"]', '2025-06-12 14:27:40', NULL, '2025-06-05 09:54:24', '2025-06-12 14:27:40'),
(79, 'App\\Models\\User', 2, 'auth_token', '9fe5836fa18a729e3767a5dad82a2638adaa72a07dd110356957628129b23bd4', '[\"*\"]', '2025-06-17 14:58:48', NULL, '2025-06-05 17:56:25', '2025-06-17 14:58:48'),
(80, 'App\\Models\\User', 2, 'auth_token', 'f4b069e0d3636434bca0c342b861af92b5a751a0ae5fba48ffed8207b1fcbe09', '[\"*\"]', '2025-06-09 16:08:32', NULL, '2025-06-09 16:08:26', '2025-06-09 16:08:32'),
(81, 'App\\Models\\User', 2, 'auth_token', 'c010d08e5d3b7915331e91aa347796507fbb39e39e496449de2ab9629001b90f', '[\"*\"]', '2025-06-11 12:08:23', NULL, '2025-06-11 12:07:22', '2025-06-11 12:08:23'),
(82, 'App\\Models\\User', 2, 'auth_token', '3054dfc686746f4d273f2a6449274e50b4e0fa5f285534d1764e650b4848103d', '[\"*\"]', '2025-06-11 12:31:08', NULL, '2025-06-11 12:30:55', '2025-06-11 12:31:08'),
(83, 'App\\Models\\User', 2, 'auth_token', 'e3e241407542bf56666a04b05bf01ccbb34bfc492413afb841d43a3503844d40', '[\"*\"]', '2025-06-16 10:51:16', NULL, '2025-06-16 10:38:29', '2025-06-16 10:51:16'),
(84, 'App\\Models\\User', 3, 'impersonation', 'a4d347a5d90d4abf1596a0024ee74082d68b9346c9d20d1fee080b63f7ebbdde', '[\"*\"]', '2025-06-16 10:46:38', NULL, '2025-06-16 10:44:41', '2025-06-16 10:46:38'),
(85, 'App\\Models\\User', 3, 'auth_token', 'f0e512f25c0b84ee6df4228325a738e80c5a9924cb6bd11db1185fce7a055969', '[\"*\"]', '2025-06-16 10:47:04', NULL, '2025-06-16 10:47:03', '2025-06-16 10:47:04'),
(86, 'App\\Models\\User', 2, 'auth_token', 'acfefb40795860ec5a6b1e324227d8fb3977dd4cfb586105ec594a3cb3c4b548', '[\"*\"]', '2025-06-16 11:55:16', NULL, '2025-06-16 10:53:25', '2025-06-16 11:55:16'),
(87, 'App\\Models\\User', 2, 'auth_token', '8aa1ff93f2f44cd32fd23f642e3ea32aae7286e8edff95b8c7f37b350f2f18f7', '[\"*\"]', '2025-06-16 14:07:17', NULL, '2025-06-16 12:11:25', '2025-06-16 14:07:17'),
(88, 'App\\Models\\User', 3, 'impersonation', '32ff264e714f34f9e31e98169408165fd27878cc55e40d313cda89d7a83550c6', '[\"*\"]', '2025-06-16 13:22:18', NULL, '2025-06-16 13:15:26', '2025-06-16 13:22:18'),
(89, 'App\\Models\\User', 3, 'impersonation', '9347612139c1786e2d2cd6c5309d3cf105355eb09d40a244055fc5693bdb9484', '[\"*\"]', NULL, NULL, '2025-06-16 13:26:57', '2025-06-16 13:26:57'),
(90, 'App\\Models\\User', 3, 'impersonation', '2e5b526b5d716e7c0bad5412b51339fb4b3f8862e560347bf495ae765302aff3', '[\"*\"]', '2025-06-16 14:03:45', NULL, '2025-06-16 14:03:16', '2025-06-16 14:03:45'),
(91, 'App\\Models\\User', 2, 'auth_token', '78a2440f92431803535694309edf63966aa37ff7b25d70fdcc5af49d7e691d30', '[\"*\"]', '2025-06-16 14:15:48', NULL, '2025-06-16 14:07:48', '2025-06-16 14:15:48'),
(92, 'App\\Models\\User', 2, 'auth_token', '332816e3c63108a4218fc0d8d7a9d5e32ab40664932944d862096c9a5556e133', '[\"*\"]', '2025-06-16 14:32:36', NULL, '2025-06-16 14:16:54', '2025-06-16 14:32:36'),
(93, 'App\\Models\\User', 3, 'impersonation', '870b7bd06ce07bb1bf60301ad55cb8d267c536f9ef05809d5d399561eb166948', '[\"*\"]', '2025-06-16 14:32:18', NULL, '2025-06-16 14:28:04', '2025-06-16 14:32:18'),
(94, 'App\\Models\\User', 2, 'auth_token', '8431f756547e837a30024115fd5a51b11c09364495c24c269c978bc72790e79b', '[\"*\"]', '2025-06-16 14:32:54', NULL, '2025-06-16 14:32:53', '2025-06-16 14:32:54'),
(95, 'App\\Models\\User', 2, 'auth_token', 'd59421e871b336dbd635a398531ae42963d95b9adb9fa383c127379d71174b9d', '[\"*\"]', '2025-06-16 15:19:49', NULL, '2025-06-16 14:33:20', '2025-06-16 15:19:49'),
(96, 'App\\Models\\User', 2, 'auth_token', '56a4292f66ae07284197e7b500182b7969c4bea32066682fc3b0c544612e2dd8', '[\"*\"]', '2025-06-16 15:35:51', NULL, '2025-06-16 15:20:05', '2025-06-16 15:35:51'),
(97, 'App\\Models\\User', 3, 'impersonation', 'fe1fdd1ea73556c5c0fff9037b77de74fd23c3697aa2796f7a0d640f3ef65ab5', '[\"*\"]', '2025-06-16 15:32:09', NULL, '2025-06-16 15:32:00', '2025-06-16 15:32:09'),
(98, 'App\\Models\\User', 2, 'auth_token', 'f6a17ec1cb003536f40a4d209c8dda828544e21e86359550f16df56be50288bf', '[\"*\"]', '2025-06-16 15:32:28', NULL, '2025-06-16 15:32:28', '2025-06-16 15:32:28'),
(99, 'App\\Models\\User', 2, 'auth_token', '704a8a0ab2c98b207a3cf676e25e6c43a70975eb8c8ec9c5afc14cd5a6df542f', '[\"*\"]', '2025-06-16 15:36:19', NULL, '2025-06-16 15:36:10', '2025-06-16 15:36:19'),
(100, 'App\\Models\\User', 3, 'impersonation', 'c44b1987fcf1255c7a46e2c8cc1a606afd3effcff0cf6c38a3bf056f280ef2d1', '[\"*\"]', '2025-06-16 15:36:28', NULL, '2025-06-16 15:36:19', '2025-06-16 15:36:28'),
(101, 'App\\Models\\User', 2, 'auth_token', '58b140cc3e3e1572fc1d68d23460d98512fe10f7a7fe84698f28bd3459b11cc8', '[\"*\"]', '2025-06-16 15:39:26', NULL, '2025-06-16 15:36:41', '2025-06-16 15:39:26'),
(102, 'App\\Models\\User', 3, 'impersonation', '57bb3f9a91a671b23ca1ee34a51d89ce033974662db0eb931a396aa149cb0e37', '[\"*\"]', NULL, NULL, '2025-06-16 15:37:46', '2025-06-16 15:37:46'),
(103, 'App\\Models\\User', 2, 'auth_token', 'b31e398504857f65e2c33d42e0ade0952fa7421d32d73dffbabe3102d7210c9e', '[\"*\"]', '2025-06-16 15:41:41', NULL, '2025-06-16 15:39:41', '2025-06-16 15:41:41'),
(104, 'App\\Models\\User', 3, 'impersonation', 'd645a77c397aa0a9329d786f972cc033962be52d0c7f9fa45049c796ac0599e8', '[\"*\"]', NULL, NULL, '2025-06-16 15:39:50', '2025-06-16 15:39:50'),
(105, 'App\\Models\\User', 2, 'auth_token', 'd6b6f6d49859013d1e2cb2513f112ce22b2d7e56c428fe3b337e8d053ea6d3b6', '[\"*\"]', '2025-06-16 15:42:08', NULL, '2025-06-16 15:41:58', '2025-06-16 15:42:08'),
(106, 'App\\Models\\User', 3, 'impersonation', '11f2956232efde0e40ee29009e23de89f782a9f53f58d05e5e0c93bcacb5460c', '[\"*\"]', '2025-06-16 17:29:53', NULL, '2025-06-16 15:42:08', '2025-06-16 17:29:53'),
(107, 'App\\Models\\User', 6, 'impersonation', 'be5d9052bce555670f8ef1af9d262e9dd92604e342463697fdc876f0a866fc89', '[\"*\"]', '2025-06-17 16:03:20', NULL, '2025-06-17 16:02:38', '2025-06-17 16:03:20'),
(108, 'App\\Models\\User', 6, 'impersonation', '842f40c0a273cf2d90ec2b3ed06c9600d975c9e584064526414261595afd1399', '[\"*\"]', '2025-06-17 16:03:37', NULL, '2025-06-17 16:03:36', '2025-06-17 16:03:37'),
(109, 'App\\Models\\User', 6, 'impersonation', '0068e8ca7d96f4e68be0604dd31a0fe8f99339c02f47c7733c0224588b7292d5', '[\"*\"]', '2025-06-17 16:35:14', NULL, '2025-06-17 16:21:41', '2025-06-17 16:35:14'),
(110, 'App\\Models\\User', 4, 'impersonation', '6d02d4703b3bf742e4de3eb52d720f844908054f846d74084bfcc9083c391125', '[\"*\"]', '2025-06-18 17:24:25', NULL, '2025-06-18 17:23:52', '2025-06-18 17:24:25'),
(111, 'App\\Models\\User', 2, 'auth_token', '72739c1ebdb4fb29e726541b9eb7fea4040227560c0144afc65d78a096ee40c8', '[\"*\"]', '2025-06-20 15:31:44', NULL, '2025-06-20 15:17:17', '2025-06-20 15:31:44'),
(112, 'App\\Models\\User', 2, 'auth_token', '9d5851f70a0e9bd5ba8583564bbf6aee8343199b21d55ecc434fd8b8962c4476', '[\"*\"]', '2025-06-20 16:14:33', NULL, '2025-06-20 15:32:32', '2025-06-20 16:14:33'),
(113, 'App\\Models\\User', 6, 'impersonation', '37dea1c1cfbc5018724229103ca6d4835f557110263fc84f72c4f792ee0eb132', '[\"*\"]', '2025-06-20 15:49:59', NULL, '2025-06-20 15:49:53', '2025-06-20 15:49:59'),
(114, 'App\\Models\\User', 2, 'auth_token', '8bea248160f5dbc30719b6f8393e9bd12f66283dadf3134fd7f204f661d99d5c', '[\"*\"]', '2025-06-20 16:24:06', NULL, '2025-06-20 16:17:03', '2025-06-20 16:24:06'),
(115, 'App\\Models\\User', 2, 'auth_token', 'ad13734320bd9ae982e8e173770b416bd338a8412c2e4ccfa783b20f7375d2d7', '[\"*\"]', '2025-06-20 18:04:06', NULL, '2025-06-20 16:27:10', '2025-06-20 18:04:06'),
(116, 'App\\Models\\User', 6, 'impersonation', '3a6f5388841f8e054a4eb8998d3548797642cbcb6f82af375b4c8418f519c817', '[\"*\"]', '2025-06-20 16:36:46', NULL, '2025-06-20 16:28:08', '2025-06-20 16:36:46'),
(117, 'App\\Models\\User', 6, 'impersonation', '8c89317d87cbfaebdedad246b90a6462d04cba9f0e6e1d9056431123386b4d6b', '[\"*\"]', NULL, NULL, '2025-06-20 16:33:29', '2025-06-20 16:33:29'),
(118, 'App\\Models\\User', 6, 'impersonation', 'ce8db91767c33d0a0afad5941992b71b69c61dbd0e20edd862416ebd371d9f6f', '[\"*\"]', '2025-06-20 16:41:17', NULL, '2025-06-20 16:37:13', '2025-06-20 16:41:17'),
(119, 'App\\Models\\User', 4, 'impersonation', 'cef07c5f8303ad2f938e79a4932f057cda27e19c0a442253b71426a921ecab06', '[\"*\"]', '2025-06-20 16:51:28', NULL, '2025-06-20 16:50:29', '2025-06-20 16:51:28'),
(120, 'App\\Models\\User', 6, 'impersonation', '564623b430c7e0500d1e5e4ba7bc4240db35109e4b4a9dbfcf5710c125ec9a1c', '[\"*\"]', '2025-06-20 16:53:06', NULL, '2025-06-20 16:52:26', '2025-06-20 16:53:06'),
(121, 'App\\Models\\User', 6, 'impersonation', '40f9e897c2e08bb6f332c731c476791a08ba4b47288fed265cfa58ed032b218c', '[\"*\"]', '2025-06-20 16:53:43', NULL, '2025-06-20 16:53:14', '2025-06-20 16:53:43'),
(122, 'App\\Models\\User', 6, 'impersonation', '5cc7e8e4191ab14c25df4d9eb67d60e83a44016da67ff49f044087d71a2eccef', '[\"*\"]', '2025-06-20 16:54:15', NULL, '2025-06-20 16:53:53', '2025-06-20 16:54:15'),
(123, 'App\\Models\\User', 6, 'impersonation', '82dda3bddb4c20e7e7ec7d8e03b8e19267b4d67599562f468cd09562dbbdfad5', '[\"*\"]', '2025-06-20 17:03:04', NULL, '2025-06-20 16:55:56', '2025-06-20 17:03:04'),
(124, 'App\\Models\\User', 6, 'impersonation', '942b171590fe913d66f901de2596bd9a65f909c6b64bdb1601b321577191c186', '[\"*\"]', '2025-06-20 17:03:26', NULL, '2025-06-20 17:03:25', '2025-06-20 17:03:26'),
(125, 'App\\Models\\User', 6, 'impersonation', 'e0f4182590197c6205a9feb3b8180599bcceb79d962668a1008e3297781a5e3c', '[\"*\"]', '2025-06-20 17:12:30', NULL, '2025-06-20 17:05:11', '2025-06-20 17:12:30'),
(126, 'App\\Models\\User', 6, 'impersonation', '1738a89707922d50f6618b305876c54656112ee090a8b80da8f5bd21cf26a684', '[\"*\"]', NULL, NULL, '2025-06-20 17:05:25', '2025-06-20 17:05:25'),
(127, 'App\\Models\\User', 6, 'impersonation', '756211692b8e1b42318e3fcd7c4686c7cf7696cba3574fd82b96d32b41161a13', '[\"*\"]', NULL, NULL, '2025-06-20 17:14:46', '2025-06-20 17:14:46'),
(128, 'App\\Models\\User', 6, 'impersonation', 'b83e490caefc6b2cf3087276b3b978aed9bf2ce9aee3a0003910f07f3d81d819', '[\"*\"]', NULL, NULL, '2025-06-20 17:18:33', '2025-06-20 17:18:33'),
(129, 'App\\Models\\User', 6, 'impersonation', '9267ca6a109fafa9f0090cdbea6c10add6223e051a896478ed2563f831267918', '[\"*\"]', NULL, NULL, '2025-06-20 17:18:46', '2025-06-20 17:18:46'),
(130, 'App\\Models\\User', 6, 'impersonation', 'c3747443375393424d5290b339118c894693d79020d0013b6ba5c23b29aaaaea', '[\"*\"]', NULL, NULL, '2025-06-20 17:20:30', '2025-06-20 17:20:30'),
(131, 'App\\Models\\User', 6, 'impersonation', 'c2f9686be34ddbcb337ad4657575794d76a25540bc90c7701871b9ddd5fbc975', '[\"*\"]', NULL, NULL, '2025-06-20 17:21:08', '2025-06-20 17:21:08'),
(132, 'App\\Models\\User', 6, 'impersonation', '094216f501990a498a0334eccbc98511d5d3e9a01399e7929144c3322b93f02b', '[\"*\"]', '2025-06-20 17:22:05', NULL, '2025-06-20 17:22:03', '2025-06-20 17:22:05'),
(133, 'App\\Models\\User', 6, 'impersonation', 'd5cf01422aa6002d5b3217ae8b07fde55c074484a5cb66ec1cb65e5209e28616', '[\"*\"]', '2025-06-20 17:23:00', NULL, '2025-06-20 17:22:18', '2025-06-20 17:23:00'),
(134, 'App\\Models\\User', 6, 'impersonation', '00816bf0041e33a2b8f3a5a7ceda05f92d575f4587133fb774f03a59b0899822', '[\"*\"]', '2025-06-20 17:26:46', NULL, '2025-06-20 17:23:25', '2025-06-20 17:26:46'),
(135, 'App\\Models\\User', 6, 'impersonation', 'fc8b26a30acfa480a302632d81e387d17967e570d19cf0330a34a308fdc672de', '[\"*\"]', '2025-06-20 17:27:37', NULL, '2025-06-20 17:27:34', '2025-06-20 17:27:37'),
(136, 'App\\Models\\User', 6, 'impersonation', '7e017fe355152f304308a9dafa8f35ba82c6ab730fcff4826ac62b5db645a77f', '[\"*\"]', '2025-06-20 17:28:05', NULL, '2025-06-20 17:28:04', '2025-06-20 17:28:05'),
(137, 'App\\Models\\User', 6, 'impersonation', '7975f0228025883f69705d023d45e662be8bc22dbed71c2fcffb2bd88272b240', '[\"*\"]', '2025-06-20 17:29:02', NULL, '2025-06-20 17:29:01', '2025-06-20 17:29:02'),
(138, 'App\\Models\\User', 6, 'impersonation', 'b452d56f91b0055b4ac910cdefa0d0ec5656d2ee54c9b6ce00079de29a9e1032', '[\"*\"]', '2025-06-20 17:31:44', NULL, '2025-06-20 17:30:26', '2025-06-20 17:31:44'),
(139, 'App\\Models\\User', 2, 'auth_token', '753c472862b4d377a54c2459070261c48c2c367bca07b92365ddccb4e20dc9cd', '[\"*\"]', '2025-06-20 17:51:10', NULL, '2025-06-20 17:51:10', '2025-06-20 17:51:10'),
(140, 'App\\Models\\User', 2, 'auth_token', 'feb21b707a3e24fe432d1dc9402a44ba606abb155189e930912568e282ab007a', '[\"*\"]', '2025-06-20 18:03:23', NULL, '2025-06-20 17:52:24', '2025-06-20 18:03:23'),
(141, 'App\\Models\\User', 4, 'impersonation', '3fda249f607620663782e34ae2851b759b1fd06c7f5fa1a441f9d1043996fbe1', '[\"*\"]', '2025-06-20 17:57:50', NULL, '2025-06-20 17:57:44', '2025-06-20 17:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_length` text COLLATE utf8mb3_bin,
  `col_collation` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `col_default` text COLLATE utf8mb3_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `settings_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `template_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('forge', '[{\"db\":\"consentai2\",\"table\":\"consent_signatures\"},{\"db\":\"consentai2\",\"table\":\"videos\"},{\"db\":\"consentai2\",\"table\":\"pdf_form_fields\"},{\"db\":\"consentai2\",\"table\":\"failed_jobs\"},{\"db\":\"consentai2\",\"table\":\"consent_forms\"},{\"db\":\"consentai2\",\"table\":\"users\"},{\"db\":\"consentai2\",\"table\":\"jobs\"},{\"db\":\"consentai\",\"table\":\"consent_signatures\"},{\"db\":\"consentai\",\"table\":\"consent_forms\"},{\"db\":\"consentai2\",\"table\":\"avatars\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefs` text COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('forge', 'consentai', 'consent_forms', '{\"sorted_col\":\"`id` DESC\"}', '2025-06-20 18:03:08'),
('forge', 'consentai2', 'consent_forms', '{\"sorted_col\":\"`consent_forms`.`id` DESC\"}', '2025-07-08 12:04:27'),
('forge', 'consentai2', 'pdf_form_fields', '{\"sorted_col\":\"`pdf_form_fields`.`consent_form_id` ASC\"}', '2025-07-22 11:08:21'),
('forge', 'consentai2', 'videos', '{\"sorted_col\":\"`videos`.`id` DESC\"}', '2025-07-08 12:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8mb3_bin NOT NULL,
  `schema_sql` text COLLATE utf8mb3_bin,
  `data_sql` longtext COLLATE utf8mb3_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8mb3_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('forge', '2025-08-13 07:28:44', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8mb3_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `video_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timestamp_vid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(2, 'client', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27'),
(3, 'user', 'api', '2025-06-04 10:43:27', '2025-06-04 10:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(5, 3),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `client_id`, `phone`, `profile_picture`, `company_name`, `job_title`) VALUES
(1, 'Jane Doe', 'jane@example.com', NULL, '$2y$12$CQ.FTn6e/6xt/aD68S7f8.wznixKcXtn0sPwuisc5fOe.XjMegnoO', NULL, '2025-04-29 13:06:59', '2025-04-29 13:06:59', NULL, NULL, NULL, NULL, NULL),
(2, 'Ray M', 'ray@greenstonemedia.com', NULL, '$2y$12$aI18TBkEmglTAjbbzZW6yeHNRAovmVO0nUU6m/PG0YCM1hJakF5UG', NULL, '2025-04-29 13:08:16', '2025-06-06 10:02:49', NULL, '1234', 'profile_pictures/Beoa1xntJnnjsFT6T1INAeOOdkh3bCr2575dX8bw.jpg', 'Green', 'CEO'),
(3, 'test22', 'test22@gmail.com', NULL, '$2y$12$biKIRZCPrMcgIn1hRMDQxeA7ujLivsYsO9kK83LAfivcCRMuLHazu', NULL, '2025-06-04 11:51:40', '2025-06-04 11:51:40', 4, NULL, NULL, NULL, NULL),
(4, 'Test', 'test@test.com', NULL, '$2y$12$t1kA017aPcJPduN5SY1oqOTLsMRZpS6ngAoO1ZKdMaKCIfA8WMqKS', NULL, '2025-06-05 08:49:50', '2025-06-05 08:49:50', 5, NULL, NULL, NULL, NULL),
(5, 'testabh', 'testabh@gmail.com', NULL, '$2y$12$N3lpxiAea.vJ7BOTyZ4DfuJ2pwLoh7RE8VqdG.MDfwmVRxQrbqbIK', NULL, '2025-06-16 13:19:45', '2025-06-16 13:19:45', 4, '6765456567', NULL, NULL, 'hr'),
(6, 'saurabh', 'ray@gaincafe.com', NULL, '$2y$12$gewzcTWX3I8uu5bN3p66SeoWtAFLiIfz/UV/.AtcJ9.zt42UmAUKq', NULL, '2025-06-16 16:42:41', '2025-06-16 16:42:41', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_video_options`
--

CREATE TABLE `user_video_options` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_video_options`
--

INSERT INTO `user_video_options` (`id`, `user_id`, `option`, `created_at`, `updated_at`) VALUES
(1, 1, 'sadtalker', '2025-06-12 13:51:14', '2025-06-12 13:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `consent_form_id` bigint UNSIGNED NOT NULL,
  `heygen_video_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'processing',
  `thumbnail_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpt_response` json DEFAULT NULL,
  `heygen_metadata` json DEFAULT NULL,
  `gif_url` text COLLATE utf8mb4_unicode_ci,
  `heygen_video_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `consent_form_id`, `heygen_video_id`, `title`, `description`, `duration`, `file_path`, `status`, `thumbnail_path`, `gpt_response`, `heygen_metadata`, `gif_url`, `heygen_video_url`, `created_at`, `updated_at`) VALUES
(6, 2, 57, NULL, 'Consent Video - yoyo', 'AI Generated consent video', NULL, NULL, 'processing', NULL, NULL, NULL, NULL, NULL, '2025-06-19 14:23:41', '2025-06-19 14:23:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatars_user_id_index` (`user_id`),
  ADD KEY `avatars_runpod_job_id_index` (`runpod_job_id`),
  ADD KEY `avatars_runpod_status_last_status_check_index` (`runpod_status`,`last_status_check`),
  ADD KEY `avatars_created_at_index` (`created_at`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `consent_forms`
--
ALTER TABLE `consent_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consent_forms_user_id_foreign` (`user_id`),
  ADD KEY `consent_forms_avatar_id_foreign` (`avatar_id`),
  ADD KEY `consent_forms_video_id_foreign` (`video_id`);

--
-- Indexes for table `consent_signatures`
--
ALTER TABLE `consent_signatures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consent_signatures_sign_link_unique` (`sign_link`),
  ADD KEY `consent_signatures_consent_form_id_foreign` (`consent_form_id`),
  ADD KEY `consent_signatures_video_id_foreign` (`video_id`),
  ADD KEY `consent_signatures_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `contact_contact_list`
--
ALTER TABLE `contact_contact_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_contact_list_contact_id_contact_list_id_unique` (`contact_id`,`contact_list_id`),
  ADD KEY `contact_contact_list_contact_list_id_foreign` (`contact_list_id`);

--
-- Indexes for table `contact_lists`
--
ALTER TABLE `contact_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_lists_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_video_id_foreign` (`video_id`),
  ADD KEY `quizzes_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_client_id_index` (`client_id`);

--
-- Indexes for table `user_video_options`
--
ALTER TABLE `user_video_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_video_options_user_id_unique` (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_user_id_foreign` (`user_id`),
  ADD KEY `videos_consent_form_id_foreign` (`consent_form_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `consent_forms`
--
ALTER TABLE `consent_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `consent_signatures`
--
ALTER TABLE `consent_signatures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_contact_list`
--
ALTER TABLE `contact_contact_list`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_lists`
--
ALTER TABLE `contact_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_video_options`
--
ALTER TABLE `user_video_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avatars`
--
ALTER TABLE `avatars`
  ADD CONSTRAINT `avatars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consent_forms`
--
ALTER TABLE `consent_forms`
  ADD CONSTRAINT `consent_forms_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `avatars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consent_forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consent_forms_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `consent_signatures`
--
ALTER TABLE `consent_signatures`
  ADD CONSTRAINT `consent_signatures_consent_form_id_foreign` FOREIGN KEY (`consent_form_id`) REFERENCES `consent_forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consent_signatures_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `consent_signatures_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_contact_list`
--
ALTER TABLE `contact_contact_list`
  ADD CONSTRAINT `contact_contact_list_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contact_contact_list_contact_list_id_foreign` FOREIGN KEY (`contact_list_id`) REFERENCES `contact_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_lists`
--
ALTER TABLE `contact_lists`
  ADD CONSTRAINT `contact_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_video_options`
--
ALTER TABLE `user_video_options`
  ADD CONSTRAINT `user_video_options_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_consent_form_id_foreign` FOREIGN KEY (`consent_form_id`) REFERENCES `consent_forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
