/*Database for HealthyMealPlanner*/

-- Instructions for the User/professor "Sourav Mukherjee" (Instructor) for using this database
-- Steps:
-- 1) create a database named 'hmp' in phpmyadmin in the databases tab.
-- 2) navigate to import section and select this hmp.sql file from the options and click on import
-- 3) you will find all the tables created in the database 'hmp' with the data as well.


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact message', 7, 'add_contactmessage'),
(26, 'Can change contact message', 7, 'change_contactmessage'),
(27, 'Can delete contact message', 7, 'delete_contactmessage'),
(28, 'Can view contact message', 7, 'view_contactmessage'),
(29, 'Can add recipe', 8, 'add_recipe'),
(30, 'Can change recipe', 8, 'change_recipe'),
(31, 'Can delete recipe', 8, 'delete_recipe'),
(32, 'Can view recipe', 8, 'view_recipe'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile'),
(37, 'Can add meal plan', 10, 'add_mealplan'),
(38, 'Can change meal plan', 10, 'change_mealplan'),
(39, 'Can delete meal plan', 10, 'delete_mealplan'),
(40, 'Can view meal plan', 10, 'view_mealplan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$sIuXkOvhyzuGIdKhjSyd7O$TAWZime7rndWKJSAtLueqV9vAQdTfWR251xebu0v50c=', '2024-06-17 06:30:25.025322', 0, 'mollis@Nullainterdum.org', '', '', 'mollis@nullainterdum.org', 0, 1, '2024-06-17 06:30:22.799360'),
(2, 'pbkdf2_sha256$600000$fd9h73EWCB2ExddcxhW6yL$vUAahZ36qTat5PxadtoAGOz0427TUZxSfR0HUZhav+I=', '2024-06-26 06:31:57.686971', 0, 'SnCl0012', '', '', 'sd@me.mo', 0, 1, '2024-06-25 11:41:42.870839'),
(3, 'pbkdf2_sha256$600000$dwDhtIJbGeyVkpxZHfliDZ$jUVuDyfSdnf6LK+oALTehuDnORgdUHOQp0ay5UKexAw=', '2024-06-26 12:35:01.672434', 0, 'John_Snow', '', '', 'john@qw.com', 0, 1, '2024-06-26 12:35:00.018452');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_contactmessage`
--

CREATE TABLE `base_contactmessage` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_mealplan`
--

CREATE TABLE `base_mealplan` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `base_mealplan`
--

INSERT INTO `base_mealplan` (`id`, `date`, `user_id`) VALUES
(1, '2024-06-26', 2),
(2, '2024-06-26', 3);

-- --------------------------------------------------------

--
-- Table structure for table `base_mealplan_recipes`
--

CREATE TABLE `base_mealplan_recipes` (
  `id` bigint(20) NOT NULL,
  `mealplan_id` bigint(20) NOT NULL,
  `recipe_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `base_mealplan_recipes`
--

INSERT INTO `base_mealplan_recipes` (`id`, `mealplan_id`, `recipe_id`) VALUES
(5, 1, 4),
(6, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `base_profile`
--

CREATE TABLE `base_profile` (
  `id` bigint(20) NOT NULL,
  `food_preference` varchar(10) NOT NULL,
  `allergic` tinyint(1) NOT NULL,
  `allergic_foods` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `age` int(10) UNSIGNED DEFAULT NULL CHECK (`age` >= 0),
  `daily_calories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`daily_calories`)),
  `height` decimal(5,2) DEFAULT NULL,
  `sex` varchar(1) NOT NULL,
  `weight` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `base_profile`
--

INSERT INTO `base_profile` (`id`, `food_preference`, `allergic`, `allergic_foods`, `user_id`, `age`, `daily_calories`, `height`, `sex`, `weight`) VALUES
(1, 'nonveg', 0, '', 1, NULL, '{}', NULL, '', NULL),
(2, 'veg', 1, 'milk, cheese,', 2, 23, '{}', 5.50, 'O', 55.00),
(3, 'vegan', 1, 'milk', 3, 29, '{}', 6.00, 'M', 70.00);

-- --------------------------------------------------------

--
-- Table structure for table `base_recipe`
--

CREATE TABLE `base_recipe` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `recipe_type` varchar(10) NOT NULL,
  `recipe_content` longtext NOT NULL,
  `nutrients` longtext NOT NULL,
  `cooking_hour` int(11) NOT NULL,
  `cooking_minute` int(11) NOT NULL,
  `meal_type` varchar(10) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `calcium` double DEFAULT NULL,
  `cholesterol` double DEFAULT NULL,
  `dietary_fiber` double DEFAULT NULL,
  `iron` double DEFAULT NULL,
  `potassium` double DEFAULT NULL,
  `protein` double DEFAULT NULL,
  `saturated_fat` double DEFAULT NULL,
  `sodium` double DEFAULT NULL,
  `total_carbohydrate` double DEFAULT NULL,
  `total_fat` double DEFAULT NULL,
  `total_sugars` double DEFAULT NULL,
  `vitamin_c` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `base_recipe`
--

