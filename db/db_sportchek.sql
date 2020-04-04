-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2020 at 07:49 PM
-- Server version: 10.4.10-Localhost
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brand_id` int(20) NOT NULL,
  `brand_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'adidas'),
(2, 'champion'),
(3, 'nike'),
(4, 'the north face'),
(5, 'vans'),
(6, 'helly hansen'),
(7, 'under armour');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_image` varchar(100) NOT NULL DEFAULT 'cover_default.jpg',
  `product_name` varchar(125) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_description` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_image`, `product_name`, `product_price`, `product_description`) VALUES
(1, 'adidas Women\'s Cloudfoam QT Racer Shoes.jpg', 'adidas Women\'s Cloudfoam QT Racer Shoes', '$94.99', 'Sleek lines, fresh style. These girls\' adidas shoes remake a racing look in geometric mesh with branding on the tongue and heel. Cushioned Cloudfoam promises a soft, smooth ride.'),
(2, 'adidas Women\'s Parley We All Care.jpg', 'adidas Women\'s Parley We All Care 7/8 Tights', '$47.97', 'Push through extra reps in these seven-eighth-length tights. They’re made of a stretchy fabric that hugs your body and wicks moisture to keep you dry. Inner waist pockets can stow keys and cards while you work. This product is created with yarn made in collaboration with Parley for the Oceans. Some of the yarn features Parley Ocean Plastic™ which is made from recycled waste, intercepted from beaches and coastal communities before it reaches the ocean.'),
(3, 'adidas Women\'s Saturday Plus Hat - Glow Pink.jpg', 'adidas Women\'s Saturday Plus Hat - Glow Pink', '$25.99', 'Classic and sporty, this cap is embroidered with a small adidas Badge of Sport on the front. It’s built for comfort with smooth polyester, and comes with a moisture-wicking sweatband inside to keep you dry while training. A metal slider in the back allows you to adjust the fit.'),
(4, 'adidas Originals Men\'s Trefoil Sweatshirt.jpg', 'adidas Originals Men\'s Trefoil Sweatshirt', '$69.99', 'This sweatshirt celebrates the legacy of adidas sport style with a bold Trefoil logo. This comfy pullover is made of premium cotton French Terry with a extra-soft feel.'),
(5, 'adidas Originals Men\'s Superstar Track Pants.jpg', 'adidas Originals Men\'s Superstar Track Pants', '$74.99', 'Inspired by the adidas Superstar shoe, the SST tracksuit was designed in 1979 for tennis training. It was made with the signature sheen of tricot fabric and quickly became an iconic adidas street style. These men’s track pants stay true to the original. A slim fit and tapered leg give these pants a modern look. Finished with a small, contrast embroidered Trefoil logo on the hip and classic 3-Stripes down the legs.'),
(6, 'Champion Men\'s Classic Jersey Screen Print T Shirt.jpg', 'Champion Men\'s Classic Jersey Screen Print T Shirt', '$29.99', 'Champion cotton short sleeve T Shirt is a great everyday on trend comfort tee. Champion logo script is screened on the front of the tee. On the left sleeve is the Iconic \"C\" patch for Champion. Online Exclusive *Available online only.'),
(7, 'Champion Men\'s Powerblend All Over Print Fleece Pullover Hoodie.jpg', 'Champion Men\'s Powerblend All Over Print Fleece Pullover Hoodie', '$79.99', 'Men’s Champion powerblend graphic fleece all over print hoodie offers warmth and comfort for all day wear.'),
(8, 'Champion Men\'s Packable Jacket.jpg', 'Champion Men\'s Packable Jacket', '$54.99', 'Men’s Champion packable jacket offers a barrier from wind and rain and can easily be packed up into it’s own pouch for storage.'),
(9, 'Champion Men\'s The Bankshot Stretchfit Hat.jpg', 'Champion Men\'s The Bankshot Stretchfit Hat', '$25.97', 'A classic flat brim hat with style and comfort.'),
(10, 'Champion Women\'s Stadium Puffer Vest - Chalk White.jpg', 'Champion Women\'s Stadium Puffer Vest - Chalk White', '$99.99', 'Women’s Champion Stadium Puffer Vest with built in sweatshirt hood under a water repellent body is lightweight and comfortable.'),
(11, 'Nike Women\'s Air Max Verona Shoes.jpg', 'Nike Women\'s Air Max Verona Shoes', '$127.50', 'Designed with every woman in mind, the mixed material upper features a plush collar, flashy colors and unique stitching patterns. Nike Air cushioning combines with the lifted foam heel for a modern touch, adding comfort and style to your journey.'),
(12, 'Nike Men\'s Legend Swoosh T Shirt.jpg', 'Nike Men\'s Legend Swoosh T Shirt', '$22.50', 'The Nike Dri-FIT T-Shirt combines sweat-wicking fabric with a comfortable fit and feel that helps keep you focused during your workout.'),
(13, 'Nike Men\'s Techknit Ultra Long Sleeve Shirt.jpg', 'Nike Men\'s Techknit Ultra Long Sleeve Shirt', '$71.25', 'From angled seams to engineered fabric, the Nike TechKnit Ultra is strategically designed from top to bottom. Zoned ventilation helps keep you cool where you heat up most, while reflective elements give a boost of confidence.'),
(14, 'Nike Men\'s Mercurial Vapor 13 Elite Neymar Jr. Firm Ground Cleats - Silver.jpg', 'Nike Men\'s Mercurial Vapor 13 Elite Neymar Jr. Firm Ground Cleats - Silver', '$269.99', 'Building on the 360 innovation of the 12, the Nike Men’s Mercurial Vapor 13 Elite Neymar Jr. Firm Ground Cleats add a Nike Aerotrak zone to the forefoot and a slightly stiffer chassis to help supercharge traction. Inside, an insole with NikeGrip technology provides maximum interior traction underfoot and lightweight cushioning.'),
(15, 'Nike Dry Men\'s 4.0 Shorts.jpg', 'Nike Dry Men\'s 4.0 Shorts', '$31.50', 'Men’s Nike Dry Training Shorts are built for any workout with sweat-wicking technology that keeps you comfortable. Its 9\" inseam and side-seam motion vents allow for unrestricted movement, so you can be at your best while training.\r\n\r\n'),
(16, 'The North Face Men\'s Nuptse Down Jacket.jpg', 'The North Face Men\'s Nuptse Down Jacket', '$349.99', 'Built for mountain- and city-life, this retro Nuptse jacket that has a boxy silhouette, original shiny ripstop fabric, iconic oversize baffles and stowable hood will keep you warm and dry when it gets cold and wet.'),
(17, 'The North Face Women\'s Tamburello Insulated Jacket.jpg', 'The North Face Women\'s Tamburello Insulated Jacket', '139.99', '100% recycled-fabric jacket delivers insulated, water-repellent coverage in fall’s coldest conditions.'),
(18, 'The North Face Boys\' Graphic T Shirt.jpg', 'The North Face Boys\' Graphic T Shirt', '$24.99', 'Soft, graphic tee for adventuring comfortably and confidently.'),
(19, 'The North Face Girls\' Hedgehog Hiker Mid 2 Hiking Shoes.jpg', 'The North Face Girls\' Hedgehog Hiker Mid 2 Hiking Shoes', '$99.99 ', 'Our most popular waterproof youth hiking boot-known for its durability and secure fit-is now lighter, more flexible and grippier for next-level explorations.'),
(20, 'The North Face Men\'s Flow Chute Winter Boots.jpg', 'The North Face Men\'s Flow Chute Winter Boots', '$169.99', 'The North Face Men’s Flow Chute Winter Boots are lightweight, rugged and ready for winter adventures. The Flow Chute winter boots are built to keep feet warm and protected on fast and light outings in winter conditions.'),
(21, 'Disney x Vans Era Shoes - THE NIGHTMARE BEFORE CHRISTMAS.jpg', 'Disney x Vans Era Shoes - THE NIGHTMARE BEFORE CHRISTMAS/Halloweentown', '$55.97', 'Step into imagination with the characters and the creative spirit of The Nightmare Before Christmas in this new Off The Wall collection. Celebrating Tim Burton’s iconic film, the Nightmare Before Christmas Era combines the Vans classic low top skate shoe with sturdy canvas uppers featuring an allover Halloweentown print, metal eyelets, padded collars for support and flexibility, and signature rubber waffle outsoles.'),
(22, 'Vans Women\'s Slide One Checkerboard Sandals.jpg', 'Vans Women\'s Slide One Checkerboard Sandals - Black/White', '$39.99', 'Offering ultimate comfort and all-day ease, the newly designed Slide One sandal features an outsole made of ultra-durable, lightweight PU and a classic synthetic leather foot strap showcasing Vans heritage prints and details.'),
(23, 'Vans Men\'s ComfyCush Era Shoes.jpg', 'Vans Men\'s ComfyCush Era Shoes - Black/True White', '$80', 'Vans has reinvigorated the classic Era silhouette with comfort technology ComfyCush, giving the Classic ComfyCush Era a first-class fit that feels like walking on a cloud. A co-molded construction of foam and rubber is the perfect combination of both comfort and grip, rubber outsoles offer durability and traction, and new moisture-wicking lining materials are featured throughout the interior of the shoe. While newly constructed 6 oz canvas uppers focus on tongue stabilization, simplified one-piece interiors and added arch support provide an experience where comfort is vital.'),
(24, 'Vans Men\'s Classic Slip-On Checkerboard Shoes.jpg', 'Vans Men\'s Classic Slip-On Checkerboard Shoes - Black/White', '$65', 'The Classic Slip-Ons need no one to sing their praises; they have become such a part of skate culture and contemporary style, effortlessly proving their iconoclastic relevance from the skate spot to the big screen and every walk of life around the globe. Their popularity comes from unmatched quality, and they have hence become a big time influence on Van’s Off The Wall efforts to innovate, every step of the way.'),
(25, 'Vans Toddler Girls\' SK8 HI Shoes.jpg', 'Vans Toddler Girls\' SK8 HI Shoes', '$64.99', 'Vans shines a light on Autism Awareness with a collection of sensory-friendly footwear and apparel. To be more inclusive of common sensory sensitivities, we worked with the International Board of Credentialing and Continuing Education Standards to create designs that focus on the senses of sight and touch and feature a calming color palette, ensuring they meet a defined set of standards and are appropriate for individuals with autism and other sensory sensitivities. Made with ComfyCush technology, the Toddler Autism Awareness ComfyCush New Skool V features a rubber toe cap and an additional vamp overlay for durability, a single-strap hook-and-loop closure for equal tightness and a consistent fit, and a comfort collar with additional foam padding. It also includes canvas and suede uppers, heel pulls for an easy on-and-off fit, and a ComfyCush bottom unit. Vans will donate a minimum of $100,000 of its proceeds from this collection to A.skate, an organization that allows children with autism to be part of a social world through skateboarding, while also holding free clinics, promoting awareness, and educating families about the therapeutic benefits of the sport.'),
(26, 'Helly Hansen Men\'s Active Softshell Jacket.jpg', 'Helly Hansen Men\'s Active Softshell Jacket', '$179.99', 'A soft, breathable and stretchy softshell jacket with water repellency for crisp fall days in the city.'),
(27, 'Helly Hansen Men\'s Lifaloft Hooded Jacket.jpg', 'Helly Hansen Men\'s Lifaloft Hooded Jacket', '$269.99', 'Stay warm without the bulk and weight with the new Lifaloft™ insulated hooded jacket. Layer up under a shell or used as a stand alone jacket packed in a lightweight windproof, water resistant and PFC free fabric.'),
(28, 'Helly Hansen Boys\' Skyhigh Insulated Jacket.jpg', 'Helly Hansen Boys\' Skyhigh Insulated Jacket', '$249.99', 'Your kids will never want to get off the hill once they’re warm inside the JR Skyhigh Jacket. With thoughtful features including Life Pocket™ and RECCO® Advanced Rescue System, you can rest assured knowing that they are comfortable and safe.'),
(29, 'Helly Hansen Men\'s H1 Pro Lifa Seamless Pants - Sea Blue.jpg', 'Helly Hansen Men\'s H1 Pro Lifa Seamless Pants - Sea Blue', '$129.99', 'The ultimate heat regulating performance base layer constructed with smart thermal mapping technology and featuring the best of Lifa® technologies in one pant.'),
(30, 'Helly Hansen Knitted Beanie - Heritage Teal.jpg', 'Helly Hansen Knitted Beanie - Heritage Teal', '$35', 'A classic HH beanie, perfect for those chilly winter days.'),
(31, 'Under Amour Men\'s Charge Cotton Sportstyle Left Chest T Shirt.jpg', 'Under Amour Men\'s Charge Cotton Sportstyle Left Chest T Shirt', '$22.49', 'Sporty style and daylong comfort unite in the design of the Under Armour Men’s Charge Cotton Sportstyle Left Chest T Shirt crafted out of a super-soft cotton blend.'),
(32, 'Under Amour Girls\' Tech Big Logo Long Sleeve Shirt.jpg', 'Under Amour Girls\' Tech Big Logo Long Sleeve Shirt', '$22.49', 'On chilly days, the Under Armour Girls’ Tech Big Logo Long Sleeve Shirt ensures comfort with moisture-wicking, anti-odour technology.'),
(33, 'Under Armour Boys\' Armour Twist Adjustable Cap.jpg', 'Under Armour Boys\' Armour Twist Adjustable Cap', '$24.99', 'UA Classic Fit: pre-curved visor & structured front panels that maintains shape with a low profile fit'),
(34, 'Under Armour Men\'s Charged Escape 3 Wide 4E Running Shoes.jpg', 'Under Armour Men\'s Charged Escape 3 Wide 4E Running Shoes', '$76.99', 'The Under Armour Men’s Charged Escape 3 Running Shoe is neutral for runners who need a balance of flexibility & cushioning. Its 4E sizing built to better fit athletes with extra wide feet.'),
(35, 'Under Armour Men\'s Rival Fleece Shorts.jpg', 'Under Armour Men\'s Rival Fleece Shorts', '$22.50', 'Chill out in comfort with the ultra-comfortable UA Rival Fleece Shorts. A new take on \"sweat shorts\" these logo shorts are made with soft brushed fleece and have a media pocket for your phone.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_brand`
--

DROP TABLE IF EXISTS `tbl_products_brand`;
CREATE TABLE IF NOT EXISTS `tbl_products_brand` (
  `products_brand_id` tinyint(3) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `brand_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`products_brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_brand`
--

INSERT INTO `tbl_products_brand` (`products_brand_id`, `product_id`, `brand_id`) VALUES
(8, 1, 1),
(9, 2, 1),
(10, 3, 1),
(11, 4, 1),
(12, 5, 1),
(23, 6, 2),
(24, 7, 2),
(25, 8, 2),
(26, 9, 2),
(27, 10, 2),
(28, 11, 3),
(29, 12, 3),
(30, 13, 3),
(31, 14, 3),
(32, 15, 3),
(33, 16, 4),
(34, 17, 4),
(35, 18, 4),
(36, 19, 4),
(37, 20, 4),
(38, 21, 5),
(39, 22, 5),
(40, 23, 5),
(41, 24, 5),
(42, 25, 5),
(43, 26, 6),
(44, 27, 6),
(45, 28, 6),
(46, 29, 6),
(47, 30, 6),
(48, 31, 7),
(49, 32, 7),
(50, 33, 7),
(51, 34, 7),
(52, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_ip` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'prabh', 'prabh', '123', 'p_kaur73377@gmail.com', '2020-04-04 19:38:42', '::1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