INSERT INTO `base_recipe` (`id`, `name`, `recipe_type`, `recipe_content`, `nutrients`, `cooking_hour`, `cooking_minute`, `meal_type`, `image_url`, `description`, `calcium`, `cholesterol`, `dietary_fiber`, `iron`, `potassium`, `protein`, `saturated_fat`, `sodium`, `total_carbohydrate`, `total_fat`, `total_sugars`, `vitamin_c`) VALUES
(3, 'Apple Crisp', 'vegan', '10 cups all-purpose apples, peeled, cored and sliced, 1 cup white sugar, 1 tablespoon all-purpose flour, 1 teaspoon ground cinnamon, ½ cup water, 1 cup quick-cooking oats, 1 cup all-purpose flour, 1 cup packed brown sugar, ¼ teaspoon baking powder, ¼ teaspoon baking soda, ½ cup butter, melted', 'Total Fat 8g 11%, Saturated Fat 5g 25%, Cholesterol 20mg 7%, Sodium 98mg 4%, Total Carbohydrate 61g 22%, Dietary Fiber 3g 12%, Total Sugars 44g, Protein 2g, Vitamin C 4mg 21%, Calcium 36mg 3%, Iron 1mg 6%, Potassium 162mg 3%', 2, 30, 'Lunch', 'https://www.allrecipes.com/thmb/uAzhPOh86PfR-NIT1_dQ5c9bhag=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12409-apple-crisp-MFS-027-c2f142105db44206856af57c388db3ee.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nPlace sliced apples in a 9x13-inch baking dish. Mix white sugar, 1 tablespoon flour, and cinnamon together; sprinkle over apples. Pour water evenly over apples.\nCombine oats, 1 cup flour, brown sugar, baking powder, and baking soda in a large bowl. Add melted butter and mix with a fork until crumbly; sprinkle evenly over apple mixture.\nBake in the preheated oven until top is golden brown and apples are bubbling around the edges, about 45 minutes.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 19, 9, 31, 124, 52, 3, 0, 2, 5, 23, 1, 156),
(4, 'Apple Pie Filling', 'non_veg', '18 cups thinly sliced apples, 3 tablespoons lemon juice, 10 cups water, 4 ½ cups white sugar, 1 cup cornstarch, 2 teaspoons ground cinnamon, 1 teaspoon salt, ¼ teaspoon ground nutmeg', 'Total Fat 0g 0%, Sodium 61mg 3%, Total Carbohydrate 33g 12%, Dietary Fiber 1g 5%, Total Sugars 28g, Protein 0g, Vitamin C 3mg 16%, Calcium 7mg 1%, Iron 0mg 1%, Potassium 63mg 1%', 1, 0, 'Lunch', 'https://www.allrecipes.com/thmb/c0bbYaS1V_mTt_fb85yo0gPcYUM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12681-apple-pie-filling-beauty-1x1-BP-2876-ed43a184f9564f4a8dc893c4ae8d561f.jpg', 'Toss apples with lemon juice in a large bowl and set aside.\nPour water into a Dutch oven over medium heat. Combine sugar, cornstarch, cinnamon, salt, and nutmeg in a bowl; add to water, stir well, and bring to a boil. Boil for 2 minutes, stirring constantly.\nAdd apples and return to a boil. Reduce heat, cover, and simmer until apples are tender, 6 to 8 minutes. Cool for 30 minutes.\nLadle into 5 freezer containers, leaving 1/2 inch of headspace. Cool at room temperature no longer than 1 1/2 hours.\nSeal and freeze. Can be stored for up to 12 months.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 0, 0, 0, 3, 32, 4, 27, 0, 6, 13, 0, 150),
(5, 'Easy Apple Crisp with Oat Topping', 'veg', '6  apples - peeled, cored, and sliced, 2 tablespoons white sugar, 1 ½ teaspoons ground cinnamon, divided, 1 cup brown sugar, ¾ cup old-fashioned oats, ¾ cup all-purpose flour, ½ cup cold butter', 'Total Fat 25g 32%, Saturated Fat 15g 74%, Cholesterol 61mg 20%, Sodium 177mg 8%, Total Carbohydrate 99g 36%, Dietary Fiber 8g 27%, Total Sugars 63g, Protein 5g, Vitamin C 10mg 48%, Calcium 69mg 5%, Iron 2mg 13%, Potassium 360mg 8%', 3, 0, 'Breakfast', 'https://www.allrecipes.com/thmb/1tKFVcDXwp8Y_zGAzOoowGVomOk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Apple-Crisp-with-Oat-Topping-70ef9793a177482285f8ed377e692062.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nToss apples with white sugar and 1/2 teaspoon cinnamon in a medium bowl to coat; pour into a 9-inch square baking dish.\nMix brown sugar, oats, flour, and 1 teaspoon cinnamon in a separate bowl. Cut in cold butter with 2 knives or a pastry blender until the mixture resembles coarse crumbs; spread over apples and pat down gently until even.\nBake in the preheated oven until golden brown and sides are bubbling, about 40 minutes.\n\n\n\n\n\n\n\n\n\n', 8, 5, 20, 98, 61, 3, 44, 2, 4, 36, 1, 162),
(6, 'Easy Apple Cider', 'non_veg', '1 (64 fluid ounce) bottle apple cider, 3  cinnamon sticks, 1 teaspoon whole allspice, 1 teaspoon whole cloves, ⅓ cup brown sugar', 'Total Fat 0g 0%, Sodium 31mg 1%, Total Carbohydrate 43g 16%, Dietary Fiber 1g 3%, Total Sugars 38g, Protein 0g, Vitamin C 0mg 1%, Calcium 23mg 2%, Iron 0mg 1%, Potassium 20mg 0%', 4, 45, 'Dinner', 'https://www.allrecipes.com/thmb/fRJDPqthkB2mxnA5VOrG6szvS1Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/158643-2d01a5a0827c44598c89b3bd819d250e.jpg', 'Combine apple cider and cinnamon sticks in a slow cooker.\nPlace allspice and cloves onto the center of an 8-inch square piece of cheesecloth. Gather edges of the cheesecloth together and tie to secure; place in the slow cooker. Stir in brown sugar. Cook on High until it comes to a boil. Reduce heat to Low and keep warm.', 0, 0, 0, 61, 33, 1, 28, 0, 3, 7, 0, 63),
(7, 'Apple-Cranberry Crisp', 'veg', '2 pounds Granny Smith apples - peeled, cored and thinly sliced, ¾ cup cranberries, ¼ cup white sugar, 1 tablespoon ground cinnamon, 1 teaspoon ground nutmeg', 'Total Fat 12g 15%, Saturated Fat 4g 22%, Cholesterol 15mg 5%, Sodium 47mg 2%, Total Carbohydrate 43g 16%, Dietary Fiber 4g 16%, Total Sugars 32g, Protein 2g, Vitamin C 7mg 36%, Calcium 37mg 3%, Iron 1mg 6%, Potassium 207mg 4%', 0, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/MjDDFmBWiEx9f1kpSieyThF1KnM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/525977-d5f45adf863d41fba1a1071febfc00ad.jpg', 'Preheat the oven to 375 degrees F (190 degrees C.) Butter an 8-inch square baking dish.\nMix apples, cranberries, white sugar, cinnamon, and nutmeg in a large bowl. Place in an even layer in the prepared baking dish.\nIn the same bowl, combine oats, flour, and brown sugar for topping. Add butter pieces and mix with a fork until crumbly. Stir in pecans. Sprinkle topping over apples in the baking dish.\nBake in the preheated oven until apples are tender and topping is golden brown, 40 to 50 minutes.', 25, 15, 61, 177, 99, 8, 63, 5, 10, 69, 2, 360),
(8, 'Old-Fashioned Apple Dumplings', 'veg', '1 recipe pastry for double-crust pie, 6 large Granny Smith apples, peeled and cored, ½ cup butter, ¾ cup brown sugar, 1 teaspoon ground cinnamon, ½ teaspoon ground nutmeg, 3 cups water, 2 cups white sugar, 1 teaspoon vanilla extract', 'Total Fat 35g 45%, Saturated Fat 15g 74%, Cholesterol 41mg 14%, Sodium 434mg 19%, Total Carbohydrate 148g 54%, Dietary Fiber 7g 23%, Total Sugars 115g, Protein 5g, Vitamin C 11mg 53%, Calcium 52mg 4%, Iron 2mg 13%, Potassium 319mg 7%', 3, 30, 'Dinner', 'https://www.allrecipes.com/thmb/fBK5I_LpF7CXGzZUJfHTtRnhCac=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/9411399-215b5cd7d43e451baeadd6ce77e36c6e.jpg', 'Preheat the oven to 400 degrees F (200 degrees C). Butter a 9x13-inch pan.\nRoll pastry into a 24x16-inch rectangle on a lightly floured surface. Cut into six 8-inch squares. Place an apple on each pastry square with the cored opening facing upward. Cut butter into 8 pieces; place 1 piece in the opening of each apple; reserve the remaining butter for sauce.\nDivide brown sugar between apples, poking some inside each cored opening and the rest around the base of each apple. Sprinkle cinnamon and nutmeg over apples.\nUsing slightly wet fingertips, bring one corner of the pastry square up to the top of the apple, then bring the opposite corner to the top and press together. Bring up the two remaining corners, and seal. Slightly pinch the dough at the sides to completely seal in the apple. Repeat with the remaining apples and place in the prepared baking dish.\nCombine water, white sugar, vanilla extract, and reserved butter in a large saucepan. Place over medium heat, and bring to a boil. Reduce the heat to low and simmer until sugar is dissolved, about 5 minutes. Carefully pour the sauce over the dumplings.\nBake in the preheated oven for 50 to 60 minutes. Place each apple dumpling in a dessert bowl, and spoon some of the sauce over the top.', 0, 0, 0, 31, 43, 1, 38, 0, 0, 23, 0, 20),
(9, 'Southern Fried Apples', 'non_veg', '½ cup butter, ½ cup white sugar, 2 tablespoons ground cinnamon, 4  Granny Smith apples - peeled, cored, and sliced', 'Total Fat 23g 30%, Saturated Fat 15g 73%, Cholesterol 61mg 20%, Sodium 165mg 7%, Total Carbohydrate 45g 16%, Dietary Fiber 5g 16%, Total Sugars 39g, Protein 1g, Vitamin C 7mg 35%, Calcium 49mg 4%, Iron 1mg 3%, Potassium 174mg 4%', 1, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/j38-5Fxnr9NUifEj3gsaBBkd75k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1049390-361cabad31114328ac20bcc3c35ffce4.jpg', 'Melt butter in a large skillet over medium heat. Add sugar and cinnamon; stir until sugar dissolves.\nAdd apples and cook until softened, 5 to 8 minutes.\n\n\n\n\n\n\n\n\n\n\n\nMelissa Goff\n', 12, 4, 15, 47, 43, 4, 32, 2, 7, 37, 1, 207),
(10, 'Apple Turnovers', 'non_veg', '2 tablespoons lemon juice, 4 cups water, 4  Granny Smith apples - peeled, cored and sliced, 2 tablespoons butter, 1 cup brown sugar, 1 teaspoon ground cinnamon, 1 tablespoon cornstarch, 1 tablespoon water, 1 (17.25 ounce) package frozen puff pastry sheets, thawed, 1 cup confectioners\' sugar, 1 tablespoon milk, 1 teaspoon vanilla extract', 'Total Fat 26g 33%, Saturated Fat 8g 39%, Cholesterol 8mg 3%, Sodium 184mg 8%, Total Carbohydrate 80g 29%, Dietary Fiber 2g 9%, Total Sugars 50g, Protein 5g, Vitamin C 5mg 26%, Calcium 42mg 3%, Iron 2mg 11%, Potassium 161mg 3%', 4, 15, 'Lunch', 'https://www.allrecipes.com/thmb/6EpK8eOrDHd4MMlY4u4aXTOPtHA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/59124-AppleTurnovers-mfs-2X3-1645-dea040eab9a84c7483c411988b92d134.jpg', 'Combine the lemon and 4 cups water in a large bowl. Place the sliced apples in the water to keep them from browning.\nMelt butter in a large skillet over medium heat. Drain water from apples, and place them into the hot skillet. Cook and stir for about 2 minutes. Add brown sugar, and cinnamon, and cook, stirring, for 2 more minutes. Stir together cornstarch and 1 tablespoon water. Pour into the skillet, and mix well. Cook for another minute, or until sauce has thickened. Remove from heat to cool slightly.\nPreheat the oven to 400 degrees F (200 degrees C).\nUnfold puff pastry sheets, and repair any cracks by pressing them back together. Trim each sheet into a square. Then cut each larger square into 4 smaller squares. Spoon apples onto the center of each squares. Fold over from corner to corner into a triangle shape, and press edges together to seal. Place turnovers on a baking sheet, leaving about 1 inch between them.\nBake for 25 minutes in the preheated oven, until turnovers are puffed and lightly browned. Cool completely before glazing.\nTo make the glaze, mix together the confectioners\' sugar, milk and vanilla in a small bowl. Adjust the thickness by adding more sugar or milk if necessary. Drizzle glaze over the cooled turnovers.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 35, 15, 41, 434, 148, 7, 115, 5, 11, 52, 2, 319),
(11, 'Apple Crisp - Perfect and Easy', 'veg', '2 ½ cups apples - peeled, cored, and sliced, 1 cup sifted all-purpose flour, 1 cup white sugar, ½ teaspoon ground cinnamon, ¼ teaspoon salt, ½ cup butter, softened', 'Total Fat 16g 20%, Saturated Fat 10g 49%, Cholesterol 41mg 14%, Sodium 207mg 9%, Total Carbohydrate 56g 20%, Dietary Fiber 2g 6%, Total Sugars 38g, Protein 2g, Vitamin C 2mg 11%, Calcium 13mg 1%, Iron 1mg 6%, Potassium 77mg 2%', 2, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/hPRM3eLo_H-Z2kSeRRizL0El3ao=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1046883-apple-crisp-perfect-and-easy-naples34102-e505af44f7d9409ba48fc00e15efa036', 'Preheat the oven to 375 degrees F (190 degrees C). Lightly grease an 8-inch square baking dish.\nArrange apple slices evenly in the prepared baking dish. Sift flour, sugar, cinnamon, and salt into a bowl. Cut in butter using a pastry blender, or 2 knives, until mixture resembles coarse cornmeal; sprinkle over apples.\nBake in the preheated oven until topping is golden, 40 to 45 minutes. Cool slightly before serving.\n\n\n\n\n\n\n\n\n\n\n\nnaples34102\n', 23, 15, 61, 165, 45, 5, 39, 1, 7, 49, 1, 174),
(12, 'The Best Caramel Apples', 'vegan', '8 large tart apples, 8  wooden chopsticks for handles, 2 cups packed brown sugar, 1 (14 ounce) can sweetened condensed milk, 1 cup light corn syrup, 1 cup butter, 2 teaspoons vanilla extract', 'Total Fat 28g 35%, Saturated Fat 17g 87%, Cholesterol 78mg 26%, Sodium 269mg 12%, Total Carbohydrate 142g 51%, Dietary Fiber 5g 18%, Total Sugars 113g, Protein 5g, Vitamin C 11mg 55%, Calcium 210mg 16%, Iron 1mg 4%, Potassium 491mg 10%', 0, 30, 'Breakfast', 'https://www.allrecipes.com/thmb/8WP_nMIwgAzfbycBFQYUMEoBkfk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/5939512-2a490b670e524c628534909ed0af4842.jpg', 'Bring a large saucepan of water to a boil. Dip apples in boiling water for a few seconds, using a slotted spoon, then dry with paper towels to remove any wax from the peels. Set apples aside to cool completely, about 30 minutes.\nInsert sticks into the bottom of each cooled apple through the core for a handle.\nLine a baking sheet with parchment paper.\nStir brown sugar, sweetened condensed milk, corn syrup, and butter together in a saucepan over medium-high heat. Bring to a boil, stirring constantly, then reduce heat to medium. Cook until a candy thermometer reads 248 degrees F (120 degrees C), stirring constantly to prevent burning, about 25 to 30 minutes. A teaspoon of caramel dropped in a glass of cold water, should form a firm ball. Remove caramel from heat and stir in vanilla extract.\nWorking quickly, dip each apple into the hot caramel to completely coat the apple and about 1/2 inch of the wooden handle. Sprinkle apples with any desired toppings while still hot. Let caramel apples cool on the prepared baking sheet, about 1 hour. Use caution, caramel is very hot.', 26, 8, 8, 184, 80, 2, 50, 5, 5, 42, 2, 161),
(13, 'Mulligatawny Soup', 'vegan', '½ cup chopped onion, 2 stalks celery, chopped, 1  carrot, diced, ¼ cup butter, 1 ½ tablespoons all-purpose flour, 1 ½ teaspoons curry powder, 4 cups chicken broth, ½  apple, cored and chopped, ¼ cup white rice, 1  skinless, boneless chicken breast half - cut into cubes, 1 pinch dried thyme,   salt and ground black pepper to taste, ½ cup heavy cream, heated', 'Total Fat 16g 20%, Saturated Fat 10g 48%, Cholesterol 62mg 21%, Sodium 734mg 32%, Total Carbohydrate 14g 5%, Dietary Fiber 1g 5%, Total Sugars 3g, Protein 7g, Vitamin C 3mg 15%, Calcium 38mg 3%, Iron 1mg 6%, Potassium 186mg 4%', 3, 30, 'Lunch', 'https://www.allrecipes.com/thmb/c5rvXd4iW32dqTECe4PNisvQVDQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/804799-33945c287a0d46b4acce8f0247ebf88c.jpg', 'Melt butter in a large soup pot over medium heat. Add onions, celery, and carrot and sauté until soft, 5 to 7 minutes. Add flour and curry, and cook 5 more minutes, stirring frequently. Add chicken broth, mix well, and bring to a boil. Reduce heat and simmer for about 30 minutes.\nAdd apple, rice, chicken, thyme, salt, and pepper. Simmer until rice is tender, 15 to 20 minutes.\nJust before serving, stir in hot cream.\n\n\n\n\n\n\n\n\n\n\n\nTheBritishBaker\n', 16, 10, 41, 207, 56, 2, 38, 2, 2, 13, 1, 77),
(14, 'Sauteed Apples', 'veg', '¼ cup butter, 4 large tart apples - peeled, cored and sliced 1/4 inch thick, ½ cup cold water, 2 teaspoons cornstarch, ½ cup brown sugar, ½ teaspoon ground cinnamon', 'Total Fat 6g 8%, Saturated Fat 4g 19%, Cholesterol 15mg 5%, Sodium 45mg 2%, Total Carbohydrate 24g 9%, Dietary Fiber 3g 9%, Total Sugars 20g, Protein 0g, Vitamin C 5mg 25%, Calcium 18mg 1%, Iron 0mg 1%, Potassium 128mg 3%', 1, 45, 'Dinner', 'https://www.allrecipes.com/thmb/pTjoToZum_x5Ki9khNk_SSe7MEs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/21672-SauteedApples-ddmfs-1X1-0061-fe2952cf8a6148959bd0076742996deb.jpg', 'Melt butter in a large skillet or saucepan over medium heat; add apples and cook, stirring constantly, until almost tender, 6 to 7 minutes.\nMix water and cornstarch together in a small bowl until cornstarch is dissolved; pour over apples. Stir in brown sugar and cinnamon. Bring to a boil for 2 minutes, stirring occasionally. Remove from heat and serve warm.\n\n\n\n\n\n\n\n\n\n\n\ndotdash meredith food studios\n', 28, 17, 78, 269, 142, 5, 113, 5, 11, 210, 1, 491),
(15, 'Homemade Apple Cider', 'veg', '10 large apples, quartered,   water, to cover, ¾ cup white sugar, 1 tablespoon ground cinnamon, 1 tablespoon ground allspice', 'Total Fat 0g 0%, Sodium 1mg 0%, Total Carbohydrate 22g 8%, Dietary Fiber 2g 9%, Total Sugars 18g, Protein 0g, Vitamin C 4mg 21%, Calcium 12mg 1%, Iron 0mg 1%, Potassium 98mg 2%', 4, 15, 'Breakfast', 'https://www.allrecipes.com/thmb/M0dm6zV9huJMIy70_9np9ztM4Sw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Homemade-Apple-Cider-LaDonna-Langwell-1x1-1-a6afe5b44bd246d39e597ed59281bbd5.jpg', 'Place apples in a large stockpot; cover with water by at least 2 inches. Stir in sugar, cinnamon, and allspice. Bring to a boil over medium-high heat. Boil, uncovered, for 1 hour. Reduce heat; cover and simmer for 2 hours.\nStrain apple mixture through a fine-mesh sieve; discard solids. Drain cider again through a cheesecloth-lined sieve.\nRefrigerate cider until cold, about 4 hours.\n\n\n\n\n\n\n\n\n\n\n\n LaDonna Langwell \n', 16, 10, 62, 734, 14, 1, 3, 7, 3, 38, 1, 186),
(16, 'Canned Apple Pie Filling', 'veg', '4 ½ cups white sugar, 1 cup cornstarch, 2 teaspoons ground cinnamon, ¼ teaspoon ground nutmeg, 10 cups water, 2 teaspoons salt, 3 tablespoons lemon juice, 2 drops yellow food coloring, 6 pounds apples', 'Total Fat 0g 0%, Sodium 85mg 4%, Total Carbohydrate 25g 9%, Dietary Fiber 1g 4%, Total Sugars 21g, Protein 0g, Vitamin C 3mg 13%, Calcium 5mg 0%, Iron 0mg 1%, Potassium 54mg 1%', 3, 30, 'Lunch', 'https://www.allrecipes.com/thmb/qcarmR-fmWcDZGS8BGjP51tm9Eg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1426682-1c6ec83bc56b426b9d812e0a26b1a739.jpg', 'Mix sugar, cornstarch, cinnamon, and nutmeg in a large pan. Add water and salt and mix well. Bring to a boil and cook until thick and bubbly. Remove from heat and add lemon juice and food coloring.\nSterilize canning jars, lids, and rings by boiling them in a large pot of water.\nPeel, core, and slice apples. Pack the sliced apples into hot canning jars, leaving a 1/2 inch of headspace.\nFill jars with hot syrup, and gently remove air bubbles with a knife.\nPut lids on and process in a water bath canner for 20 minutes.', 6, 4, 15, 45, 24, 3, 20, 0, 5, 18, 0, 128),
(17, 'Easy Apple Pie', 'veg', '1 (14.1 ounce) package pastry for a 9-inch double-crust pie, ¾ cup white sugar, or more to taste, 1 teaspoon ground cinnamon, 6 cups thinly sliced apples, 1 tablespoon butter', 'Total Fat 9g 12%, Saturated Fat 3g 14%, Cholesterol 4mg 1%, Sodium 128mg 6%, Total Carbohydrate 42g 15%, Dietary Fiber 3g 11%, Total Sugars 29g, Protein 2g, Vitamin C 4mg 22%, Calcium 11mg 1%, Iron 1mg 4%, Potassium 117mg 2%', 3, 15, 'Dinner', 'https://www.allrecipes.com/thmb/aZyGZaTNLn-ewSEGDwwmEOwrRNg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12324-EasyApplePie-ddmfs-1x1-0016-c0401f8117954ba9a03c62ebba7f16af.jpg', 'Preheat the oven to 450 degrees F (230 degrees C).\nLine a 9-inch pie dish with one pastry crust; set second one aside.\nCombine 3/4 cup sugar and cinnamon in a small bowl. Add more sugar if your apples are tart.\nLayer apple slices in the prepared pie dish, sprinkling each layer with cinnamon-sugar mixture. Dot top layer with small pieces of butter. Cover with top crust.\nBake pie on the lowest rack of the preheated oven for 10 minutes. Reduce oven temperature to 350 degrees F (175 degrees C) and continue baking until golden brown and filling bubbles, 30 to 35 minutes more. Serve warm or cold.\n\n\n\n\n\n\n\n\n\n\n\ndotdash meredith food studios\n', 0, 0, 0, 1, 22, 2, 18, 0, 4, 12, 0, 98),
(18, 'Apple Crumb Pie', 'non_veg', '6 cups thinly sliced apples, 1 tablespoon lemon juice (Optional), ¾ cup white sugar, 2 tablespoons all-purpose flour, ½ teaspoon ground cinnamon, ⅛ teaspoon ground nutmeg, ½ cup raisins (Optional), ½ cup chopped walnuts (Optional), 1 (9 inch) pie shell, ½ cup all-purpose flour, ½ cup packed brown sugar, 3 tablespoons butter', 'Total Fat 15g 19%, Saturated Fat 4g 20%, Cholesterol 11mg 4%, Sodium 139mg 6%, Total Carbohydrate 70g 25%, Dietary Fiber 4g 13%, Total Sugars 49g, Protein 4g, Vitamin C 6mg 28%, Calcium 37mg 3%, Iron 1mg 8%, Potassium 261mg 6%', 0, 45, 'Lunch', 'https://www.allrecipes.com/thmb/3qY9aBqD34LmSObh2KKQZatIjE8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/15587-apple-crumb-pie-ddmfs-4x3-1-dc4ac2e030e04d60a7650ede077f3c45.jpg', 'Preheat the oven to 375 degrees F (190 degrees C).\nPlace sliced apples in a large bowl; sprinkle with lemon juice. Mix white sugar, 2 tablespoons flour, cinnamon, and nutmeg together in a small bowl; sprinkle mixture over apples and toss until evenly coated. Stir in raisins and walnuts; transfer mixture into pie shell.\nMix 1/2 cup flour and brown sugar together in a small bowl. Blend in butter with a fork until mixture is crumbly; sprinkle over apple filling. Cover top of pie loosely with aluminum foil.\nBake in the preheated oven for 25 minutes. Remove foil and bake until top is golden brown and filling is bubbly, about 25 to 30 minutes more. Cool on a wire rack before serving.', 0, 0, 0, 85, 25, 1, 21, 0, 3, 5, 0, 54),
(19, 'Caramel Apples', 'veg', '6  apples, 6  wooden craft sticks,   cooking spray, 1 (14 ounce) package individually wrapped caramels, unwrapped, 2 tablespoons milk', 'Total Fat 6g 7%, Saturated Fat 2g 9%, Cholesterol 5mg 2%, Sodium 164mg 7%, Total Carbohydrate 70g 25%, Dietary Fiber 3g 12%, Total Sugars 57g, Protein 4g, Vitamin C 7mg 33%, Calcium 104mg 8%, Iron 0mg 2%, Potassium 295mg 6%', 2, 30, 'Dinner', 'https://www.allrecipes.com/thmb/Gc2LqawZpqaCSWaMdsNx5RK9J2Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/481786-6c24ca3a641f43eea1597930a40b6178.jpg', 'Remove the stem from each apple and press a craft stick into the top. Spray a baking sheet with cooking spray.\nPlace caramels and milk in a microwave-safe bowl; microwave for 2 minutes, stirring once. Set aside to cool briefly.\nRoll each apple quickly in caramel sauce until well coated. Place on prepared sheet to set.\n\n\n\n\n\n\n\n\n\n', 9, 3, 4, 128, 42, 3, 29, 2, 4, 11, 1, 117),
(20, 'German Apple Cake', 'veg', '1 cup vegetable oil, 2  eggs, 2 cups white sugar, 1 teaspoon vanilla extract, 2 cups all-purpose flour, 2 teaspoons ground cinnamon, 1 teaspoon baking soda, ½ teaspoon salt, 4 cups apples - peeled, cored and diced', 'Total Fat 10g 12%, Saturated Fat 1g 7%, Cholesterol 16mg 5%, Sodium 107mg 5%, Total Carbohydrate 28g 10%, Dietary Fiber 1g 3%, Total Sugars 19g, Protein 2g, Vitamin C 1mg 5%, Calcium 7mg 1%, Iron 1mg 3%, Potassium 41mg 1%', 2, 30, 'Breakfast', 'https://www.allrecipes.com/thmb/u5wGUc1jJfOfLV8eG9Fl87sTyEk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2327614-809148baeed6489bbab268a7d527a08a.jpg', 'Preheat the oven to 350 degrees F (175 degrees C). Grease and flour a 9x13-inch cake pan.\nBeat oil and eggs in a mixing bowl with an electric mixer until creamy. Add sugar and vanilla; beat well.\nStir together flour, cinnamon, baking soda, and salt in a bowl. Slowly add flour mixture to egg mixture; mix until combined. The batter will be very thick. Fold in apples by hand using a wooden spoon. Spread batter into the prepared pan.\nBake cake in the preheated oven until a toothpick inserted into the center comes out clean, about 45 minutes. Cool cake on a wire rack.', 15, 4, 11, 139, 70, 4, 49, 4, 6, 37, 1, 261),
(21, 'Awesome Sausage, Apple and Cranberry Stuffing', 'veg', '3 ¾ cups cubed white bread, 1 ½ cups cubed whole wheat bread, 1 pound ground turkey sausage, 1 cup chopped onion, ¾ cup chopped celery, 2 ½ teaspoons dried sage, 1 ½ teaspoons dried rosemary, ½ teaspoon dried thyme, 1  Golden Delicious apple, cored and chopped, ¾ cup dried cranberries, ⅓ cup minced fresh parsley, 1  cooked turkey liver, finely chopped, ¾ cup turkey stock, 4 tablespoons unsalted butter, melted', 'Total Fat 12g 15%, Saturated Fat 5g 25%, Cholesterol 80mg 27%, Sodium 548mg 24%, Total Carbohydrate 22g 8%, Dietary Fiber 2g 8%, Total Sugars 9g, Protein 13g, Vitamin C 9mg 44%, Calcium 47mg 4%, Iron 3mg 17%, Potassium 268mg 6%', 1, 0, 'Lunch', 'https://www.allrecipes.com/thmb/A16n6yykk6y6ofEi8akwV-6V9Ck=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1x1-PASSANO_ALR0922_Faves_Stuffing_5279-7495521ab45c4b8880373657bedc0db5.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nSpread white and whole wheat bread cubes in a single layer on a large baking sheet.\nBake in the preheated oven until evenly toasted, 5 to 7 minutes. Transfer toasted bread cubes to a large bowl.\nCook sausage and onions in a large skillet over medium heat, stirring and breaking up lumps, until evenly browned, 6 to 8 minutes. Add celery, sage, rosemary, and thyme; cook and stir until flavors blend, about 2 minutes.\nPour sausage mixture over bread in bowl. Mix in chopped apple, dried cranberries, parsley, and liver. Drizzle with turkey stock and melted butter; mix lightly.\nAllow stuffing to cool completely before loosely stuffing a turkey.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 6, 2, 5, 164, 70, 3, 57, 4, 7, 104, 0, 295),
(22, 'Apple Hand Pies', 'veg', '2 tablespoons butter, 2 large green apples - peeled, cored, and cut into chunks, 2 tablespoons brown sugar, ¼ cup white sugar, ¼ teaspoon salt, 1 ½ teaspoons ground cinnamon, or to taste, 1 teaspoon water, or more if needed (Optional), 1 pound prepared pie dough, cut into 4 pieces, 1  egg, 2 teaspoons milk, 1 teaspoon white sugar, or as needed', 'Total Fat 42g 54%, Saturated Fat 13g 64%, Cholesterol 62mg 21%, Sodium 754mg 33%, Total Carbohydrate 82g 30%, Dietary Fiber 6g 23%, Total Sugars 31g, Protein 9g, Vitamin C 5mg 27%, Calcium 38mg 3%, Iron 4mg 19%, Potassium 215mg 5%', 3, 15, 'Dinner', 'https://www.allrecipes.com/thmb/euXNMeXiywj4v6L_dLhpSqwsN0g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/234374-apple-hand-pies-mfs-1-8458cf2b0e764a7ab31c2d6aa0e3e841.jpg', 'Melt butter in a large skillet over medium heat; let butter brown to a light golden color and smell toasted, about 1 minute. Stir apples into hot butter; sprinkle with 1/4 cup white sugar, brown sugar, and salt. Cook and stir apple mixture until apples are softened, about 5 minutes. Mix in cinnamon and water; continue cooking until apples are soft and sticky, 1 to 2 more minutes. Spread apple filling onto a plate to cool.\nPreheat the oven to 400 degrees F (200 degrees C). Line a baking sheet with a silicone mat or parchment paper.\nForm a dough piece into a ball, place on a floured work surface, and roll into a circle about 8 inches in diameter. Spoon 1/3 to 1/2 cup apple filling in the center. Fold dough over filling, leaving about 1 inch of dough on the bottom side visible below the top side. Gently press dough closed around filling, using your fingertips.\nFold the overhanging bottom part of dough up over the top edge, working your way around the crust, and pinch the overhang tightly to the top part of the crust.\nCrimp the edge tightly closed, pinching a little bit of dough with the thumb and forefinger of one hand and using your index finger on the other hand to push a small notch into the pinched dough. Continue pinching and notching all the way around until crust is tightly crimped together. Repeat with remaining dough and filling. Transfer pies onto prepared baking sheet.\nWhisk egg with milk in a small bowl until thoroughly combined. Brush top of each hand pie with egg mixture and sprinkle with about 1/4 teaspoon white sugar. Cut 3 small vent holes in the top of each pie.\nBake in the preheated oven until pies are golden brown and filling is bubbling, 25 to 30 minutes. Let cool for at least 15 minutes before serving.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 10, 1, 16, 107, 28, 1, 19, 2, 1, 7, 1, 41),
(23, 'Amazing Apple Butter', 'veg', '10 pounds apples, quartered, 4 cups unsweetened apple juice, 1 cup white sugar, 1 tablespoon apple cider vinegar, 1 ½ teaspoons ground cinnamon, ½ teaspoon ground cloves, ½ teaspoon ground allspice, 6  half-pint canning jars with lids and rings', 'Total Fat 0g 0%, Sodium 2mg 0%, Total Carbohydrate 20g 7%, Dietary Fiber 2g 8%, Total Sugars 16g, Protein 0g, Vitamin C 5mg 23%, Calcium 8mg 1%, Iron 0mg 1%, Potassium 127mg 3%', 0, 30, 'Lunch', 'https://www.allrecipes.com/thmb/x6vOON48-nGa1EFyDtv3yP_-yNE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/4097964-91fe5b73052648c7a2dad2ee8283ad23.jpg', 'Combine apples and apple juice in a stockpot; bring to a boil. Reduce heat and cook at a simmer until apples are soft and mushy, 20 to 30 minutes.\nSpoon apples into a food mill and process into puree while discarding the cores and peels remaining in the mill. Transfer process apples to a slow cooker.\nCook on High with the lid off until the moisture evaporates and the volume reduces by about half, overnight to 24 hours.\nStir sugar, apple cider vinegar, cinnamon, cloves, and allspice through the apple puree.\nContinue cooking on High until mixture mounds on a chilled plate without any water separating from the edges, another 2 to 6 hours.\nSterilize the jars and lids in boiling water for at least 5 minutes. Pack the apple butter into the hot, sterilized jars, filling the jars to within 1/4 inch of the top. Run a knife or a thin spatula around the insides of the jars after they have been filled to remove any air bubbles. Wipe the rims of the jars with a moist paper towel to remove any food residue. Top with lids, and screw on rings.\nPlace a rack in the bottom of a large stockpot and fill halfway with water. Bring to a boil and lower jars into the boiling water using a holder. Leave a 2-inch space between the jars. Pour in more boiling water if necessary to bring the water level to at least 1 inch above the tops of the jars. Bring the water to a rolling boil, cover the pot, and process 5 to 10 minutes.\nRemove the jars from the stockpot and place onto a cloth-covered or wood surface, several inches apart, until cool. Once cool, press the top of each lid with a finger, ensuring that the seal is tight (lid does not move up or down at all). Store in a cool, dark area.', 12, 5, 80, 548, 22, 2, 9, 13, 9, 47, 3, 268),
(24, 'Easy Apple Cinnamon Muffins', 'vegan', '1 ½ cups all-purpose flour, ¾ cup white sugar, 2 teaspoons baking powder, 1 teaspoon ground cinnamon, ½ teaspoon salt, 1  egg, ⅓ cup vegetable oil, ⅓ cup milk, 2  apples - peeled, cored and chopped', 'Total Fat 29g 37%, Saturated Fat 12g 61%, Cholesterol 73mg 24%, Sodium 441mg 19%, Total Carbohydrate 79g 29%, Dietary Fiber 3g 9%, Total Sugars 47g, Protein 6g, Vitamin C 2mg 11%, Calcium 110mg 8%, Iron 2mg 12%, Potassium 131mg 3%', 1, 15, 'Dinner', 'https://www.allrecipes.com/thmb/KJ3htdTnxZsf9tSvbqILDsqeSaI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/5907258-easy-apple-cinnamon-muffins-Kelly-McCulley-1x1-1-b3c6941ddef3499bafc0399c', 'Preheat the oven to 400 degrees F (200 degrees C). Grease 6 large muffin cups or line with paper muffin liners.\nMake muffins: Stir together flour, sugar, baking powder, cinnamon, and salt in a large bowl. Mix in egg, oil, and milk. Fold in chopped apples. Spoon batter into the prepared muffin cups, filling just below the rim.\nMake topping: Place sugar, butter, flour, and cinnamon into a small bowl; mash mixture with a fork and sprinkle over unbaked muffins.\nBake in the preheated oven until a toothpick inserted into the center of a muffin comes out clean, 20 to 25 minutes.\n\n\n\n\n\n\n\n\n\n\n\nKelly McCulley\n', 42, 13, 62, 754, 82, 6, 31, 9, 5, 38, 4, 215),
(25, 'Debbie\'s Amazing Apple Bread', 'non_veg', '2  eggs, 2 cups white sugar, ½ cup vegetable oil, 2 teaspoons vanilla extract, 2 cups apples, peeled and diced, 2 cups all-purpose flour, 1 ½ teaspoons salt, 1 teaspoon baking powder, ½ teaspoon ground cinnamon, or more to taste', 'Total Fat 12g 16%, Saturated Fat 2g 11%, Cholesterol 37mg 12%, Sodium 412mg 18%, Total Carbohydrate 63g 23%, Dietary Fiber 1g 5%, Total Sugars 43g, Protein 4g, Vitamin C 1mg 6%, Calcium 39mg 3%, Iron 1mg 8%, Potassium 70mg 1%', 4, 0, 'Breakfast', 'https://www.allrecipes.com/thmb/scNfqqIpDtfCcaFQIjsvzmxCSV0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/4580871_Debbies-Amazing-Apple-Bread-1x1-1-3f46182021ab4a889b86f7dac9c1c9fb.jpg', 'Preheat the oven to 350 degrees F (175 degrees C). Grease a 9x5-inch loaf pan.\nBeat eggs, sugar, vegetable oil, and vanilla extract in a mixing bowl; stir in apples.\nMix flour, salt, baking powder, and cinnamon in a separate bowl; add to apple mixture and stir just until evenly combined. Pour batter into the prepared loaf pan.\nBake in the preheated oven for 45 minutes. Cover loaf pan with aluminum foil; continue baking until a toothpick inserted into the center comes out clean, about 15 minutes more. Cool in the pan for 10 minutes before removing to cool completely on a wire rack.\n\n\n\n\n\n\n\n\n\n\n\nAaron Brown\n', 0, 0, 0, 2, 20, 2, 16, 0, 5, 8, 0, 127),
(26, 'Mom\'s Apple Fritters', 'vegan', '1 quart vegetable oil for deep-frying, 1 ½ cups all-purpose flour, 1 tablespoon white sugar, 2 teaspoons baking powder, ½ teaspoon salt, ⅔ cup milk, 2 large eggs, beaten, 1 tablespoon vegetable oil, 3 cups apples - peeled, cored and chopped, 1 cup cinnamon sugar', 'Total Fat 5g 6%, Saturated Fat 1g 4%, Cholesterol 16mg 5%, Sodium 98mg 4%, Total Carbohydrate 17g 6%, Dietary Fiber 1g 2%, Total Sugars 3g, Protein 2g, Vitamin C 1mg 4%, Calcium 35mg 3%, Iron 1mg 3%, Potassium 41mg 1%', 2, 45, 'Lunch', 'https://www.allrecipes.com/thmb/cU_5TCv2LWEf-I2QJbXTsJUaGSI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/90295-moms-apple-fritters-ddmfs-1X1-5783-a6edf46cd33c4a00ad5a02432822e57d.jpg', 'Heat oil in a deep fryer or electric skillet to 375 degrees F (190 degrees C).\nStir together flour, sugar, baking powder, and salt in a large bowl. Pour in milk, eggs, and oil; stir until well blended. Mix in apples until evenly distributed.\nWorking in small batches to prevent overcrowding, drop spoonfuls of batter into the deep fryer and fry in hot oil until golden all over, about 5 minutes. Use a slotted spoon to transfer fritters to a paper towel-lined plate. Toss warm fritters with cinnamon sugar in a bowl until well coated.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 29, 12, 73, 441, 79, 3, 47, 6, 2, 110, 2, 131),
(27, 'Easy Apple Crisp with Pie Filling', 'vegan', '1 (21 ounce) can apple pie filling, ½ teaspoon ground cinnamon, ½ teaspoon ground nutmeg, 1 cup margarine, ¼ cup brown sugar, 2 cups all-purpose flour', 'Total Fat 31g 39%, Saturated Fat 5g 27%, Sodium 398mg 17%, Total Carbohydrate 67g 25%, Dietary Fiber 2g 8%, Total Sugars 9g, Protein 5g, Vitamin C 1mg 6%, Calcium 31mg 2%, Iron 2mg 13%, Potassium 119mg 3%', 3, 15, 'Dinner', 'https://www.allrecipes.com/thmb/bQ7QL-XFrgBwNMsa43zSyaX_xmM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/7813774-acbbc3ca7c0f4caaa24f2d4c07b7b83f.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nSpread pie filling in an 8x8-inch baking dish. Sprinkle with cinnamon and nutmeg.\nCream together margarine and sugar. Cut in flour with a pastry blender until the mixture resembles coarse crumbs. Sprinkle mixture over pie filling.\nBake in the preheated oven until the topping is brown and crisp and the filling is hot and bubbly, about 20 minutes.', 12, 2, 37, 412, 63, 1, 43, 4, 1, 39, 1, 70),
(28, 'Apple Strudel Muffins', 'veg', '2 cups all-purpose flour, 1 teaspoon baking powder, ½ teaspoon baking soda, ½ teaspoon salt, 1 cup white sugar, ½ cup butter, 2 large eggs, 1 ¼ teaspoons vanilla, 1 ½ cups chopped apples', 'Total Fat 10g 12%, Saturated Fat 6g 29%, Cholesterol 54mg 18%, Sodium 255mg 11%, Total Carbohydrate 41g 15%, Dietary Fiber 1g 4%, Total Sugars 24g, Protein 3g, Vitamin C 1mg 4%, Calcium 33mg 3%, Iron 1mg 7%, Potassium 63mg 1%', 4, 0, 'Lunch', 'https://www.allrecipes.com/thmb/QTc6kTodu38CuuTDlcAz9XbueDA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1097944-apple-strudel-muffins-Korona-1x1-2-6710dec0aba7474a80c89f21a2059ebc.jpg', 'Preheat the oven to 375 degrees F (190 degrees C). Grease a 12-cup muffin pan.\nMix flour, baking powder, baking soda, and salt in a medium bowl.\nBeat together sugar, butter, and eggs in a large bowl until smooth. Mix in vanilla. Stir in apples, then gradually blend in flour mixture. Spoon batter into the prepared muffin pan.\nMake topping: Mix brown sugar, flour, and cinnamon in a small bowl. Cut in butter until mixture resembles coarse crumbs. Sprinkle over each muffin top.\nBake in the preheated oven until a toothpick inserted in the center of a muffin comes out clean, about 20 minutes. Let sit 5 minutes before transferring muffins to a wire rack to cool.\n\n\n\n\n\n\n\n\n\n\n\nKorona\n', 5, 1, 16, 98, 17, 1, 3, 2, 1, 35, 1, 41),
(29, 'Delicious Cinnamon Baked Apples', 'vegan', '1 teaspoon butter, 2 tablespoons brown sugar, 3 teaspoons vanilla sugar, 3 teaspoons ground cinnamon, 1 teaspoon ground nutmeg, 6 large apples - peeled, cored, and sliced, 3 ½ tablespoons water', 'Total Fat 1g 2%, Saturated Fat 1g 3%, Cholesterol 2mg 1%, Sodium 9mg 0%, Total Carbohydrate 37g 13%, Dietary Fiber 6g 21%, Total Sugars 27g, Protein 1g, Vitamin C 10mg 49%, Calcium 29mg 2%, Iron 0mg 2%, Potassium 240mg 5%', 4, 0, 'Breakfast', 'https://www.allrecipes.com/thmb/wYuZO3nEvxY6WgITCcHa78l2wlo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/228683-delicious-cinnamon-baked-apples-ddmfs-4X3-1428-9500d581c4ad4d74acc67e4f6c9', 'Preheat the oven to 350 degrees F (175 degrees C). Grease a large baking dish with butter.\nMix brown sugar, vanilla sugar, cinnamon, and nutmeg in a small bowl. Layer about 1/3 of the apples in the prepared baking dish; sprinkle with 1/3 of the sugar mixture. Repeat layers twice more.\nBake in preheated oven for 30 minutes. Pour water over apples and continue baking until tender, about 15 minutes more.', 31, 5, 0, 398, 67, 2, 9, 5, 1, 31, 2, 119),
(30, 'Waldorf Salad', 'non_veg', '½ cup mayonnaise, 1 tablespoon white sugar, 1 teaspoon lemon juice, ⅛ teaspoon salt, 3  apples -- peeled, cored, and chopped, 1 cup thinly sliced celery, ½ cup chopped walnuts, ½ cup raisins (Optional)', 'Total Fat 21g 27%, Saturated Fat 3g 14%, Cholesterol 7mg 2%, Sodium 171mg 7%, Total Carbohydrate 24g 9%, Dietary Fiber 3g 11%, Total Sugars 17g, Protein 2g, Vitamin C 5mg 23%, Calcium 29mg 2%, Iron 1mg 4%, Potassium 263mg 6%', 0, 45, 'Lunch', 'https://www.allrecipes.com/thmb/0-fRnnKLjtwxVaqh2PUbkiOTbVw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2180807_Waldorf-Salad-II-4x3-1-0d929166ff114b14a0e818e001e0dbe4.jpg', 'Whisk together mayonnaise, sugar, lemon juice, and salt in a serving bowl.\nStir in apples, celery, walnuts, and raisins. Cover and chill in the refrigerator until ready to serve.', 10, 6, 54, 255, 41, 1, 24, 3, 1, 33, 1, 63),
(31, 'Apple-Cranberry Crostada', 'veg', '3 tablespoons butter, 2 pounds Granny Smith apples (or other firm, crisp apples), peeled, quartered, cored and sliced 1/4-inch thick, 1 pound Macintosh apples (or other soft-textured apples that fall apart when cooked), peeled, quartered, cored, and sliced 1/4-inch thick, ½ cup sugar, ½ cup dried cranberries, 1 sheet frozen puff pastry, thawed but still cold (follow package directions), 1  egg white, lightly beaten, 1 tablespoon sugar, 1 cup Optional: Ice cream or lightly sweetened whipped cream', 'Total Fat 18g 23%, Saturated Fat 7g 34%, Cholesterol 19mg 6%, Sodium 128mg 6%, Total Carbohydrate 60g 22%, Dietary Fiber 5g 16%, Total Sugars 40g, Protein 4g, Vitamin C 8mg 42%, Calcium 35mg 3%, Iron 1mg 6%, Potassium 245mg 5%', 2, 45, 'Dinner', 'https://www.allrecipes.com/thmb/Tf1wH73bfH6OqlfQySSDtMaP-nw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/517708-5f57072dedb04a389edab3e141517d4d.jpg', 'Heat butter in a large skillet over medium-high heat. Add apples, 1/2 cup sugar and cranberries; cover and cook until apples release their liquid, about 5 minutes. Remove lid and continue to cook, stirring frequently, until soft apples fall apart and juices thicken to a thin-syrup consistency, about 5 minutes longer. Pour onto a large-lipped cookie sheet or jellyroll pan and cool to room temperature. (Can be refrigerated in an airtight container up to 5 days.)\nAdjust oven rack to low position and heat oven to 400 degrees. Open puff pastry sheet on a lightly floured work surface. Roll into a rectangle, about 10 by 16 inches. Transfer to a large cookie sheet. (I suggest lining the sheet with parchment paper; this ensures the crostada doesn\'t stick and allows easy cleanup.)\nSpread cooked apples over pastry, leaving a 2-inch border. Fold up pastry borders over apples. Unfold corners and form ruffled creases to keep dough from overlapping. Brush pastry border with egg white and sprinkle with the remaining 1 Tb. sugar. Bake until pastry is golden brown, 25 to 30 minutes. Serve warm or at room temperature with optional ice cream or whipped cream.', 1, 1, 2, 9, 37, 6, 27, 1, 10, 29, 0, 240),
(32, 'Apple Pie by Grandma Ople', 'non_veg', '8 small Granny Smith apples, or as needed, ½ cup unsalted butter, 3 tablespoons all-purpose flour, ½ cup white sugar, ½ cup packed brown sugar, ¼ cup water, 1 (9 inch) double-crust pie pastry, thawed', 'Total Fat 19g 24%, Saturated Fat 9g 46%, Cholesterol 31mg 10%, Sodium 124mg 5%, Total Carbohydrate 52g 19%, Dietary Fiber 3g 10%, Protein 2g, Vitamin C 5mg 27%, Calcium 23mg 2%, Iron 1mg 6%, Potassium 156mg 3%', 2, 30, 'Lunch', 'https://www.allrecipes.com/thmb/1I95oiTGz6aEpuHd2DAr33w7Mgg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12682-apple-pie-by-grandma-ople-natasha-titanov-1x1-1-7f1cd9f631d24ff0b90cac01632', 'Peel and core apples, then thinly slice. Set aside.\nPreheat the oven to 425 degrees F (220 degrees C).\nMelt butter in a saucepan over medium heat. Add flour and stir to form a paste; cook until fragrant, about 1 to 2 minutes. Add both sugars and water; bring to a boil. Reduce the heat to low and simmer for 3 to 5 minutes. Remove from the heat.\nPress one pastry into the bottom and up the sides of a 9-inch pie pan. Roll out remaining pastry so it will overhang the pie by about 1/2 inch. Cut pastry into eight 1-inch strips.\nPlace sliced apples into the bottom crust, forming a slight mound. Lay four pastry strips vertically and evenly spaced over apples, using longer strips in the center and shorter strips at the edges.\nMake a lattice crust: Fold the first and third strips all the way back so they\'re almost falling off the pie. Lay one of the unused strips perpendicularly over the second and fourth strips, then unfold the first and third strips back into their original position.\nFold the second and fourth vertical strips back. Lay one of the three unused strips perpendicularly over top. Unfold the second and fourth strips back into their original position.\nRepeat Steps 6 and 7 to weave in the last two strips of pastry. Fold and trim excess dough at the edges as necessary, and pinch to secure.\nSlowly and gently pour sugar-butter mixture over lattice crust, making sure it seeps over sliced apples. Brush some onto lattice, but make sure it doesn\'t run off the sides.\nBake in the preheated oven for 15 minutes. Reduce the temperature to 350 degrees F (175 degrees C) and continue baking until apples are soft, 35 to 45 minutes.\n\n\n\n\n\n\n\n\n\n\n\nNatalie T\n', 21, 3, 7, 171, 24, 3, 17, 2, 5, 29, 1, 263),
(33, 'Sarah\'s Homemade Applesauce', 'vegan', '4  apples - peeled, cored and chopped, ¾ cup water, ¼ cup white sugar, ½ teaspoon ground cinnamon', 'Total Fat 0g 0%, Sodium 3mg 0%, Total Carbohydrate 32g 12%, Dietary Fiber 4g 13%, Total Sugars 27g, Protein 0g, Vitamin C 6mg 32%, Calcium 13mg 1%, Iron 0mg 1%, Potassium 150mg 3%', 2, 0, 'Lunch', 'https://www.allrecipes.com/thmb/VY5d0tZHB8xz6y-ef586jR050FE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/25840-Sarahs-Applesauce-2000-56080bc8aac64df59aeec895f1875fc0.jpg', 'Combine apples, water, sugar, and cinnamon in a saucepan; cover and cook over medium heat until apples are soft, about 15 to 20 minutes.\nAllow apple mixture to cool, then mash with a fork or potato masher until it is the consistency you like.\n\n\n\n\n\n\n\n\n\n\n\nPhoto by cookin\'mama.\ncookin mama\n', 18, 7, 19, 128, 60, 5, 40, 4, 8, 35, 1, 245),
(34, 'Apple Crisp', 'veg', '10 cups all-purpose apples, peeled, cored and sliced, 1 cup white sugar, 1 tablespoon all-purpose flour, 1 teaspoon ground cinnamon, ½ cup water, 1 cup quick-cooking oats, 1 cup all-purpose flour, 1 cup packed brown sugar, ¼ teaspoon baking powder, ¼ teaspoon baking soda, ½ cup butter, melted', 'Total Fat 8g 11%, Saturated Fat 5g 25%, Cholesterol 20mg 7%, Sodium 98mg 4%, Total Carbohydrate 61g 22%, Dietary Fiber 3g 12%, Total Sugars 44g, Protein 2g, Vitamin C 4mg 21%, Calcium 36mg 3%, Iron 1mg 6%, Potassium 162mg 3%', 3, 45, 'Lunch', 'https://www.allrecipes.com/thmb/uAzhPOh86PfR-NIT1_dQ5c9bhag=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12409-apple-crisp-MFS-027-c2f142105db44206856af57c388db3ee.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nPlace sliced apples in a 9x13-inch baking dish. Mix white sugar, 1 tablespoon flour, and cinnamon together; sprinkle over apples. Pour water evenly over apples.\nCombine oats, 1 cup flour, brown sugar, baking powder, and baking soda in a large bowl. Add melted butter and mix with a fork until crumbly; sprinkle evenly over apple mixture.\nBake in the preheated oven until top is golden brown and apples are bubbling around the edges, about 45 minutes.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 19, 9, 31, 124, 52, 3, 0, 2, 5, 23, 1, 156),
(35, 'Apple Pie Filling', 'veg', '18 cups thinly sliced apples, 3 tablespoons lemon juice, 10 cups water, 4 ½ cups white sugar, 1 cup cornstarch, 2 teaspoons ground cinnamon, 1 teaspoon salt, ¼ teaspoon ground nutmeg', 'Total Fat 0g 0%, Sodium 61mg 3%, Total Carbohydrate 33g 12%, Dietary Fiber 1g 5%, Total Sugars 28g, Protein 0g, Vitamin C 3mg 16%, Calcium 7mg 1%, Iron 0mg 1%, Potassium 63mg 1%', 0, 15, 'Breakfast', 'https://www.allrecipes.com/thmb/c0bbYaS1V_mTt_fb85yo0gPcYUM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12681-apple-pie-filling-beauty-1x1-BP-2876-ed43a184f9564f4a8dc893c4ae8d561f.jpg', 'Toss apples with lemon juice in a large bowl and set aside.\nPour water into a Dutch oven over medium heat. Combine sugar, cornstarch, cinnamon, salt, and nutmeg in a bowl; add to water, stir well, and bring to a boil. Boil for 2 minutes, stirring constantly.\nAdd apples and return to a boil. Reduce heat, cover, and simmer until apples are tender, 6 to 8 minutes. Cool for 30 minutes.\nLadle into 5 freezer containers, leaving 1/2 inch of headspace. Cool at room temperature no longer than 1 1/2 hours.\nSeal and freeze. Can be stored for up to 12 months.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 0, 0, 0, 3, 32, 4, 27, 0, 6, 13, 0, 150),
(36, 'Easy Apple Crisp with Oat Topping', 'veg', '6  apples - peeled, cored, and sliced, 2 tablespoons white sugar, 1 ½ teaspoons ground cinnamon, divided, 1 cup brown sugar, ¾ cup old-fashioned oats, ¾ cup all-purpose flour, ½ cup cold butter', 'Total Fat 25g 32%, Saturated Fat 15g 74%, Cholesterol 61mg 20%, Sodium 177mg 8%, Total Carbohydrate 99g 36%, Dietary Fiber 8g 27%, Total Sugars 63g, Protein 5g, Vitamin C 10mg 48%, Calcium 69mg 5%, Iron 2mg 13%, Potassium 360mg 8%', 0, 15, 'Dinner', 'https://www.allrecipes.com/thmb/1tKFVcDXwp8Y_zGAzOoowGVomOk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Apple-Crisp-with-Oat-Topping-70ef9793a177482285f8ed377e692062.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nToss apples with white sugar and 1/2 teaspoon cinnamon in a medium bowl to coat; pour into a 9-inch square baking dish.\nMix brown sugar, oats, flour, and 1 teaspoon cinnamon in a separate bowl. Cut in cold butter with 2 knives or a pastry blender until the mixture resembles coarse crumbs; spread over apples and pat down gently until even.\nBake in the preheated oven until golden brown and sides are bubbling, about 40 minutes.\n\n\n\n\n\n\n\n\n\n', 8, 5, 20, 98, 61, 3, 44, 2, 4, 36, 1, 162),
(37, 'Easy Apple Cider', 'non_veg', '1 (64 fluid ounce) bottle apple cider, 3  cinnamon sticks, 1 teaspoon whole allspice, 1 teaspoon whole cloves, ⅓ cup brown sugar', 'Total Fat 0g 0%, Sodium 31mg 1%, Total Carbohydrate 43g 16%, Dietary Fiber 1g 3%, Total Sugars 38g, Protein 0g, Vitamin C 0mg 1%, Calcium 23mg 2%, Iron 0mg 1%, Potassium 20mg 0%', 4, 15, 'Breakfast', 'https://www.allrecipes.com/thmb/fRJDPqthkB2mxnA5VOrG6szvS1Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/158643-2d01a5a0827c44598c89b3bd819d250e.jpg', 'Combine apple cider and cinnamon sticks in a slow cooker.\nPlace allspice and cloves onto the center of an 8-inch square piece of cheesecloth. Gather edges of the cheesecloth together and tie to secure; place in the slow cooker. Stir in brown sugar. Cook on High until it comes to a boil. Reduce heat to Low and keep warm.', 0, 0, 0, 61, 33, 1, 28, 0, 3, 7, 0, 63);
INSERT INTO `base_recipe` (`id`, `name`, `recipe_type`, `recipe_content`, `nutrients`, `cooking_hour`, `cooking_minute`, `meal_type`, `image_url`, `description`, `calcium`, `cholesterol`, `dietary_fiber`, `iron`, `potassium`, `protein`, `saturated_fat`, `sodium`, `total_carbohydrate`, `total_fat`, `total_sugars`, `vitamin_c`) VALUES
(38, 'Apple-Cranberry Crisp', 'vegan', '2 pounds Granny Smith apples - peeled, cored and thinly sliced, ¾ cup cranberries, ¼ cup white sugar, 1 tablespoon ground cinnamon, 1 teaspoon ground nutmeg', 'Total Fat 12g 15%, Saturated Fat 4g 22%, Cholesterol 15mg 5%, Sodium 47mg 2%, Total Carbohydrate 43g 16%, Dietary Fiber 4g 16%, Total Sugars 32g, Protein 2g, Vitamin C 7mg 36%, Calcium 37mg 3%, Iron 1mg 6%, Potassium 207mg 4%', 3, 15, 'Dinner', 'https://www.allrecipes.com/thmb/MjDDFmBWiEx9f1kpSieyThF1KnM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/525977-d5f45adf863d41fba1a1071febfc00ad.jpg', 'Preheat the oven to 375 degrees F (190 degrees C.) Butter an 8-inch square baking dish.\nMix apples, cranberries, white sugar, cinnamon, and nutmeg in a large bowl. Place in an even layer in the prepared baking dish.\nIn the same bowl, combine oats, flour, and brown sugar for topping. Add butter pieces and mix with a fork until crumbly. Stir in pecans. Sprinkle topping over apples in the baking dish.\nBake in the preheated oven until apples are tender and topping is golden brown, 40 to 50 minutes.', 25, 15, 61, 177, 99, 8, 63, 5, 10, 69, 2, 360),
(39, 'Old-Fashioned Apple Dumplings', 'veg', '1 recipe pastry for double-crust pie, 6 large Granny Smith apples, peeled and cored, ½ cup butter, ¾ cup brown sugar, 1 teaspoon ground cinnamon, ½ teaspoon ground nutmeg, 3 cups water, 2 cups white sugar, 1 teaspoon vanilla extract', 'Total Fat 35g 45%, Saturated Fat 15g 74%, Cholesterol 41mg 14%, Sodium 434mg 19%, Total Carbohydrate 148g 54%, Dietary Fiber 7g 23%, Total Sugars 115g, Protein 5g, Vitamin C 11mg 53%, Calcium 52mg 4%, Iron 2mg 13%, Potassium 319mg 7%', 0, 15, 'Lunch', 'https://www.allrecipes.com/thmb/fBK5I_LpF7CXGzZUJfHTtRnhCac=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/9411399-215b5cd7d43e451baeadd6ce77e36c6e.jpg', 'Preheat the oven to 400 degrees F (200 degrees C). Butter a 9x13-inch pan.\nRoll pastry into a 24x16-inch rectangle on a lightly floured surface. Cut into six 8-inch squares. Place an apple on each pastry square with the cored opening facing upward. Cut butter into 8 pieces; place 1 piece in the opening of each apple; reserve the remaining butter for sauce.\nDivide brown sugar between apples, poking some inside each cored opening and the rest around the base of each apple. Sprinkle cinnamon and nutmeg over apples.\nUsing slightly wet fingertips, bring one corner of the pastry square up to the top of the apple, then bring the opposite corner to the top and press together. Bring up the two remaining corners, and seal. Slightly pinch the dough at the sides to completely seal in the apple. Repeat with the remaining apples and place in the prepared baking dish.\nCombine water, white sugar, vanilla extract, and reserved butter in a large saucepan. Place over medium heat, and bring to a boil. Reduce the heat to low and simmer until sugar is dissolved, about 5 minutes. Carefully pour the sauce over the dumplings.\nBake in the preheated oven for 50 to 60 minutes. Place each apple dumpling in a dessert bowl, and spoon some of the sauce over the top.', 0, 0, 0, 31, 43, 1, 38, 0, 0, 23, 0, 20),
(40, 'Southern Fried Apples', 'vegan', '½ cup butter, ½ cup white sugar, 2 tablespoons ground cinnamon, 4  Granny Smith apples - peeled, cored, and sliced', 'Total Fat 23g 30%, Saturated Fat 15g 73%, Cholesterol 61mg 20%, Sodium 165mg 7%, Total Carbohydrate 45g 16%, Dietary Fiber 5g 16%, Total Sugars 39g, Protein 1g, Vitamin C 7mg 35%, Calcium 49mg 4%, Iron 1mg 3%, Potassium 174mg 4%', 2, 0, 'Dinner', 'https://www.allrecipes.com/thmb/j38-5Fxnr9NUifEj3gsaBBkd75k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1049390-361cabad31114328ac20bcc3c35ffce4.jpg', 'Melt butter in a large skillet over medium heat. Add sugar and cinnamon; stir until sugar dissolves.\nAdd apples and cook until softened, 5 to 8 minutes.\n\n\n\n\n\n\n\n\n\n\n\nMelissa Goff\n', 12, 4, 15, 47, 43, 4, 32, 2, 7, 37, 1, 207),
(41, 'Apple Turnovers', 'vegan', '2 tablespoons lemon juice, 4 cups water, 4  Granny Smith apples - peeled, cored and sliced, 2 tablespoons butter, 1 cup brown sugar, 1 teaspoon ground cinnamon, 1 tablespoon cornstarch, 1 tablespoon water, 1 (17.25 ounce) package frozen puff pastry sheets, thawed, 1 cup confectioners\' sugar, 1 tablespoon milk, 1 teaspoon vanilla extract', 'Total Fat 26g 33%, Saturated Fat 8g 39%, Cholesterol 8mg 3%, Sodium 184mg 8%, Total Carbohydrate 80g 29%, Dietary Fiber 2g 9%, Total Sugars 50g, Protein 5g, Vitamin C 5mg 26%, Calcium 42mg 3%, Iron 2mg 11%, Potassium 161mg 3%', 2, 15, 'Breakfast', 'https://www.allrecipes.com/thmb/6EpK8eOrDHd4MMlY4u4aXTOPtHA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/59124-AppleTurnovers-mfs-2X3-1645-dea040eab9a84c7483c411988b92d134.jpg', 'Combine the lemon and 4 cups water in a large bowl. Place the sliced apples in the water to keep them from browning.\nMelt butter in a large skillet over medium heat. Drain water from apples, and place them into the hot skillet. Cook and stir for about 2 minutes. Add brown sugar, and cinnamon, and cook, stirring, for 2 more minutes. Stir together cornstarch and 1 tablespoon water. Pour into the skillet, and mix well. Cook for another minute, or until sauce has thickened. Remove from heat to cool slightly.\nPreheat the oven to 400 degrees F (200 degrees C).\nUnfold puff pastry sheets, and repair any cracks by pressing them back together. Trim each sheet into a square. Then cut each larger square into 4 smaller squares. Spoon apples onto the center of each squares. Fold over from corner to corner into a triangle shape, and press edges together to seal. Place turnovers on a baking sheet, leaving about 1 inch between them.\nBake for 25 minutes in the preheated oven, until turnovers are puffed and lightly browned. Cool completely before glazing.\nTo make the glaze, mix together the confectioners\' sugar, milk and vanilla in a small bowl. Adjust the thickness by adding more sugar or milk if necessary. Drizzle glaze over the cooled turnovers.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 35, 15, 41, 434, 148, 7, 115, 5, 11, 52, 2, 319),
(42, 'Apple Crisp - Perfect and Easy', 'vegan', '2 ½ cups apples - peeled, cored, and sliced, 1 cup sifted all-purpose flour, 1 cup white sugar, ½ teaspoon ground cinnamon, ¼ teaspoon salt, ½ cup butter, softened', 'Total Fat 16g 20%, Saturated Fat 10g 49%, Cholesterol 41mg 14%, Sodium 207mg 9%, Total Carbohydrate 56g 20%, Dietary Fiber 2g 6%, Total Sugars 38g, Protein 2g, Vitamin C 2mg 11%, Calcium 13mg 1%, Iron 1mg 6%, Potassium 77mg 2%', 4, 45, 'Dinner', 'https://www.allrecipes.com/thmb/hPRM3eLo_H-Z2kSeRRizL0El3ao=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1046883-apple-crisp-perfect-and-easy-naples34102-e505af44f7d9409ba48fc00e15efa036', 'Preheat the oven to 375 degrees F (190 degrees C). Lightly grease an 8-inch square baking dish.\nArrange apple slices evenly in the prepared baking dish. Sift flour, sugar, cinnamon, and salt into a bowl. Cut in butter using a pastry blender, or 2 knives, until mixture resembles coarse cornmeal; sprinkle over apples.\nBake in the preheated oven until topping is golden, 40 to 45 minutes. Cool slightly before serving.\n\n\n\n\n\n\n\n\n\n\n\nnaples34102\n', 23, 15, 61, 165, 45, 5, 39, 1, 7, 49, 1, 174),
(43, 'The Best Caramel Apples', 'non_veg', '8 large tart apples, 8  wooden chopsticks for handles, 2 cups packed brown sugar, 1 (14 ounce) can sweetened condensed milk, 1 cup light corn syrup, 1 cup butter, 2 teaspoons vanilla extract', 'Total Fat 28g 35%, Saturated Fat 17g 87%, Cholesterol 78mg 26%, Sodium 269mg 12%, Total Carbohydrate 142g 51%, Dietary Fiber 5g 18%, Total Sugars 113g, Protein 5g, Vitamin C 11mg 55%, Calcium 210mg 16%, Iron 1mg 4%, Potassium 491mg 10%', 3, 45, 'Dinner', 'https://www.allrecipes.com/thmb/8WP_nMIwgAzfbycBFQYUMEoBkfk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/5939512-2a490b670e524c628534909ed0af4842.jpg', 'Bring a large saucepan of water to a boil. Dip apples in boiling water for a few seconds, using a slotted spoon, then dry with paper towels to remove any wax from the peels. Set apples aside to cool completely, about 30 minutes.\nInsert sticks into the bottom of each cooled apple through the core for a handle.\nLine a baking sheet with parchment paper.\nStir brown sugar, sweetened condensed milk, corn syrup, and butter together in a saucepan over medium-high heat. Bring to a boil, stirring constantly, then reduce heat to medium. Cook until a candy thermometer reads 248 degrees F (120 degrees C), stirring constantly to prevent burning, about 25 to 30 minutes. A teaspoon of caramel dropped in a glass of cold water, should form a firm ball. Remove caramel from heat and stir in vanilla extract.\nWorking quickly, dip each apple into the hot caramel to completely coat the apple and about 1/2 inch of the wooden handle. Sprinkle apples with any desired toppings while still hot. Let caramel apples cool on the prepared baking sheet, about 1 hour. Use caution, caramel is very hot.', 26, 8, 8, 184, 80, 2, 50, 5, 5, 42, 2, 161),
(44, 'Mulligatawny Soup', 'veg', '½ cup chopped onion, 2 stalks celery, chopped, 1  carrot, diced, ¼ cup butter, 1 ½ tablespoons all-purpose flour, 1 ½ teaspoons curry powder, 4 cups chicken broth, ½  apple, cored and chopped, ¼ cup white rice, 1  skinless, boneless chicken breast half - cut into cubes, 1 pinch dried thyme,   salt and ground black pepper to taste, ½ cup heavy cream, heated', 'Total Fat 16g 20%, Saturated Fat 10g 48%, Cholesterol 62mg 21%, Sodium 734mg 32%, Total Carbohydrate 14g 5%, Dietary Fiber 1g 5%, Total Sugars 3g, Protein 7g, Vitamin C 3mg 15%, Calcium 38mg 3%, Iron 1mg 6%, Potassium 186mg 4%', 4, 30, 'Dinner', 'https://www.allrecipes.com/thmb/c5rvXd4iW32dqTECe4PNisvQVDQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/804799-33945c287a0d46b4acce8f0247ebf88c.jpg', 'Melt butter in a large soup pot over medium heat. Add onions, celery, and carrot and sauté until soft, 5 to 7 minutes. Add flour and curry, and cook 5 more minutes, stirring frequently. Add chicken broth, mix well, and bring to a boil. Reduce heat and simmer for about 30 minutes.\nAdd apple, rice, chicken, thyme, salt, and pepper. Simmer until rice is tender, 15 to 20 minutes.\nJust before serving, stir in hot cream.\n\n\n\n\n\n\n\n\n\n\n\nTheBritishBaker\n', 16, 10, 41, 207, 56, 2, 38, 2, 2, 13, 1, 77),
(45, 'Sauteed Apples', 'non_veg', '¼ cup butter, 4 large tart apples - peeled, cored and sliced 1/4 inch thick, ½ cup cold water, 2 teaspoons cornstarch, ½ cup brown sugar, ½ teaspoon ground cinnamon', 'Total Fat 6g 8%, Saturated Fat 4g 19%, Cholesterol 15mg 5%, Sodium 45mg 2%, Total Carbohydrate 24g 9%, Dietary Fiber 3g 9%, Total Sugars 20g, Protein 0g, Vitamin C 5mg 25%, Calcium 18mg 1%, Iron 0mg 1%, Potassium 128mg 3%', 2, 30, 'Dinner', 'https://www.allrecipes.com/thmb/pTjoToZum_x5Ki9khNk_SSe7MEs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/21672-SauteedApples-ddmfs-1X1-0061-fe2952cf8a6148959bd0076742996deb.jpg', 'Melt butter in a large skillet or saucepan over medium heat; add apples and cook, stirring constantly, until almost tender, 6 to 7 minutes.\nMix water and cornstarch together in a small bowl until cornstarch is dissolved; pour over apples. Stir in brown sugar and cinnamon. Bring to a boil for 2 minutes, stirring occasionally. Remove from heat and serve warm.\n\n\n\n\n\n\n\n\n\n\n\ndotdash meredith food studios\n', 28, 17, 78, 269, 142, 5, 113, 5, 11, 210, 1, 491),
(46, 'Homemade Apple Cider', 'vegan', '10 large apples, quartered,   water, to cover, ¾ cup white sugar, 1 tablespoon ground cinnamon, 1 tablespoon ground allspice', 'Total Fat 0g 0%, Sodium 1mg 0%, Total Carbohydrate 22g 8%, Dietary Fiber 2g 9%, Total Sugars 18g, Protein 0g, Vitamin C 4mg 21%, Calcium 12mg 1%, Iron 0mg 1%, Potassium 98mg 2%', 1, 0, 'Dinner', 'https://www.allrecipes.com/thmb/M0dm6zV9huJMIy70_9np9ztM4Sw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Homemade-Apple-Cider-LaDonna-Langwell-1x1-1-a6afe5b44bd246d39e597ed59281bbd5.jpg', 'Place apples in a large stockpot; cover with water by at least 2 inches. Stir in sugar, cinnamon, and allspice. Bring to a boil over medium-high heat. Boil, uncovered, for 1 hour. Reduce heat; cover and simmer for 2 hours.\nStrain apple mixture through a fine-mesh sieve; discard solids. Drain cider again through a cheesecloth-lined sieve.\nRefrigerate cider until cold, about 4 hours.\n\n\n\n\n\n\n\n\n\n\n\n LaDonna Langwell \n', 16, 10, 62, 734, 14, 1, 3, 7, 3, 38, 1, 186),
(47, 'Canned Apple Pie Filling', 'non_veg', '4 ½ cups white sugar, 1 cup cornstarch, 2 teaspoons ground cinnamon, ¼ teaspoon ground nutmeg, 10 cups water, 2 teaspoons salt, 3 tablespoons lemon juice, 2 drops yellow food coloring, 6 pounds apples', 'Total Fat 0g 0%, Sodium 85mg 4%, Total Carbohydrate 25g 9%, Dietary Fiber 1g 4%, Total Sugars 21g, Protein 0g, Vitamin C 3mg 13%, Calcium 5mg 0%, Iron 0mg 1%, Potassium 54mg 1%', 0, 45, 'Lunch', 'https://www.allrecipes.com/thmb/qcarmR-fmWcDZGS8BGjP51tm9Eg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1426682-1c6ec83bc56b426b9d812e0a26b1a739.jpg', 'Mix sugar, cornstarch, cinnamon, and nutmeg in a large pan. Add water and salt and mix well. Bring to a boil and cook until thick and bubbly. Remove from heat and add lemon juice and food coloring.\nSterilize canning jars, lids, and rings by boiling them in a large pot of water.\nPeel, core, and slice apples. Pack the sliced apples into hot canning jars, leaving a 1/2 inch of headspace.\nFill jars with hot syrup, and gently remove air bubbles with a knife.\nPut lids on and process in a water bath canner for 20 minutes.', 6, 4, 15, 45, 24, 3, 20, 0, 5, 18, 0, 128),
(48, 'Easy Apple Pie', 'vegan', '1 (14.1 ounce) package pastry for a 9-inch double-crust pie, ¾ cup white sugar, or more to taste, 1 teaspoon ground cinnamon, 6 cups thinly sliced apples, 1 tablespoon butter', 'Total Fat 9g 12%, Saturated Fat 3g 14%, Cholesterol 4mg 1%, Sodium 128mg 6%, Total Carbohydrate 42g 15%, Dietary Fiber 3g 11%, Total Sugars 29g, Protein 2g, Vitamin C 4mg 22%, Calcium 11mg 1%, Iron 1mg 4%, Potassium 117mg 2%', 2, 45, 'Dinner', 'https://www.allrecipes.com/thmb/aZyGZaTNLn-ewSEGDwwmEOwrRNg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12324-EasyApplePie-ddmfs-1x1-0016-c0401f8117954ba9a03c62ebba7f16af.jpg', 'Preheat the oven to 450 degrees F (230 degrees C).\nLine a 9-inch pie dish with one pastry crust; set second one aside.\nCombine 3/4 cup sugar and cinnamon in a small bowl. Add more sugar if your apples are tart.\nLayer apple slices in the prepared pie dish, sprinkling each layer with cinnamon-sugar mixture. Dot top layer with small pieces of butter. Cover with top crust.\nBake pie on the lowest rack of the preheated oven for 10 minutes. Reduce oven temperature to 350 degrees F (175 degrees C) and continue baking until golden brown and filling bubbles, 30 to 35 minutes more. Serve warm or cold.\n\n\n\n\n\n\n\n\n\n\n\ndotdash meredith food studios\n', 0, 0, 0, 1, 22, 2, 18, 0, 4, 12, 0, 98),
(49, 'Apple Crumb Pie', 'vegan', '6 cups thinly sliced apples, 1 tablespoon lemon juice (Optional), ¾ cup white sugar, 2 tablespoons all-purpose flour, ½ teaspoon ground cinnamon, ⅛ teaspoon ground nutmeg, ½ cup raisins (Optional), ½ cup chopped walnuts (Optional), 1 (9 inch) pie shell, ½ cup all-purpose flour, ½ cup packed brown sugar, 3 tablespoons butter', 'Total Fat 15g 19%, Saturated Fat 4g 20%, Cholesterol 11mg 4%, Sodium 139mg 6%, Total Carbohydrate 70g 25%, Dietary Fiber 4g 13%, Total Sugars 49g, Protein 4g, Vitamin C 6mg 28%, Calcium 37mg 3%, Iron 1mg 8%, Potassium 261mg 6%', 1, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/3qY9aBqD34LmSObh2KKQZatIjE8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/15587-apple-crumb-pie-ddmfs-4x3-1-dc4ac2e030e04d60a7650ede077f3c45.jpg', 'Preheat the oven to 375 degrees F (190 degrees C).\nPlace sliced apples in a large bowl; sprinkle with lemon juice. Mix white sugar, 2 tablespoons flour, cinnamon, and nutmeg together in a small bowl; sprinkle mixture over apples and toss until evenly coated. Stir in raisins and walnuts; transfer mixture into pie shell.\nMix 1/2 cup flour and brown sugar together in a small bowl. Blend in butter with a fork until mixture is crumbly; sprinkle over apple filling. Cover top of pie loosely with aluminum foil.\nBake in the preheated oven for 25 minutes. Remove foil and bake until top is golden brown and filling is bubbly, about 25 to 30 minutes more. Cool on a wire rack before serving.', 0, 0, 0, 85, 25, 1, 21, 0, 3, 5, 0, 54),
(50, 'Caramel Apples', 'veg', '6  apples, 6  wooden craft sticks,   cooking spray, 1 (14 ounce) package individually wrapped caramels, unwrapped, 2 tablespoons milk', 'Total Fat 6g 7%, Saturated Fat 2g 9%, Cholesterol 5mg 2%, Sodium 164mg 7%, Total Carbohydrate 70g 25%, Dietary Fiber 3g 12%, Total Sugars 57g, Protein 4g, Vitamin C 7mg 33%, Calcium 104mg 8%, Iron 0mg 2%, Potassium 295mg 6%', 2, 0, 'Breakfast', 'https://www.allrecipes.com/thmb/Gc2LqawZpqaCSWaMdsNx5RK9J2Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/481786-6c24ca3a641f43eea1597930a40b6178.jpg', 'Remove the stem from each apple and press a craft stick into the top. Spray a baking sheet with cooking spray.\nPlace caramels and milk in a microwave-safe bowl; microwave for 2 minutes, stirring once. Set aside to cool briefly.\nRoll each apple quickly in caramel sauce until well coated. Place on prepared sheet to set.\n\n\n\n\n\n\n\n\n\n', 9, 3, 4, 128, 42, 3, 29, 2, 4, 11, 1, 117),
(51, 'German Apple Cake', 'non_veg', '1 cup vegetable oil, 2  eggs, 2 cups white sugar, 1 teaspoon vanilla extract, 2 cups all-purpose flour, 2 teaspoons ground cinnamon, 1 teaspoon baking soda, ½ teaspoon salt, 4 cups apples - peeled, cored and diced', 'Total Fat 10g 12%, Saturated Fat 1g 7%, Cholesterol 16mg 5%, Sodium 107mg 5%, Total Carbohydrate 28g 10%, Dietary Fiber 1g 3%, Total Sugars 19g, Protein 2g, Vitamin C 1mg 5%, Calcium 7mg 1%, Iron 1mg 3%, Potassium 41mg 1%', 0, 15, 'Breakfast', 'https://www.allrecipes.com/thmb/u5wGUc1jJfOfLV8eG9Fl87sTyEk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2327614-809148baeed6489bbab268a7d527a08a.jpg', 'Preheat the oven to 350 degrees F (175 degrees C). Grease and flour a 9x13-inch cake pan.\nBeat oil and eggs in a mixing bowl with an electric mixer until creamy. Add sugar and vanilla; beat well.\nStir together flour, cinnamon, baking soda, and salt in a bowl. Slowly add flour mixture to egg mixture; mix until combined. The batter will be very thick. Fold in apples by hand using a wooden spoon. Spread batter into the prepared pan.\nBake cake in the preheated oven until a toothpick inserted into the center comes out clean, about 45 minutes. Cool cake on a wire rack.', 15, 4, 11, 139, 70, 4, 49, 4, 6, 37, 1, 261),
(52, 'Awesome Sausage, Apple and Cranberry Stuffing', 'vegan', '3 ¾ cups cubed white bread, 1 ½ cups cubed whole wheat bread, 1 pound ground turkey sausage, 1 cup chopped onion, ¾ cup chopped celery, 2 ½ teaspoons dried sage, 1 ½ teaspoons dried rosemary, ½ teaspoon dried thyme, 1  Golden Delicious apple, cored and chopped, ¾ cup dried cranberries, ⅓ cup minced fresh parsley, 1  cooked turkey liver, finely chopped, ¾ cup turkey stock, 4 tablespoons unsalted butter, melted', 'Total Fat 12g 15%, Saturated Fat 5g 25%, Cholesterol 80mg 27%, Sodium 548mg 24%, Total Carbohydrate 22g 8%, Dietary Fiber 2g 8%, Total Sugars 9g, Protein 13g, Vitamin C 9mg 44%, Calcium 47mg 4%, Iron 3mg 17%, Potassium 268mg 6%', 0, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/A16n6yykk6y6ofEi8akwV-6V9Ck=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1x1-PASSANO_ALR0922_Faves_Stuffing_5279-7495521ab45c4b8880373657bedc0db5.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nSpread white and whole wheat bread cubes in a single layer on a large baking sheet.\nBake in the preheated oven until evenly toasted, 5 to 7 minutes. Transfer toasted bread cubes to a large bowl.\nCook sausage and onions in a large skillet over medium heat, stirring and breaking up lumps, until evenly browned, 6 to 8 minutes. Add celery, sage, rosemary, and thyme; cook and stir until flavors blend, about 2 minutes.\nPour sausage mixture over bread in bowl. Mix in chopped apple, dried cranberries, parsley, and liver. Drizzle with turkey stock and melted butter; mix lightly.\nAllow stuffing to cool completely before loosely stuffing a turkey.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 6, 2, 5, 164, 70, 3, 57, 4, 7, 104, 0, 295),
(53, 'Apple Hand Pies', 'non_veg', '2 tablespoons butter, 2 large green apples - peeled, cored, and cut into chunks, 2 tablespoons brown sugar, ¼ cup white sugar, ¼ teaspoon salt, 1 ½ teaspoons ground cinnamon, or to taste, 1 teaspoon water, or more if needed (Optional), 1 pound prepared pie dough, cut into 4 pieces, 1  egg, 2 teaspoons milk, 1 teaspoon white sugar, or as needed', 'Total Fat 42g 54%, Saturated Fat 13g 64%, Cholesterol 62mg 21%, Sodium 754mg 33%, Total Carbohydrate 82g 30%, Dietary Fiber 6g 23%, Total Sugars 31g, Protein 9g, Vitamin C 5mg 27%, Calcium 38mg 3%, Iron 4mg 19%, Potassium 215mg 5%', 1, 30, 'Dinner', 'https://www.allrecipes.com/thmb/euXNMeXiywj4v6L_dLhpSqwsN0g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/234374-apple-hand-pies-mfs-1-8458cf2b0e764a7ab31c2d6aa0e3e841.jpg', 'Melt butter in a large skillet over medium heat; let butter brown to a light golden color and smell toasted, about 1 minute. Stir apples into hot butter; sprinkle with 1/4 cup white sugar, brown sugar, and salt. Cook and stir apple mixture until apples are softened, about 5 minutes. Mix in cinnamon and water; continue cooking until apples are soft and sticky, 1 to 2 more minutes. Spread apple filling onto a plate to cool.\nPreheat the oven to 400 degrees F (200 degrees C). Line a baking sheet with a silicone mat or parchment paper.\nForm a dough piece into a ball, place on a floured work surface, and roll into a circle about 8 inches in diameter. Spoon 1/3 to 1/2 cup apple filling in the center. Fold dough over filling, leaving about 1 inch of dough on the bottom side visible below the top side. Gently press dough closed around filling, using your fingertips.\nFold the overhanging bottom part of dough up over the top edge, working your way around the crust, and pinch the overhang tightly to the top part of the crust.\nCrimp the edge tightly closed, pinching a little bit of dough with the thumb and forefinger of one hand and using your index finger on the other hand to push a small notch into the pinched dough. Continue pinching and notching all the way around until crust is tightly crimped together. Repeat with remaining dough and filling. Transfer pies onto prepared baking sheet.\nWhisk egg with milk in a small bowl until thoroughly combined. Brush top of each hand pie with egg mixture and sprinkle with about 1/4 teaspoon white sugar. Cut 3 small vent holes in the top of each pie.\nBake in the preheated oven until pies are golden brown and filling is bubbling, 25 to 30 minutes. Let cool for at least 15 minutes before serving.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 10, 1, 16, 107, 28, 1, 19, 2, 1, 7, 1, 41),
(54, 'Amazing Apple Butter', 'vegan', '10 pounds apples, quartered, 4 cups unsweetened apple juice, 1 cup white sugar, 1 tablespoon apple cider vinegar, 1 ½ teaspoons ground cinnamon, ½ teaspoon ground cloves, ½ teaspoon ground allspice, 6  half-pint canning jars with lids and rings', 'Total Fat 0g 0%, Sodium 2mg 0%, Total Carbohydrate 20g 7%, Dietary Fiber 2g 8%, Total Sugars 16g, Protein 0g, Vitamin C 5mg 23%, Calcium 8mg 1%, Iron 0mg 1%, Potassium 127mg 3%', 2, 30, 'Lunch', 'https://www.allrecipes.com/thmb/x6vOON48-nGa1EFyDtv3yP_-yNE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/4097964-91fe5b73052648c7a2dad2ee8283ad23.jpg', 'Combine apples and apple juice in a stockpot; bring to a boil. Reduce heat and cook at a simmer until apples are soft and mushy, 20 to 30 minutes.\nSpoon apples into a food mill and process into puree while discarding the cores and peels remaining in the mill. Transfer process apples to a slow cooker.\nCook on High with the lid off until the moisture evaporates and the volume reduces by about half, overnight to 24 hours.\nStir sugar, apple cider vinegar, cinnamon, cloves, and allspice through the apple puree.\nContinue cooking on High until mixture mounds on a chilled plate without any water separating from the edges, another 2 to 6 hours.\nSterilize the jars and lids in boiling water for at least 5 minutes. Pack the apple butter into the hot, sterilized jars, filling the jars to within 1/4 inch of the top. Run a knife or a thin spatula around the insides of the jars after they have been filled to remove any air bubbles. Wipe the rims of the jars with a moist paper towel to remove any food residue. Top with lids, and screw on rings.\nPlace a rack in the bottom of a large stockpot and fill halfway with water. Bring to a boil and lower jars into the boiling water using a holder. Leave a 2-inch space between the jars. Pour in more boiling water if necessary to bring the water level to at least 1 inch above the tops of the jars. Bring the water to a rolling boil, cover the pot, and process 5 to 10 minutes.\nRemove the jars from the stockpot and place onto a cloth-covered or wood surface, several inches apart, until cool. Once cool, press the top of each lid with a finger, ensuring that the seal is tight (lid does not move up or down at all). Store in a cool, dark area.', 12, 5, 80, 548, 22, 2, 9, 13, 9, 47, 3, 268),
(55, 'Easy Apple Cinnamon Muffins', 'vegan', '1 ½ cups all-purpose flour, ¾ cup white sugar, 2 teaspoons baking powder, 1 teaspoon ground cinnamon, ½ teaspoon salt, 1  egg, ⅓ cup vegetable oil, ⅓ cup milk, 2  apples - peeled, cored and chopped', 'Total Fat 29g 37%, Saturated Fat 12g 61%, Cholesterol 73mg 24%, Sodium 441mg 19%, Total Carbohydrate 79g 29%, Dietary Fiber 3g 9%, Total Sugars 47g, Protein 6g, Vitamin C 2mg 11%, Calcium 110mg 8%, Iron 2mg 12%, Potassium 131mg 3%', 3, 15, 'Lunch', 'https://www.allrecipes.com/thmb/KJ3htdTnxZsf9tSvbqILDsqeSaI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/5907258-easy-apple-cinnamon-muffins-Kelly-McCulley-1x1-1-b3c6941ddef3499bafc0399c', 'Preheat the oven to 400 degrees F (200 degrees C). Grease 6 large muffin cups or line with paper muffin liners.\nMake muffins: Stir together flour, sugar, baking powder, cinnamon, and salt in a large bowl. Mix in egg, oil, and milk. Fold in chopped apples. Spoon batter into the prepared muffin cups, filling just below the rim.\nMake topping: Place sugar, butter, flour, and cinnamon into a small bowl; mash mixture with a fork and sprinkle over unbaked muffins.\nBake in the preheated oven until a toothpick inserted into the center of a muffin comes out clean, 20 to 25 minutes.\n\n\n\n\n\n\n\n\n\n\n\nKelly McCulley\n', 42, 13, 62, 754, 82, 6, 31, 9, 5, 38, 4, 215),
(56, 'Debbie\'s Amazing Apple Bread', 'veg', '2  eggs, 2 cups white sugar, ½ cup vegetable oil, 2 teaspoons vanilla extract, 2 cups apples, peeled and diced, 2 cups all-purpose flour, 1 ½ teaspoons salt, 1 teaspoon baking powder, ½ teaspoon ground cinnamon, or more to taste', 'Total Fat 12g 16%, Saturated Fat 2g 11%, Cholesterol 37mg 12%, Sodium 412mg 18%, Total Carbohydrate 63g 23%, Dietary Fiber 1g 5%, Total Sugars 43g, Protein 4g, Vitamin C 1mg 6%, Calcium 39mg 3%, Iron 1mg 8%, Potassium 70mg 1%', 4, 30, 'Breakfast', 'https://www.allrecipes.com/thmb/scNfqqIpDtfCcaFQIjsvzmxCSV0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/4580871_Debbies-Amazing-Apple-Bread-1x1-1-3f46182021ab4a889b86f7dac9c1c9fb.jpg', 'Preheat the oven to 350 degrees F (175 degrees C). Grease a 9x5-inch loaf pan.\nBeat eggs, sugar, vegetable oil, and vanilla extract in a mixing bowl; stir in apples.\nMix flour, salt, baking powder, and cinnamon in a separate bowl; add to apple mixture and stir just until evenly combined. Pour batter into the prepared loaf pan.\nBake in the preheated oven for 45 minutes. Cover loaf pan with aluminum foil; continue baking until a toothpick inserted into the center comes out clean, about 15 minutes more. Cool in the pan for 10 minutes before removing to cool completely on a wire rack.\n\n\n\n\n\n\n\n\n\n\n\nAaron Brown\n', 0, 0, 0, 2, 20, 2, 16, 0, 5, 8, 0, 127),
(57, 'Mom\'s Apple Fritters', 'veg', '1 quart vegetable oil for deep-frying, 1 ½ cups all-purpose flour, 1 tablespoon white sugar, 2 teaspoons baking powder, ½ teaspoon salt, ⅔ cup milk, 2 large eggs, beaten, 1 tablespoon vegetable oil, 3 cups apples - peeled, cored and chopped, 1 cup cinnamon sugar', 'Total Fat 5g 6%, Saturated Fat 1g 4%, Cholesterol 16mg 5%, Sodium 98mg 4%, Total Carbohydrate 17g 6%, Dietary Fiber 1g 2%, Total Sugars 3g, Protein 2g, Vitamin C 1mg 4%, Calcium 35mg 3%, Iron 1mg 3%, Potassium 41mg 1%', 4, 0, 'Breakfast', 'https://www.allrecipes.com/thmb/cU_5TCv2LWEf-I2QJbXTsJUaGSI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/90295-moms-apple-fritters-ddmfs-1X1-5783-a6edf46cd33c4a00ad5a02432822e57d.jpg', 'Heat oil in a deep fryer or electric skillet to 375 degrees F (190 degrees C).\nStir together flour, sugar, baking powder, and salt in a large bowl. Pour in milk, eggs, and oil; stir until well blended. Mix in apples until evenly distributed.\nWorking in small batches to prevent overcrowding, drop spoonfuls of batter into the deep fryer and fry in hot oil until golden all over, about 5 minutes. Use a slotted spoon to transfer fritters to a paper towel-lined plate. Toss warm fritters with cinnamon sugar in a bowl until well coated.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 29, 12, 73, 441, 79, 3, 47, 6, 2, 110, 2, 131),
(58, 'Easy Apple Crisp with Pie Filling', 'vegan', '1 (21 ounce) can apple pie filling, ½ teaspoon ground cinnamon, ½ teaspoon ground nutmeg, 1 cup margarine, ¼ cup brown sugar, 2 cups all-purpose flour', 'Total Fat 31g 39%, Saturated Fat 5g 27%, Sodium 398mg 17%, Total Carbohydrate 67g 25%, Dietary Fiber 2g 8%, Total Sugars 9g, Protein 5g, Vitamin C 1mg 6%, Calcium 31mg 2%, Iron 2mg 13%, Potassium 119mg 3%', 3, 30, 'Lunch', 'https://www.allrecipes.com/thmb/bQ7QL-XFrgBwNMsa43zSyaX_xmM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/7813774-acbbc3ca7c0f4caaa24f2d4c07b7b83f.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nSpread pie filling in an 8x8-inch baking dish. Sprinkle with cinnamon and nutmeg.\nCream together margarine and sugar. Cut in flour with a pastry blender until the mixture resembles coarse crumbs. Sprinkle mixture over pie filling.\nBake in the preheated oven until the topping is brown and crisp and the filling is hot and bubbly, about 20 minutes.', 12, 2, 37, 412, 63, 1, 43, 4, 1, 39, 1, 70),
(59, 'Apple Strudel Muffins', 'vegan', '2 cups all-purpose flour, 1 teaspoon baking powder, ½ teaspoon baking soda, ½ teaspoon salt, 1 cup white sugar, ½ cup butter, 2 large eggs, 1 ¼ teaspoons vanilla, 1 ½ cups chopped apples', 'Total Fat 10g 12%, Saturated Fat 6g 29%, Cholesterol 54mg 18%, Sodium 255mg 11%, Total Carbohydrate 41g 15%, Dietary Fiber 1g 4%, Total Sugars 24g, Protein 3g, Vitamin C 1mg 4%, Calcium 33mg 3%, Iron 1mg 7%, Potassium 63mg 1%', 0, 30, 'Breakfast', 'https://www.allrecipes.com/thmb/QTc6kTodu38CuuTDlcAz9XbueDA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1097944-apple-strudel-muffins-Korona-1x1-2-6710dec0aba7474a80c89f21a2059ebc.jpg', 'Preheat the oven to 375 degrees F (190 degrees C). Grease a 12-cup muffin pan.\nMix flour, baking powder, baking soda, and salt in a medium bowl.\nBeat together sugar, butter, and eggs in a large bowl until smooth. Mix in vanilla. Stir in apples, then gradually blend in flour mixture. Spoon batter into the prepared muffin pan.\nMake topping: Mix brown sugar, flour, and cinnamon in a small bowl. Cut in butter until mixture resembles coarse crumbs. Sprinkle over each muffin top.\nBake in the preheated oven until a toothpick inserted in the center of a muffin comes out clean, about 20 minutes. Let sit 5 minutes before transferring muffins to a wire rack to cool.\n\n\n\n\n\n\n\n\n\n\n\nKorona\n', 5, 1, 16, 98, 17, 1, 3, 2, 1, 35, 1, 41),
(60, 'Delicious Cinnamon Baked Apples', 'non_veg', '1 teaspoon butter, 2 tablespoons brown sugar, 3 teaspoons vanilla sugar, 3 teaspoons ground cinnamon, 1 teaspoon ground nutmeg, 6 large apples - peeled, cored, and sliced, 3 ½ tablespoons water', 'Total Fat 1g 2%, Saturated Fat 1g 3%, Cholesterol 2mg 1%, Sodium 9mg 0%, Total Carbohydrate 37g 13%, Dietary Fiber 6g 21%, Total Sugars 27g, Protein 1g, Vitamin C 10mg 49%, Calcium 29mg 2%, Iron 0mg 2%, Potassium 240mg 5%', 1, 0, 'Breakfast', 'https://www.allrecipes.com/thmb/wYuZO3nEvxY6WgITCcHa78l2wlo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/228683-delicious-cinnamon-baked-apples-ddmfs-4X3-1428-9500d581c4ad4d74acc67e4f6c9', 'Preheat the oven to 350 degrees F (175 degrees C). Grease a large baking dish with butter.\nMix brown sugar, vanilla sugar, cinnamon, and nutmeg in a small bowl. Layer about 1/3 of the apples in the prepared baking dish; sprinkle with 1/3 of the sugar mixture. Repeat layers twice more.\nBake in preheated oven for 30 minutes. Pour water over apples and continue baking until tender, about 15 minutes more.', 31, 5, 0, 398, 67, 2, 9, 5, 1, 31, 2, 119),
(61, 'Waldorf Salad', 'vegan', '½ cup mayonnaise, 1 tablespoon white sugar, 1 teaspoon lemon juice, ⅛ teaspoon salt, 3  apples -- peeled, cored, and chopped, 1 cup thinly sliced celery, ½ cup chopped walnuts, ½ cup raisins (Optional)', 'Total Fat 21g 27%, Saturated Fat 3g 14%, Cholesterol 7mg 2%, Sodium 171mg 7%, Total Carbohydrate 24g 9%, Dietary Fiber 3g 11%, Total Sugars 17g, Protein 2g, Vitamin C 5mg 23%, Calcium 29mg 2%, Iron 1mg 4%, Potassium 263mg 6%', 2, 0, 'Lunch', 'https://www.allrecipes.com/thmb/0-fRnnKLjtwxVaqh2PUbkiOTbVw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2180807_Waldorf-Salad-II-4x3-1-0d929166ff114b14a0e818e001e0dbe4.jpg', 'Whisk together mayonnaise, sugar, lemon juice, and salt in a serving bowl.\nStir in apples, celery, walnuts, and raisins. Cover and chill in the refrigerator until ready to serve.', 10, 6, 54, 255, 41, 1, 24, 3, 1, 33, 1, 63),
(62, 'Apple-Cranberry Crostada', 'veg', '3 tablespoons butter, 2 pounds Granny Smith apples (or other firm, crisp apples), peeled, quartered, cored and sliced 1/4-inch thick, 1 pound Macintosh apples (or other soft-textured apples that fall apart when cooked), peeled, quartered, cored, and sliced 1/4-inch thick, ½ cup sugar, ½ cup dried cranberries, 1 sheet frozen puff pastry, thawed but still cold (follow package directions), 1  egg white, lightly beaten, 1 tablespoon sugar, 1 cup Optional: Ice cream or lightly sweetened whipped cream', 'Total Fat 18g 23%, Saturated Fat 7g 34%, Cholesterol 19mg 6%, Sodium 128mg 6%, Total Carbohydrate 60g 22%, Dietary Fiber 5g 16%, Total Sugars 40g, Protein 4g, Vitamin C 8mg 42%, Calcium 35mg 3%, Iron 1mg 6%, Potassium 245mg 5%', 4, 15, 'Breakfast', 'https://www.allrecipes.com/thmb/Tf1wH73bfH6OqlfQySSDtMaP-nw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/517708-5f57072dedb04a389edab3e141517d4d.jpg', 'Heat butter in a large skillet over medium-high heat. Add apples, 1/2 cup sugar and cranberries; cover and cook until apples release their liquid, about 5 minutes. Remove lid and continue to cook, stirring frequently, until soft apples fall apart and juices thicken to a thin-syrup consistency, about 5 minutes longer. Pour onto a large-lipped cookie sheet or jellyroll pan and cool to room temperature. (Can be refrigerated in an airtight container up to 5 days.)\nAdjust oven rack to low position and heat oven to 400 degrees. Open puff pastry sheet on a lightly floured work surface. Roll into a rectangle, about 10 by 16 inches. Transfer to a large cookie sheet. (I suggest lining the sheet with parchment paper; this ensures the crostada doesn\'t stick and allows easy cleanup.)\nSpread cooked apples over pastry, leaving a 2-inch border. Fold up pastry borders over apples. Unfold corners and form ruffled creases to keep dough from overlapping. Brush pastry border with egg white and sprinkle with the remaining 1 Tb. sugar. Bake until pastry is golden brown, 25 to 30 minutes. Serve warm or at room temperature with optional ice cream or whipped cream.', 1, 1, 2, 9, 37, 6, 27, 1, 10, 29, 0, 240),
(63, 'Apple Pie by Grandma Ople', 'vegan', '8 small Granny Smith apples, or as needed, ½ cup unsalted butter, 3 tablespoons all-purpose flour, ½ cup white sugar, ½ cup packed brown sugar, ¼ cup water, 1 (9 inch) double-crust pie pastry, thawed', 'Total Fat 19g 24%, Saturated Fat 9g 46%, Cholesterol 31mg 10%, Sodium 124mg 5%, Total Carbohydrate 52g 19%, Dietary Fiber 3g 10%, Protein 2g, Vitamin C 5mg 27%, Calcium 23mg 2%, Iron 1mg 6%, Potassium 156mg 3%', 3, 30, 'Lunch', 'https://www.allrecipes.com/thmb/1I95oiTGz6aEpuHd2DAr33w7Mgg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12682-apple-pie-by-grandma-ople-natasha-titanov-1x1-1-7f1cd9f631d24ff0b90cac01632', 'Peel and core apples, then thinly slice. Set aside.\nPreheat the oven to 425 degrees F (220 degrees C).\nMelt butter in a saucepan over medium heat. Add flour and stir to form a paste; cook until fragrant, about 1 to 2 minutes. Add both sugars and water; bring to a boil. Reduce the heat to low and simmer for 3 to 5 minutes. Remove from the heat.\nPress one pastry into the bottom and up the sides of a 9-inch pie pan. Roll out remaining pastry so it will overhang the pie by about 1/2 inch. Cut pastry into eight 1-inch strips.\nPlace sliced apples into the bottom crust, forming a slight mound. Lay four pastry strips vertically and evenly spaced over apples, using longer strips in the center and shorter strips at the edges.\nMake a lattice crust: Fold the first and third strips all the way back so they\'re almost falling off the pie. Lay one of the unused strips perpendicularly over the second and fourth strips, then unfold the first and third strips back into their original position.\nFold the second and fourth vertical strips back. Lay one of the three unused strips perpendicularly over top. Unfold the second and fourth strips back into their original position.\nRepeat Steps 6 and 7 to weave in the last two strips of pastry. Fold and trim excess dough at the edges as necessary, and pinch to secure.\nSlowly and gently pour sugar-butter mixture over lattice crust, making sure it seeps over sliced apples. Brush some onto lattice, but make sure it doesn\'t run off the sides.\nBake in the preheated oven for 15 minutes. Reduce the temperature to 350 degrees F (175 degrees C) and continue baking until apples are soft, 35 to 45 minutes.\n\n\n\n\n\n\n\n\n\n\n\nNatalie T\n', 21, 3, 7, 171, 24, 3, 17, 2, 5, 29, 1, 263),
(64, 'Sarah\'s Homemade Applesauce', 'non_veg', '4  apples - peeled, cored and chopped, ¾ cup water, ¼ cup white sugar, ½ teaspoon ground cinnamon', 'Total Fat 0g 0%, Sodium 3mg 0%, Total Carbohydrate 32g 12%, Dietary Fiber 4g 13%, Total Sugars 27g, Protein 0g, Vitamin C 6mg 32%, Calcium 13mg 1%, Iron 0mg 1%, Potassium 150mg 3%', 2, 30, 'Lunch', 'https://www.allrecipes.com/thmb/VY5d0tZHB8xz6y-ef586jR050FE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/25840-Sarahs-Applesauce-2000-56080bc8aac64df59aeec895f1875fc0.jpg', 'Combine apples, water, sugar, and cinnamon in a saucepan; cover and cook over medium heat until apples are soft, about 15 to 20 minutes.\nAllow apple mixture to cool, then mash with a fork or potato masher until it is the consistency you like.\n\n\n\n\n\n\n\n\n\n\n\nPhoto by cookin\'mama.\ncookin mama\n', 18, 7, 19, 128, 60, 5, 40, 4, 8, 35, 1, 245),
(65, 'Apple Crisp', 'non_veg', '10 cups all-purpose apples, peeled, cored and sliced, 1 cup white sugar, 1 tablespoon all-purpose flour, 1 teaspoon ground cinnamon, ½ cup water, 1 cup quick-cooking oats, 1 cup all-purpose flour, 1 cup packed brown sugar, ¼ teaspoon baking powder, ¼ teaspoon baking soda, ½ cup butter, melted', 'Total Fat 8g 11%, Saturated Fat 5g 25%, Cholesterol 20mg 7%, Sodium 98mg 4%, Total Carbohydrate 61g 22%, Dietary Fiber 3g 12%, Total Sugars 44g, Protein 2g, Vitamin C 4mg 21%, Calcium 36mg 3%, Iron 1mg 6%, Potassium 162mg 3%', 2, 30, 'Breakfast', 'https://www.allrecipes.com/thmb/uAzhPOh86PfR-NIT1_dQ5c9bhag=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12409-apple-crisp-MFS-027-c2f142105db44206856af57c388db3ee.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nPlace sliced apples in a 9x13-inch baking dish. Mix white sugar, 1 tablespoon flour, and cinnamon together; sprinkle over apples. Pour water evenly over apples.\nCombine oats, 1 cup flour, brown sugar, baking powder, and baking soda in a large bowl. Add melted butter and mix with a fork until crumbly; sprinkle evenly over apple mixture.\nBake in the preheated oven until top is golden brown and apples are bubbling around the edges, about 45 minutes.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 19, 9, 31, 124, 52, 3, 0, 2, 5, 23, 1, 156),
(66, 'Apple Pie Filling', 'veg', '18 cups thinly sliced apples, 3 tablespoons lemon juice, 10 cups water, 4 ½ cups white sugar, 1 cup cornstarch, 2 teaspoons ground cinnamon, 1 teaspoon salt, ¼ teaspoon ground nutmeg', 'Total Fat 0g 0%, Sodium 61mg 3%, Total Carbohydrate 33g 12%, Dietary Fiber 1g 5%, Total Sugars 28g, Protein 0g, Vitamin C 3mg 16%, Calcium 7mg 1%, Iron 0mg 1%, Potassium 63mg 1%', 0, 45, 'Dinner', 'https://www.allrecipes.com/thmb/c0bbYaS1V_mTt_fb85yo0gPcYUM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/12681-apple-pie-filling-beauty-1x1-BP-2876-ed43a184f9564f4a8dc893c4ae8d561f.jpg', 'Toss apples with lemon juice in a large bowl and set aside.\nPour water into a Dutch oven over medium heat. Combine sugar, cornstarch, cinnamon, salt, and nutmeg in a bowl; add to water, stir well, and bring to a boil. Boil for 2 minutes, stirring constantly.\nAdd apples and return to a boil. Reduce heat, cover, and simmer until apples are tender, 6 to 8 minutes. Cool for 30 minutes.\nLadle into 5 freezer containers, leaving 1/2 inch of headspace. Cool at room temperature no longer than 1 1/2 hours.\nSeal and freeze. Can be stored for up to 12 months.\n\n\n\n\n\n\n\n\n\n\n\nDotdash Meredith Food Studios\n', 0, 0, 0, 3, 32, 4, 27, 0, 6, 13, 0, 150),
(67, 'Easy Apple Crisp with Oat Topping', 'non_veg', '6  apples - peeled, cored, and sliced, 2 tablespoons white sugar, 1 ½ teaspoons ground cinnamon, divided, 1 cup brown sugar, ¾ cup old-fashioned oats, ¾ cup all-purpose flour, ½ cup cold butter', 'Total Fat 25g 32%, Saturated Fat 15g 74%, Cholesterol 61mg 20%, Sodium 177mg 8%, Total Carbohydrate 99g 36%, Dietary Fiber 8g 27%, Total Sugars 63g, Protein 5g, Vitamin C 10mg 48%, Calcium 69mg 5%, Iron 2mg 13%, Potassium 360mg 8%', 2, 45, 'Lunch', 'https://www.allrecipes.com/thmb/1tKFVcDXwp8Y_zGAzOoowGVomOk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Apple-Crisp-with-Oat-Topping-70ef9793a177482285f8ed377e692062.jpg', 'Preheat the oven to 350 degrees F (175 degrees C).\nToss apples with white sugar and 1/2 teaspoon cinnamon in a medium bowl to coat; pour into a 9-inch square baking dish.\nMix brown sugar, oats, flour, and 1 teaspoon cinnamon in a separate bowl. Cut in cold butter with 2 knives or a pastry blender until the mixture resembles coarse crumbs; spread over apples and pat down gently until even.\nBake in the preheated oven until golden brown and sides are bubbling, about 40 minutes.\n\n\n\n\n\n\n\n\n\n', 8, 5, 20, 98, 61, 3, 44, 2, 4, 36, 1, 162),
(68, 'Easy Apple Cider', 'non_veg', '1 (64 fluid ounce) bottle apple cider, 3  cinnamon sticks, 1 teaspoon whole allspice, 1 teaspoon whole cloves, ⅓ cup brown sugar', 'Total Fat 0g 0%, Sodium 31mg 1%, Total Carbohydrate 43g 16%, Dietary Fiber 1g 3%, Total Sugars 38g, Protein 0g, Vitamin C 0mg 1%, Calcium 23mg 2%, Iron 0mg 1%, Potassium 20mg 0%', 3, 0, 'Dinner', 'https://www.allrecipes.com/thmb/fRJDPqthkB2mxnA5VOrG6szvS1Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/158643-2d01a5a0827c44598c89b3bd819d250e.jpg', 'Combine apple cider and cinnamon sticks in a slow cooker.\nPlace allspice and cloves onto the center of an 8-inch square piece of cheesecloth. Gather edges of the cheesecloth together and tie to secure; place in the slow cooker. Stir in brown sugar. Cook on High until it comes to a boil. Reduce heat to Low and keep warm.', 0, 0, 0, 61, 33, 1, 28, 0, 3, 7, 0, 63),
(69, 'Apple-Cranberry Crisp', 'non_veg', '2 pounds Granny Smith apples - peeled, cored and thinly sliced, ¾ cup cranberries, ¼ cup white sugar, 1 tablespoon ground cinnamon, 1 teaspoon ground nutmeg', 'Total Fat 12g 15%, Saturated Fat 4g 22%, Cholesterol 15mg 5%, Sodium 47mg 2%, Total Carbohydrate 43g 16%, Dietary Fiber 4g 16%, Total Sugars 32g, Protein 2g, Vitamin C 7mg 36%, Calcium 37mg 3%, Iron 1mg 6%, Potassium 207mg 4%', 3, 15, 'Dinner', 'https://www.allrecipes.com/thmb/MjDDFmBWiEx9f1kpSieyThF1KnM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/525977-d5f45adf863d41fba1a1071febfc00ad.jpg', 'Preheat the oven to 375 degrees F (190 degrees C.) Butter an 8-inch square baking dish.\nMix apples, cranberries, white sugar, cinnamon, and nutmeg in a large bowl. Place in an even layer in the prepared baking dish.\nIn the same bowl, combine oats, flour, and brown sugar for topping. Add butter pieces and mix with a fork until crumbly. Stir in pecans. Sprinkle topping over apples in the baking dish.\nBake in the preheated oven until apples are tender and topping is golden brown, 40 to 50 minutes.', 25, 15, 61, 177, 99, 8, 63, 5, 10, 69, 2, 360),
(70, 'Old-Fashioned Apple Dumplings', 'non_veg', '1 recipe pastry for double-crust pie, 6 large Granny Smith apples, peeled and cored, ½ cup butter, ¾ cup brown sugar, 1 teaspoon ground cinnamon, ½ teaspoon ground nutmeg, 3 cups water, 2 cups white sugar, 1 teaspoon vanilla extract', 'Total Fat 35g 45%, Saturated Fat 15g 74%, Cholesterol 41mg 14%, Sodium 434mg 19%, Total Carbohydrate 148g 54%, Dietary Fiber 7g 23%, Total Sugars 115g, Protein 5g, Vitamin C 11mg 53%, Calcium 52mg 4%, Iron 2mg 13%, Potassium 319mg 7%', 3, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/fBK5I_LpF7CXGzZUJfHTtRnhCac=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/9411399-215b5cd7d43e451baeadd6ce77e36c6e.jpg', 'Preheat the oven to 400 degrees F (200 degrees C). Butter a 9x13-inch pan.\nRoll pastry into a 24x16-inch rectangle on a lightly floured surface. Cut into six 8-inch squares. Place an apple on each pastry square with the cored opening facing upward. Cut butter into 8 pieces; place 1 piece in the opening of each apple; reserve the remaining butter for sauce.\nDivide brown sugar between apples, poking some inside each cored opening and the rest around the base of each apple. Sprinkle cinnamon and nutmeg over apples.\nUsing slightly wet fingertips, bring one corner of the pastry square up to the top of the apple, then bring the opposite corner to the top and press together. Bring up the two remaining corners, and seal. Slightly pinch the dough at the sides to completely seal in the apple. Repeat with the remaining apples and place in the prepared baking dish.\nCombine water, white sugar, vanilla extract, and reserved butter in a large saucepan. Place over medium heat, and bring to a boil. Reduce the heat to low and simmer until sugar is dissolved, about 5 minutes. Carefully pour the sauce over the dumplings.\nBake in the preheated oven for 50 to 60 minutes. Place each apple dumpling in a dessert bowl, and spoon some of the sauce over the top.', 0, 0, 0, 31, 43, 1, 38, 0, 0, 23, 0, 20),
(71, 'Southern Fried Apples', 'vegan', '½ cup butter, ½ cup white sugar, 2 tablespoons ground cinnamon, 4  Granny Smith apples - peeled, cored, and sliced', 'Total Fat 23g 30%, Saturated Fat 15g 73%, Cholesterol 61mg 20%, Sodium 165mg 7%, Total Carbohydrate 45g 16%, Dietary Fiber 5g 16%, Total Sugars 39g, Protein 1g, Vitamin C 7mg 35%, Calcium 49mg 4%, Iron 1mg 3%, Potassium 174mg 4%', 3, 45, 'Breakfast', 'https://www.allrecipes.com/thmb/j38-5Fxnr9NUifEj3gsaBBkd75k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1049390-361cabad31114328ac20bcc3c35ffce4.jpg', 'Melt butter in a large skillet over medium heat. Add sugar and cinnamon; stir until sugar dissolves.\nAdd apples and cook until softened, 5 to 8 minutes.\n\n\n\n\n\n\n\n\n\n\n\nMelissa Goff\n', 12, 4, 15, 47, 43, 4, 32, 2, 7, 37, 1, 207);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'base', 'contactmessage'),
(10, 'base', 'mealplan'),
(9, 'base', 'profile'),
(8, 'base', 'recipe'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-17 04:12:13.956130'),
(2, 'auth', '0001_initial', '2024-06-17 04:12:14.380576'),
(3, 'admin', '0001_initial', '2024-06-17 04:12:14.479741'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-17 04:12:14.492709'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-17 04:12:14.504714'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-17 04:12:14.561743'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-17 04:12:14.638490'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-17 04:12:14.657446'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-17 04:12:14.671405'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-17 04:12:14.716277'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-17 04:12:14.718271'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-17 04:12:14.732235'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-17 04:12:14.749475'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-17 04:12:14.763641'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-17 04:12:14.779616'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-17 04:12:14.791233'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-17 04:12:14.808556'),
(18, 'base', '0001_initial', '2024-06-17 04:12:14.830618'),
(19, 'sessions', '0001_initial', '2024-06-17 04:12:14.858916'),
(20, 'base', '0002_profile', '2024-06-17 05:23:58.523660'),
(21, 'base', '0003_recipe_calcium_recipe_cholesterol_and_more', '2024-06-17 08:20:47.317768'),
(22, 'base', '0004_profile_age_profile_daily_calories_profile_height_and_more', '2024-06-25 12:29:47.053340'),
(23, 'base', '0005_mealplan', '2024-06-26 10:08:19.420516');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7dlmrdkx0trm19yxdluci8ggeo9y6sav', 'e30:1sM5Ej:WzWOYgaC6xIax6X6rr73JNYw4hUiWJ0PNDtjtJCxqes', '2024-07-09 12:25:25.286306'),
('eyq0b56vg5wsuehuztt13xbj55bkp8c3', '.eJxVjMEOwiAQRP-FsyGw3dbFo3e_gSwLSNW0SWlPxn-XJj1oMpeZNzNv5Xlbi99qWvwY1UV16vSbBZZnmnYQHzzdZy3ztC5j0HtFH7Tq2xzT63p0_w4K19LWLkpmJItiyAATnUUAc2rqTW6-ByLmPKBD7CCnkOIgYMB1Fi2B-nwB7ms3rA:1sMRrZ:UwV398bw5IF4tWVupkMXh_kJ22NWOD47fYUA0RFn9so', '2024-07-10 12:35:01.679429');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_contactmessage`
--
ALTER TABLE `base_contactmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_mealplan`
--
ALTER TABLE `base_mealplan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_mealplan_user_id_bc930cd2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_mealplan_recipes`
--
ALTER TABLE `base_mealplan_recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_mealplan_recipes_mealplan_id_recipe_id_ae8b5375_uniq` (`mealplan_id`,`recipe_id`),
  ADD KEY `base_mealplan_recipes_recipe_id_8118ce44_fk_base_recipe_id` (`recipe_id`);

--
-- Indexes for table `base_profile`
--
ALTER TABLE `base_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `base_recipe`
--
ALTER TABLE `base_recipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_contactmessage`
--
ALTER TABLE `base_contactmessage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_mealplan`
--
ALTER TABLE `base_mealplan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `base_mealplan_recipes`
--
ALTER TABLE `base_mealplan_recipes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `base_profile`
--
ALTER TABLE `base_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_recipe`
--
ALTER TABLE `base_recipe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_mealplan`
--
ALTER TABLE `base_mealplan`
  ADD CONSTRAINT `base_mealplan_user_id_bc930cd2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_mealplan_recipes`
--
ALTER TABLE `base_mealplan_recipes`
  ADD CONSTRAINT `base_mealplan_recipes_mealplan_id_5b1728e8_fk_base_mealplan_id` FOREIGN KEY (`mealplan_id`) REFERENCES `base_mealplan` (`id`),
  ADD CONSTRAINT `base_mealplan_recipes_recipe_id_8118ce44_fk_base_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `base_recipe` (`id`);

--
-- Constraints for table `base_profile`
--
ALTER TABLE `base_profile`
  ADD CONSTRAINT `base_profile_user_id_8081352f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
