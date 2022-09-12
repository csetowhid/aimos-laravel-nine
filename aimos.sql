-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2022 at 04:05 PM
-- Server version: 8.0.30-0ubuntu0.22.04.1
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aimos`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `madmin_cache`
--

CREATE TABLE `madmin_cache` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` datetime DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `madmin_cache_tag`
--

CREATE TABLE `madmin_cache_tag` (
  `tid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `madmin_log`
--

CREATE TABLE `madmin_log` (
  `id` bigint NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timestamp` datetime NOT NULL,
  `priority` smallint NOT NULL DEFAULT '3',
  `facility` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `madmin_log`
--

INSERT INTO `madmin_log` (`id`, `siteid`, `timestamp`, `priority`, `facility`, `request`, `message`) VALUES
(1, '1.', '2022-09-12 16:00:16', 5, 'client/html', 'b7d0ce1053b53a85c99e340c1ff7bb91', '/shop\nSQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_index_price\' doesn\'t exist: \n				SELECT \"product.status\", max(\"val\") AS \"value\"\n				FROM (\n					SELECT mpro.\"status\" AS \"product.status\", mindpr.\"value\" AS \"val\" \n					FROM \"mshop_product\" mpro\n					LEFT JOIN \"mshop_index_price\" AS mindpr USE INDEX (\"unq_msindpr_pid_sid_cid\", \"idx_msindpr_sid_cid_val\") ON mindpr.\"prodid\" = mpro.\"id\"\n					WHERE ( ( mpro.\"siteid\" IN (\'\',\'1.\') ) AND ( ( mindpr.\"value\" IS NOT NULL ) AND ( ( mpro.\"status\" IS NOT NULL ) AND ( ( mindpr.\"siteid\" IN (\'\',\'1.\') ) AND mindpr.\"currencyid\" = \'EUR\' AND mindpr.\"value\" IS NOT NULL AND ( ( ( mpro.\"status\" = 1 ) AND 1 = 1 ) AND ( mpro.\"type\" = \'event\' OR mpro.\"start\" IS NULL OR mpro.\"start\" <= \'2022-09-12 16:00:00\' ) AND ( mpro.\"end\" IS NULL OR mpro.\"end\" >= \'2022-09-12 16:00:00\' ) ) ) ) ) )\n					GROUP BY mpro.\"status\", mindpr.\"value\", mpro.\"id\"\n					ORDER BY mpro.\"id\" ASC\n					LIMIT 10000 OFFSET 0\n				) AS list\n				GROUP BY \"product.status\"\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(871): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(311): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/Standard.php(195): Aimeos\\MShop\\Common\\Manager\\Base->aggregateBase()\n#4 [internal function]: Aimeos\\MShop\\Index\\Manager\\Standard->aggregate()\n#5 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Base.php(51): call_user_func_array()\n#6 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Base.php(51): call_user_func_array()\n#8 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Price/Standard.php(45): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call()\n#9 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Base.php(89): Aimeos\\Client\\Html\\Catalog\\Filter\\Price\\Standard->data()\n#10 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Standard.php(529): Aimeos\\Client\\Html\\Base->data()\n#11 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(67): Aimeos\\Client\\Html\\Catalog\\Filter\\Standard->data()\n#12 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Context.php(48): Aimeos\\Client\\Html\\Common\\Decorator\\Base->data()\n#13 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Standard.php(283): Aimeos\\Client\\Html\\Common\\Decorator\\Context->data()\n#14 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Exceptions.php(73): Aimeos\\Client\\Html\\Catalog\\Filter\\Standard->header()\n#15 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(92): Aimeos\\Client\\Html\\Common\\Decorator\\Exceptions->header()\n#16 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(103): Aimeos\\Client\\Html\\Common\\Decorator\\Base->header()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\CatalogController->listAction()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#53 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#55 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#56 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#57 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#58 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#59 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#60 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#61 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#62 {main}'),
(2, '1.', '2022-09-12 16:00:16', 4, 'client/html', 'b7d0ce1053b53a85c99e340c1ff7bb91', '/shop\nSQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_index_price\' doesn\'t exist: \n				SELECT \"product.status\", max(\"val\") AS \"value\"\n				FROM (\n					SELECT mpro.\"status\" AS \"product.status\", mindpr.\"value\" AS \"val\" \n					FROM \"mshop_product\" mpro\n					LEFT JOIN \"mshop_index_price\" AS mindpr USE INDEX (\"unq_msindpr_pid_sid_cid\", \"idx_msindpr_sid_cid_val\") ON mindpr.\"prodid\" = mpro.\"id\"\n					WHERE ( ( mpro.\"siteid\" IN (\'\',\'1.\') ) AND ( ( mindpr.\"value\" IS NOT NULL ) AND ( ( mpro.\"status\" IS NOT NULL ) AND ( ( mindpr.\"siteid\" IN (\'\',\'1.\') ) AND mindpr.\"currencyid\" = \'EUR\' AND mindpr.\"value\" IS NOT NULL AND ( ( ( mpro.\"status\" = 1 ) AND 1 = 1 ) AND ( mpro.\"type\" = \'event\' OR mpro.\"start\" IS NULL OR mpro.\"start\" <= \'2022-09-12 16:00:00\' ) AND ( mpro.\"end\" IS NULL OR mpro.\"end\" >= \'2022-09-12 16:00:00\' ) ) ) ) ) )\n					GROUP BY mpro.\"status\", mindpr.\"value\", mpro.\"id\"\n					ORDER BY mpro.\"id\" ASC\n					LIMIT 10000 OFFSET 0\n				) AS list\n				GROUP BY \"product.status\"\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(871): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(311): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/Standard.php(195): Aimeos\\MShop\\Common\\Manager\\Base->aggregateBase()\n#4 [internal function]: Aimeos\\MShop\\Index\\Manager\\Standard->aggregate()\n#5 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Base.php(51): call_user_func_array()\n#6 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Base.php(51): call_user_func_array()\n#8 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Price/Standard.php(45): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call()\n#9 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Base.php(89): Aimeos\\Client\\Html\\Catalog\\Filter\\Price\\Standard->data()\n#10 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Standard.php(529): Aimeos\\Client\\Html\\Base->data()\n#11 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(67): Aimeos\\Client\\Html\\Catalog\\Filter\\Standard->data()\n#12 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Context.php(48): Aimeos\\Client\\Html\\Common\\Decorator\\Base->data()\n#13 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Standard.php(193): Aimeos\\Client\\Html\\Common\\Decorator\\Context->data()\n#14 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Exceptions.php(36): Aimeos\\Client\\Html\\Catalog\\Filter\\Standard->body()\n#15 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(104): Aimeos\\Client\\Html\\Common\\Decorator\\Exceptions->body()\n#16 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(104): Aimeos\\Client\\Html\\Common\\Decorator\\Base->body()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\CatalogController->listAction()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#53 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#55 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#56 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#57 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#58 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#59 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#60 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#61 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#62 {main}'),
(3, '1.', '2022-09-12 16:00:16', 4, 'client/html', 'b7d0ce1053b53a85c99e340c1ff7bb91', '/shop\nSQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_index_price\' doesn\'t exist: \n				SELECT \"product.status\", max(\"val\") AS \"value\"\n				FROM (\n					SELECT mpro.\"status\" AS \"product.status\", mindpr.\"value\" AS \"val\" \n					FROM \"mshop_product\" mpro\n					LEFT JOIN \"mshop_index_price\" AS mindpr USE INDEX (\"unq_msindpr_pid_sid_cid\", \"idx_msindpr_sid_cid_val\") ON mindpr.\"prodid\" = mpro.\"id\"\n					WHERE ( ( mpro.\"siteid\" IN (\'\',\'1.\') ) AND ( ( mindpr.\"value\" IS NOT NULL ) AND ( ( mpro.\"status\" IS NOT NULL ) AND ( ( mindpr.\"siteid\" IN (\'\',\'1.\') ) AND mindpr.\"currencyid\" = \'EUR\' AND mindpr.\"value\" IS NOT NULL AND ( ( ( mpro.\"status\" = 1 ) AND 1 = 1 ) AND ( mpro.\"type\" = \'event\' OR mpro.\"start\" IS NULL OR mpro.\"start\" <= \'2022-09-12 16:00:00\' ) AND ( mpro.\"end\" IS NULL OR mpro.\"end\" >= \'2022-09-12 16:00:00\' ) ) ) ) ) )\n					GROUP BY mpro.\"status\", mindpr.\"value\", mpro.\"id\"\n					ORDER BY mpro.\"id\" ASC\n					LIMIT 10000 OFFSET 0\n				) AS list\n				GROUP BY \"product.status\"\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(871): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(311): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/Standard.php(195): Aimeos\\MShop\\Common\\Manager\\Base->aggregateBase()\n#4 [internal function]: Aimeos\\MShop\\Index\\Manager\\Standard->aggregate()\n#5 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Base.php(51): call_user_func_array()\n#6 [internal function]: Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Base.php(51): call_user_func_array()\n#8 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Price/Standard.php(45): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->__call()\n#9 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Base.php(89): Aimeos\\Client\\Html\\Catalog\\Filter\\Price\\Standard->data()\n#10 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Standard.php(529): Aimeos\\Client\\Html\\Base->data()\n#11 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(67): Aimeos\\Client\\Html\\Catalog\\Filter\\Standard->data()\n#12 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Context.php(48): Aimeos\\Client\\Html\\Common\\Decorator\\Base->data()\n#13 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Filter/Standard.php(193): Aimeos\\Client\\Html\\Common\\Decorator\\Context->data()\n#14 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Exceptions.php(36): Aimeos\\Client\\Html\\Catalog\\Filter\\Standard->body()\n#15 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(104): Aimeos\\Client\\Html\\Common\\Decorator\\Exceptions->body()\n#16 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(104): Aimeos\\Client\\Html\\Common\\Decorator\\Base->body()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\CatalogController->listAction()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#53 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#55 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#56 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#57 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#58 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#59 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#60 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#61 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#62 {main}'),
(4, '1.', '2022-09-12 16:00:16', 5, 'client/html', 'b7d0ce1053b53a85c99e340c1ff7bb91', '/shop\nSQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_index_catalog\' doesn\'t exist: \n				SELECT COUNT(*) AS \"count\"\n				FROM (\n					SELECT mpro.\"id\"\n					FROM \"mshop_product\" mpro\n					LEFT JOIN \"mshop_index_catalog\" AS mindca USE INDEX (\"idx_msindca_s_ca_lt_po\", \"unq_msindca_p_s_cid_lt_po\") ON mindca.\"prodid\" = mpro.\"id\"\n					WHERE ( ( mpro.\"siteid\" IN (\'\',\'1.\') ) AND ( mindca.\"catid\" IS NOT NULL AND ( ( ( mpro.\"status\" = 1 ) AND 1 = 1 ) AND ( mpro.\"type\" = \'event\' OR mpro.\"start\" IS NULL OR mpro.\"start\" <= \'2022-09-12 16:00:00\' ) AND ( mpro.\"end\" IS NULL OR mpro.\"end\" >= \'2022-09-12 16:00:00\' ) ) ) )\n					GROUP BY mpro.\"id\"\n					ORDER BY mpro.\"id\"\n					LIMIT 10000 OFFSET 0\n				) AS list\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(858): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/DBBase.php(420): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/Standard.php(520): Aimeos\\MShop\\Index\\Manager\\DBBase->searchItemsIndexBase()\n#4 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Depth.php(59): Aimeos\\MShop\\Index\\Manager\\Standard->search()\n#5 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Lazy.php(40): Aimeos\\MShop\\Common\\Manager\\Decorator\\Depth->search()\n#6 /var/www/aimos-nine/vendor/aimeos/ai-controller-frontend/src/Controller/Frontend/Product/Standard.php(514): Aimeos\\MShop\\Common\\Manager\\Decorator\\Lazy->search()\n#7 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Lists/Standard.php(289): Aimeos\\Controller\\Frontend\\Product\\Standard->search()\n#8 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(67): Aimeos\\Client\\Html\\Catalog\\Lists\\Standard->data()\n#9 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Context.php(48): Aimeos\\Client\\Html\\Common\\Decorator\\Base->data()\n#10 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Lists/Standard.php(208): Aimeos\\Client\\Html\\Common\\Decorator\\Context->data()\n#11 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Exceptions.php(73): Aimeos\\Client\\Html\\Catalog\\Lists\\Standard->header()\n#12 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(92): Aimeos\\Client\\Html\\Common\\Decorator\\Exceptions->header()\n#13 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(103): Aimeos\\Client\\Html\\Common\\Decorator\\Base->header()\n#14 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\CatalogController->listAction()\n#15 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#16 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#53 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#54 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#55 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#56 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#57 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#58 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#59 {main}');
INSERT INTO `madmin_log` (`id`, `siteid`, `timestamp`, `priority`, `facility`, `request`, `message`) VALUES
(5, '1.', '2022-09-12 16:00:16', 4, 'client/html', 'b7d0ce1053b53a85c99e340c1ff7bb91', '/shop\nSQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_index_catalog\' doesn\'t exist: \n				SELECT COUNT(*) AS \"count\"\n				FROM (\n					SELECT mpro.\"id\"\n					FROM \"mshop_product\" mpro\n					LEFT JOIN \"mshop_index_catalog\" AS mindca USE INDEX (\"idx_msindca_s_ca_lt_po\", \"unq_msindca_p_s_cid_lt_po\") ON mindca.\"prodid\" = mpro.\"id\"\n					WHERE ( ( mpro.\"siteid\" IN (\'\',\'1.\') ) AND ( mindca.\"catid\" IS NOT NULL AND ( ( ( mpro.\"status\" = 1 ) AND 1 = 1 ) AND ( mpro.\"type\" = \'event\' OR mpro.\"start\" IS NULL OR mpro.\"start\" <= \'2022-09-12 16:00:00\' ) AND ( mpro.\"end\" IS NULL OR mpro.\"end\" >= \'2022-09-12 16:00:00\' ) ) ) )\n					GROUP BY mpro.\"id\"\n					ORDER BY mpro.\"id\"\n					LIMIT 10000 OFFSET 0\n				) AS list\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(858): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/DBBase.php(420): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Index/Manager/Standard.php(520): Aimeos\\MShop\\Index\\Manager\\DBBase->searchItemsIndexBase()\n#4 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Depth.php(59): Aimeos\\MShop\\Index\\Manager\\Standard->search()\n#5 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Lazy.php(40): Aimeos\\MShop\\Common\\Manager\\Decorator\\Depth->search()\n#6 /var/www/aimos-nine/vendor/aimeos/ai-controller-frontend/src/Controller/Frontend/Product/Standard.php(514): Aimeos\\MShop\\Common\\Manager\\Decorator\\Lazy->search()\n#7 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Lists/Standard.php(289): Aimeos\\Controller\\Frontend\\Product\\Standard->search()\n#8 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(67): Aimeos\\Client\\Html\\Catalog\\Lists\\Standard->data()\n#9 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Context.php(48): Aimeos\\Client\\Html\\Common\\Decorator\\Base->data()\n#10 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Catalog/Lists/Standard.php(141): Aimeos\\Client\\Html\\Common\\Decorator\\Context->data()\n#11 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Exceptions.php(36): Aimeos\\Client\\Html\\Catalog\\Lists\\Standard->body()\n#12 /var/www/aimos-nine/vendor/aimeos/ai-client-html/src/Client/Html/Common/Decorator/Base.php(104): Aimeos\\Client\\Html\\Common\\Decorator\\Exceptions->body()\n#13 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(104): Aimeos\\Client\\Html\\Common\\Decorator\\Base->body()\n#14 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\CatalogController->listAction()\n#15 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#16 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#53 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#54 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#55 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#56 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#57 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#58 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#59 {main}'),
(6, '1.', '2022-09-12 16:00:37', 3, 'admin/jqadm', '0714c01014a2a123c7765f582a6243a3', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.madmin_job\' doesn\'t exist: \n				SELECT COUNT(*) AS \"count\"\n				FROM(\n					SELECT majob.\"id\"\n					FROM \"madmin_job\" majob\n					\n					WHERE ( ( majob.\"siteid\" IN (\'\',\'1.\') ) AND 1 = 1 )\n					ORDER BY \"id\"\n					LIMIT 10000 OFFSET 0\n				) AS list\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(858): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MAdmin/Job/Manager/Standard.php(619): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Dashboard/Job/Standard.php(111): Aimeos\\MAdmin\\Job\\Manager\\Standard->search()\n#4 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Base.php(281): Aimeos\\Admin\\JQAdm\\Dashboard\\Job\\Standard->search()\n#5 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Dashboard/Standard.php(83): Aimeos\\Admin\\JQAdm\\Base->search()\n#6 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Common/Decorator/Base.php(162): Aimeos\\Admin\\JQAdm\\Dashboard\\Standard->search()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/JqadmController.php(235): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->search()\n#8 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->searchAction()\n#9 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#10 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#11 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#12 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#13 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#14 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#16 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Auth/Middleware/Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#53 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#54 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#55 {main}'),
(7, '1.', '2022-09-12 16:01:18', 3, 'admin/jqadm', '08b09ed5774c0432b8dd1581a10590e5', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_order\' doesn\'t exist: \n				SELECT COUNT( DISTINCT mord.\"id\" ) AS \"count\"\n				FROM \"mshop_order\" mord\n				LEFT JOIN \"mshop_order_base\" AS mordba ON ( mord.\"baseid\" = mordba.\"id\" )\nLEFT JOIN \"mshop_order_base_product\" AS mordbapr ON ( mordba.\"id\" = mordbapr.\"baseid\" )\n				WHERE ( ( mord.\"siteid\" IN (\'\',\'1.\') ) AND ( mordba.\"siteid\" IN (\'\',\'1.\') ) AND ( mordbapr.\"siteid\" IN (\'\',\'1.\') ) AND ( ( mordbapr.\"siteid\" IN (\'\',\'1.\') ) AND 1 = 1 ) )\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(858): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Order/Manager/Standard.php(906): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Depth.php(59): Aimeos\\MShop\\Order\\Manager\\Standard->search()\n#4 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Lazy.php(40): Aimeos\\MShop\\Common\\Manager\\Decorator\\Depth->search()\n#5 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Order/Standard.php(283): Aimeos\\MShop\\Common\\Manager\\Decorator\\Lazy->search()\n#6 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Common/Decorator/Base.php(162): Aimeos\\Admin\\JQAdm\\Order\\Standard->search()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/JqadmController.php(235): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->search()\n#8 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->searchAction()\n#9 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#10 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#11 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#12 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#13 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#14 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#16 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Auth/Middleware/Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#53 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#54 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#55 {main}'),
(8, '1.', '2022-09-12 16:01:23', 3, 'admin/jqadm', 'cff3ae5d0ea778c1bad70a4507c4b06e', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_order\' doesn\'t exist: \n				SELECT COUNT( DISTINCT mord.\"id\" ) AS \"count\"\n				FROM \"mshop_order\" mord\n				LEFT JOIN \"mshop_order_base\" AS mordba ON ( mord.\"baseid\" = mordba.\"id\" )\nLEFT JOIN \"mshop_order_base_product\" AS mordbapr ON ( mordba.\"id\" = mordbapr.\"baseid\" )\n				WHERE ( ( mord.\"siteid\" IN (\'\',\'1.\') ) AND ( mordba.\"siteid\" IN (\'\',\'1.\') ) AND ( mordbapr.\"siteid\" IN (\'\',\'1.\') ) AND ( ( mordbapr.\"siteid\" IN (\'\',\'1.\') ) AND 1 = 1 ) )\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(858): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Order/Manager/Standard.php(906): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Depth.php(59): Aimeos\\MShop\\Order\\Manager\\Standard->search()\n#4 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Lazy.php(40): Aimeos\\MShop\\Common\\Manager\\Decorator\\Depth->search()\n#5 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Order/Standard.php(283): Aimeos\\MShop\\Common\\Manager\\Decorator\\Lazy->search()\n#6 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Common/Decorator/Base.php(162): Aimeos\\Admin\\JQAdm\\Order\\Standard->search()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/JqadmController.php(235): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->search()\n#8 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->searchAction()\n#9 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#10 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#11 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#12 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#13 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#14 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#16 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Auth/Middleware/Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#53 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#54 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#55 {main}'),
(9, '1.', '2022-09-12 16:01:28', 3, 'admin/jqadm', 'f3d8f1cca7af530b53c8f4a2c2f80674', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'aimos.mshop_subscription\' doesn\'t exist: \n				SELECT COUNT(*) AS \"count\"\n				FROM (\n					SELECT mord.\"id\"\n					FROM \"mshop_subscription\" mord\n					LEFT JOIN \"mshop_order_base\" AS mordba ON ( mord.\"baseid\" = mordba.\"id\" )\nLEFT JOIN \"mshop_order_base_product\" AS mordbapr ON ( mordba.\"id\" = mordbapr.\"baseid\" )\n					WHERE ( ( mordba.\"siteid\" IN (\'\',\'1.\') ) AND ( mordbapr.\"siteid\" IN (\'\',\'1.\') ) AND ( mord.\"siteid\" IN (\'\',\'1.\') ) AND ( ( mordbapr.\"siteid\" IN (\'\',\'1.\') ) AND 1 = 1 ) )\n					GROUP BY mord.\"id\"\n					ORDER BY mord.\"id\"\n					LIMIT 10000 OFFSET 0\n				) AS list\n			\n#0 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(487): Aimeos\\Base\\DB\\Statement\\DBAL\\Simple->execute()\n#1 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Base.php(858): Aimeos\\MShop\\Common\\Manager\\Base->getSearchResults()\n#2 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Subscription/Manager/Standard.php(815): Aimeos\\MShop\\Common\\Manager\\Base->searchItemsBase()\n#3 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Depth.php(59): Aimeos\\MShop\\Subscription\\Manager\\Standard->search()\n#4 /var/www/aimos-nine/vendor/aimeos/aimeos-core/src/MShop/Common/Manager/Decorator/Lazy.php(40): Aimeos\\MShop\\Common\\Manager\\Decorator\\Depth->search()\n#5 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Subscription/Standard.php(332): Aimeos\\MShop\\Common\\Manager\\Decorator\\Lazy->search()\n#6 /var/www/aimos-nine/vendor/aimeos/ai-admin-jqadm/src/Admin/JQAdm/Common/Decorator/Base.php(162): Aimeos\\Admin\\JQAdm\\Subscription\\Standard->search()\n#7 /var/www/aimos-nine/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/JqadmController.php(235): Aimeos\\Admin\\JQAdm\\Common\\Decorator\\Base->search()\n#8 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Aimeos\\Shop\\Controller\\JqadmController->searchAction()\n#9 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#10 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(261): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#11 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\Route->runController()\n#12 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(725): Illuminate\\Routing\\Route->run()\n#13 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#14 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#16 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Auth/Middleware/Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle()\n#18 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle()\n#20 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#22 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest()\n#24 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle()\n#25 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#27 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#29 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(726): Illuminate\\Pipeline\\Pipeline->then()\n#31 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Routing\\Router->runRouteWithinStack()\n#32 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(667): Illuminate\\Routing\\Router->runRoute()\n#33 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Routing/Router.php(656): Illuminate\\Routing\\Router->dispatchToRoute()\n#34 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(167): Illuminate\\Routing\\Router->dispatch()\n#35 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#36 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#38 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle()\n#39 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#40 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle()\n#41 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle()\n#42 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle()\n#44 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle()\n#46 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/HandleCors.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\HandleCors->handle()\n#48 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Http/Middleware/TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle()\n#50 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(142): Illuminate\\Pipeline\\Pipeline->then()\n#52 /var/www/aimos-nine/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(111): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#53 /var/www/aimos-nine/public/index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle()\n#54 /home/towhid/.config/composer/vendor/genesisweb/valet-linux-plus/server.php(292): require(\'...\')\n#55 {main}');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute`
--

CREATE TABLE `mshop_attribute` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_list`
--

CREATE TABLE `mshop_attribute_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_list_type`
--

CREATE TABLE `mshop_attribute_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_attribute_list_type`
--

INSERT INTO `mshop_attribute_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'media', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'price', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'text', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(4, '1.', 'upload', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_property`
--

CREATE TABLE `mshop_attribute_property` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_property_type`
--

CREATE TABLE `mshop_attribute_property_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_type`
--

CREATE TABLE `mshop_attribute_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_attribute_type`
--

INSERT INTO `mshop_attribute_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'product', 'color', 'Color', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'product', 'size', 'Size', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'product', 'width', 'Width', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(4, '1.', 'product', 'length', 'Length', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(5, '1.', 'product', 'print', 'Print', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(6, '1.', 'product', 'sticker', 'Sticker', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(7, '1.', 'product', 'download', 'Download', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(8, '1.', 'product', 'price', 'Price', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(9, '1.', 'product', 'text', 'Text', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(10, '1.', 'product', 'date', 'Date', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(11, '1.', 'product', 'interval', 'Interval', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(12, '1.', 'product', 'customer/group', 'Customer group ID', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_catalog`
--

CREATE TABLE `mshop_catalog` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int DEFAULT NULL,
  `level` smallint NOT NULL DEFAULT '0',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nleft` int NOT NULL,
  `nright` int NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_catalog`
--

INSERT INTO `mshop_catalog` (`id`, `siteid`, `parentid`, `level`, `code`, `label`, `url`, `config`, `nleft`, `nright`, `target`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 0, 0, 'home', 'Home', 'Home', '{\"css-class\":\"megamenu\"}', 1, 28, '', 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(2, '1.', 1, 1, 'demo-best', 'Best sellers', 'Best-sellers', '[]', 2, 23, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(3, '1.', 2, 2, 'demo-best-women', 'Women', 'Women', '[]', 3, 10, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(4, '1.', 3, 3, 'demo-best-women-shirt', 'Shirts', 'Shirts', '[]', 4, 5, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(5, '1.', 3, 3, 'demo-best-women-dress', 'Dresses', 'Dresses', '[]', 6, 7, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(6, '1.', 3, 3, 'demo-best-women-top', 'Tops', 'Tops', '[]', 8, 9, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(7, '1.', 2, 2, 'demo-best-men', 'Men', 'Men', '[]', 11, 16, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(8, '1.', 7, 3, 'demo-best-men-tshirt', 'T-Shirts', 'T-Shirts', '[]', 12, 13, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(9, '1.', 7, 3, 'demo-best-men-muscle', 'Muscle shirts', 'Muscle-shirts', '[]', 14, 15, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(10, '1.', 2, 2, 'demo-best-misc', 'Misc', 'Misc', '[]', 17, 22, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(11, '1.', 10, 3, 'demo-best-misc-event', 'Events', 'Events', '[]', 18, 19, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(12, '1.', 10, 3, 'demo-best-misc-voucher', 'Vouchers', 'Vouchers', '[]', 20, 21, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(13, '1.', 1, 1, 'demo-new', 'New arrivals', 'New-arrivals', '[]', 24, 25, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(14, '1.', 1, 1, 'demo-deals', 'Hot deals', 'Hot-deals', '[]', 26, 27, '', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_catalog_list`
--

CREATE TABLE `mshop_catalog_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_catalog_list`
--

INSERT INTO `mshop_catalog_list` (`id`, `siteid`, `parentid`, `key`, `type`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 1, 'text|default|1', 'default', 'text', '1', NULL, NULL, '[]', 0, 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(2, '1.', 1, 'text|default|2', 'default', 'text', '2', NULL, NULL, '[]', 0, 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(3, '1.', 1, 'text|default|3', 'default', 'text', '3', NULL, NULL, '[]', 1, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(4, '1.', 1, 'text|default|4', 'default', 'text', '4', NULL, NULL, '[]', 2, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(5, '1.', 1, 'text|default|5', 'default', 'text', '5', NULL, NULL, '[]', 3, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(6, '1.', 1, 'text|default|6', 'default', 'text', '6', NULL, NULL, '[]', 4, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(7, '1.', 1, 'text|default|7', 'default', 'text', '7', NULL, NULL, '[]', 5, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(8, '1.', 2, 'media|default|1', 'default', 'media', '1', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(9, '1.', 2, 'media|default|2', 'default', 'media', '2', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(10, '1.', 2, 'text|default|8', 'default', 'text', '8', NULL, NULL, '[]', 1, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(11, '1.', 2, 'text|default|9', 'default', 'text', '9', NULL, NULL, '[]', 2, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(12, '1.', 2, 'text|default|10', 'default', 'text', '10', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(13, '1.', 13, 'media|default|3', 'default', 'media', '3', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(14, '1.', 13, 'text|default|11', 'default', 'text', '11', NULL, NULL, '[]', 1, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(15, '1.', 13, 'text|default|12', 'default', 'text', '12', NULL, NULL, '[]', 2, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(16, '1.', 13, 'text|default|13', 'default', 'text', '13', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(17, '1.', 14, 'media|default|4', 'default', 'media', '4', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(18, '1.', 14, 'text|default|14', 'default', 'text', '14', NULL, NULL, '[]', 1, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(19, '1.', 14, 'text|default|15', 'default', 'text', '15', NULL, NULL, '[]', 2, 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(20, '1.', 14, 'text|default|16', 'default', 'text', '16', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:01', '2022-09-12 15:43:01', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_catalog_list_type`
--

CREATE TABLE `mshop_catalog_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_catalog_list_type`
--

INSERT INTO `mshop_catalog_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'media', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'text', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_cms`
--

CREATE TABLE `mshop_cms` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_cms`
--

INSERT INTO `mshop_cms` (`id`, `siteid`, `url`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', '/', 'Demo homepage', 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_cms_list`
--

CREATE TABLE `mshop_cms_list` (
  `id` int NOT NULL,
  `parentid` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL,
  `status` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_cms_list`
--

INSERT INTO `mshop_cms_list` (`id`, `parentid`, `siteid`, `key`, `type`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, '1.', 'text|default|17', 'default', 'text', '17', NULL, NULL, '[]', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_cms_list_type`
--

CREATE TABLE `mshop_cms_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_cms_list_type`
--

INSERT INTO `mshop_cms_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'text', 'default', 'Standard', 0, 1, '2022-09-12 15:43:02', '2022-09-12 15:43:02', 'ai-cms-grapesjs'),
(2, '1.', 'media', 'default', 'Standard', 0, 1, '2022-09-12 15:43:02', '2022-09-12 15:43:02', 'ai-cms-grapesjs');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_coupon`
--

CREATE TABLE `mshop_coupon` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_coupon`
--

INSERT INTO `mshop_coupon` (`id`, `siteid`, `label`, `provider`, `config`, `start`, `end`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'demo-voucher', 'Voucher', '{\"voucher.productcode\":\"demo-rebate\"}', NULL, NULL, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'demo-fixed', 'FixedRebate,Basket', '{\"fixedrebate.productcode\":\"demo-rebate\",\"fixedrebate.rebate\":{\"EUR\":125,\"USD\":150},\"basket.total-value-min\":{\"EUR\":125,\"USD\":150}}', NULL, NULL, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'demo-percent', 'PercentRebate', '{\"percentrebate.productcode\":\"demo-rebate\",\"percentrebate.rebate\":\"10\"}', NULL, NULL, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_coupon_code`
--

CREATE TABLE `mshop_coupon_code` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `count` int DEFAULT '0',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `ref` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_coupon_code`
--

INSERT INTO `mshop_coupon_code` (`id`, `siteid`, `parentid`, `code`, `count`, `start`, `end`, `ref`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 2, 'fixed', 1000, NULL, NULL, '', '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 3, 'percent', 1000, NULL, NULL, '', '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer`
--

CREATE TABLE `mshop_customer` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT '0',
  `latitude` double DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `vdate` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_address`
--

CREATE TABLE `mshop_customer_address` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT '0',
  `latitude` double DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `pos` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_group`
--

CREATE TABLE `mshop_customer_group` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_customer_group`
--

INSERT INTO `mshop_customer_group` (`id`, `siteid`, `code`, `label`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'admin', 'Administrator', '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(2, '1.', 'editor', 'Editor', '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_list`
--

CREATE TABLE `mshop_customer_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_list_type`
--

CREATE TABLE `mshop_customer_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_customer_list_type`
--

INSERT INTO `mshop_customer_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'customer/group', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'product', 'favorite', 'Favorite', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(4, '1.', 'product', 'watch', 'Watch list', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(5, '1.', 'service', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_property`
--

CREATE TABLE `mshop_customer_property` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_property_type`
--

CREATE TABLE `mshop_customer_property_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale`
--

CREATE TABLE `mshop_locale` (
  `id` int NOT NULL,
  `site_id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_locale`
--

INSERT INTO `mshop_locale` (`id`, `site_id`, `siteid`, `langid`, `currencyid`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, '1.', 'en', 'EUR', 0, 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(2, 1, '1.', 'en', 'USD', 1, 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(3, 1, '1.', 'de', 'EUR', 2, 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale_currency`
--

CREATE TABLE `mshop_locale_currency` (
  `id` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_locale_currency`
--

INSERT INTO `mshop_locale_currency` (`id`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
('AED', 'United Arab Emirates dirham', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('AFN', 'Afghan afghani', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ALL', 'Albanian Lek', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('AMD', 'Armenian Dram', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ANG', 'Netherlands Antillean gulden', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('AOA', 'Angolan Kwanza', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ARS', 'Argentine Peso', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('AUD', 'Australian Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('AWG', 'Aruban Guilder', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('AZN', 'Azerbaijani Manat', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BAM', 'Bosnia-Herzegovina Conv. Mark', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BBD', 'Barbados Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BDT', 'Bangladeshi taka', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BGN', 'Bulgarian Lev', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BHD', 'Bahraini Dinar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BIF', 'Burundi Franc', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BMD', 'Bermuda Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BND', 'Brunei Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BOB', 'Boliviano', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BRL', 'Brazilian Real', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BSD', 'Bahamian Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BTN', 'Bhutanese Ngultrum', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BWP', 'Botswana pula', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BYR', 'Belarussian Ruble', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('BZD', 'Belize Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CAD', 'Canadian Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CDF', 'Congolese franc', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CHF', 'Swiss franc', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CLP', 'Chilean Peso', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CNY', 'Chinese Yuan Renminbi', 1, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('COP', 'Colombian Peso', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CRC', 'Costa Rican colón', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CUP', 'Cuban peso', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CVE', 'Cape Verde Escudo', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('CZK', 'Czech koruna', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('DJF', 'Djibouti franc', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('DKK', 'Danish krone', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('DOP', 'Dominican peso', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('DZD', 'Algerian Dinar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('EGP', 'Egyptian pound', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('ERN', 'Eritrean nakfa', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('ETB', 'Ethiopian birr', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('EUR', 'Euro', 1, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('FJD', 'Fijian dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('FKP', 'Falkland Islands pound', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GBP', 'Pound sterling', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GEL', 'Georgian lari', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GHC', 'Ghanaian cedi', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GIP', 'Gibraltar pound', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GMD', 'Gambian dalasi', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GNF', 'Guinea Franc', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GTQ', 'Guatemalan quetzal', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('GYD', 'Guyana Dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('HKD', 'Hong Kong dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('HNL', 'Honduran lempira', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('HRK', 'Croatian kuna', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('HTG', 'Haitian gourde', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('HUF', 'Hungarian forint', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('IDR', 'Indonesian rupiah', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('ILS', 'New Israeli Sheqel', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('INR', 'Indian rupee', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('IQD', 'Iraqi dinar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('IRR', 'Iranian rial', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('ISK', 'Icelandic króna', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('JMD', 'Jamaican dollar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('JOD', 'Jordanian dinar', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('JPY', 'Japanese yen', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('KES', 'Kenyan shilling', 0, '2022-09-12 15:42:57', '2022-09-12 15:42:57', 'setup'),
('KGS', 'Kyrgyzstani som', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KHR', 'Cambodian riel', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KMF', 'Comorian Franc', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KPW', 'North Korean won', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KRW', 'South Corean won', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KWD', 'Kuwaiti dinar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KYD', 'Cayman Islands Dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('KZT', 'Kazakhstani tenge', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LAK', 'Lao kip', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LBP', 'Lebanese pound', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LKR', 'Sri Lankan rupee', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LRD', 'Liberian dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LSL', 'Lesotho loti', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LTL', 'Lithuanian litas', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LVL', 'Latvian lats', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('LYD', 'Libyan dinar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MAD', 'Moroccan dirham', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MDL', 'Moldovan leu', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MGA', 'Malagasy ariary', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MKD', 'Macedonian denar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MMK', 'Myanmar kyat', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MNT', 'Mongolian tugrug', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MOP', 'Macanese pataca', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MRO', 'Mauritanian ouguiya', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MUR', 'Mauritian rupee', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MVR', 'Maldivian rufiyaa', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MWK', 'Malawian kwacha', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MXN', 'Mexican peso', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MYR', 'Malaysian ringgit', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('MZM', 'Mozambican metical', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('NAD', 'Namibian dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('NGN', 'Nigerian naira', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('NIO', 'Nicaraguan córdoba', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('NOK', 'Norvegian krone', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('NPR', 'Nepalese rupee', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('NZD', 'New Zealand dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('OMR', 'Omani rial', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PAB', 'Panamanian balboa', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PEN', 'Peruvian nuevo sol', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PGK', 'Papua New Guinean kina', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PHP', 'Philippine peso', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PKR', 'Pakistani rupee', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PLN', 'Polish złoty', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('PYG', 'Paraguayan guaraní', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('QAR', 'Qatari riyal', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('RON', 'Romanian leu', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('RSD', 'Serbian dinar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('RUB', 'Russian ruble', 1, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('RWF', 'Rwandan franc', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SAR', 'Saudi riyal', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SBD', 'Solomon Islands dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SCR', 'Seychelles rupee', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SDG', 'Sudanese pound', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SEK', 'Swedish krona', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SGD', 'Singapore dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SHP', 'Saint Helena pound', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SLL', 'Sierra Leonean leone', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SOS', 'Somali shilling', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SRD', 'Suriname dollar', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('STD', 'São Tomé and Príncipe dobra', 0, '2022-09-12 15:42:58', '2022-09-12 15:42:58', 'setup'),
('SYP', 'Syrian pound', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('SZL', 'Swazi lilangeni', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('THB', 'Baht', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TJS', 'Tajikistani somoni', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TMT', 'Turkmenistani manat', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TND', 'Tunisian dinar', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TOP', 'Tongan pa\'anga', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TRY', 'Turkish new lira', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TTD', 'Trinidad and Tobago dollar', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TWD', 'New Taiwan dollar', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('TZS', 'Tanzanian shilling', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('UAH', 'Ukrainian hryvnia', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('UGX', 'Ugandan shilling', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('USD', 'US dollar', 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('UYU', 'Uruguayan peso', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('UZS', 'Uzbekistani som', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('VEF', 'Venezuelan bolivar', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('VND', 'Vietnamese dong', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('VUV', 'Vatu', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('WST', 'Samoan tala', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('XAF', 'CFA Franc BEAC', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('XCD', 'East Caribbean dollar', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('XOF', 'CFA Franc BCEAO', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('XPF', 'CFP Franc', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('YER', 'Yemeni rial', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('ZAR', 'South African rand', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('ZMW', 'Zambian kwacha', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup'),
('ZWL', 'Zimbabwean dollar', 0, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale_language`
--

CREATE TABLE `mshop_locale_language` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_locale_language`
--

INSERT INTO `mshop_locale_language` (`id`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
('aa', 'Afar', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('ab', 'Abkhazian', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('af', 'Afrikaans', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('ak', 'Akan', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('am', 'Amharic', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('an', 'Aragonese', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('ar', 'Arabic', 1, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('as', 'Assamese', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('av', 'Avar', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('ay', 'Aymara', 0, '2022-09-12 15:42:53', '2022-09-12 15:42:53', 'setup'),
('az', 'Azerbaijani', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ba', 'Bashkir', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('be', 'Belarusian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bg', 'Bulgarian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bh', 'Bihari', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bi', 'Bislama', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bm', 'Bambara', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bn', 'Bengali', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bo', 'Tibetan', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('br', 'Breton', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('bs', 'Bosnian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ca', 'Catalan', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ce', 'Chechen', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ch', 'Chamorro', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('co', 'Corsican', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('cr', 'Cree', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('cs', 'Czech', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('cu', 'Church Slavonic', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('cv', 'Chuvash', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('cy', 'Welsh', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('da', 'Danish', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('de', 'German', 1, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('dv', 'Dhivehi', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('dz', 'Dzongkha', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ee', 'Ewe', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('el', 'Greek', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('en', 'English', 1, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('eo', 'Esperanto', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('es', 'Spanish', 1, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('et', 'Estonian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('eu', 'Basque', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('fa', 'Persian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ff', 'Fula', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('fi', 'Finnish', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('fj', 'Fijian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('fo', 'Faeroese', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('fr', 'French', 1, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('fy', 'Frisian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ga', 'Irish', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('gd', 'Scottish Gaelic', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('gl', 'Galician', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('gn', 'Guaraní', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('gu', 'Gujarati', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('gv', 'Manx', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ha', 'Hausa', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('he', 'Hebrew', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('hi', 'Hindi', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ho', 'Hiri motu', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('hr', 'Croatian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ht', 'Haïtian Creole', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('hu', 'Hungarian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('hy', 'Armenian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('hz', 'Herero', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ia', 'Interlingua', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('id', 'Indonesian', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ie', 'Interlingue', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ig', 'Igbo', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ii', 'Yi', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('ik', 'Inupiaq', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('io', 'Ido', 0, '2022-09-12 15:42:54', '2022-09-12 15:42:54', 'setup'),
('is', 'Icelandic', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('it', 'Italian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('iu', 'Inuktitut', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ja', 'Japanese', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('jv', 'Javanese', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ka', 'Georgian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kg', 'Kongo', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ki', 'Kikuyu', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kj', 'Kuanyama', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kk', 'Kazakh', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kl', 'Greenlandic', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('km', 'Khmer', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kn', 'Kannada', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ko', 'Korean', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kr', 'Kanuri', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ks', 'Kashmiri', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ku', 'Kurdish', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kv', 'Komi', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('kw', 'Cornish', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ky', 'Kirghiz', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('lb', 'Luxembourgish', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('lg', 'Luganda', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('li', 'Limburgish', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ln', 'Lingala', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('lo', 'Lao', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('lt', 'Lithuanian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('lu', 'Luba-Katanga', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('lv', 'Latvian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mg', 'Malagasy', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mh', 'Marshallese', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mi', 'Māori', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mk', 'Macedonian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ml', 'Malayalam', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mn', 'Mongolian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mo', 'Moldavian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mr', 'Marathi', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ms', 'Malay', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('mt', 'Maltese', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('my', 'Burmese', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('na', 'Nauru', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('nb', 'Norwegian Bokmål', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('nd', 'North Ndebele', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ne', 'Nepali', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ng', 'Ndonga', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('nl', 'Dutch', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('nn', 'Norwegian Nynorsk', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('no', 'Norwegian', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('nr', 'South Ndebele', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('nv', 'Navajo', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ny', 'Chichewa', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('oc', 'Occitan', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('oj', 'Ojibwa', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('om', 'Oromo', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('or', 'Oriya', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('os', 'Ossetic', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('pa', 'Punjabi', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('pi', 'Pali', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('pl', 'Polish', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('ps', 'Pashto', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('pt', 'Portuguese', 1, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('qu', 'Quechua', 0, '2022-09-12 15:42:55', '2022-09-12 15:42:55', 'setup'),
('rm', 'Rhaeto-Romance', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('rn', 'Kirundi', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ro', 'Romanian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ru', 'Russian', 1, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('rw', 'Kinyarwanda', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sa', 'Sanskrit', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sc', 'Sardinian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sd', 'Sindhi', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('se', 'Northern Sami', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sg', 'Sango', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('si', 'Sinhala', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sk', 'Slovak', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sl', 'Slovenian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sm', 'Samoan', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sn', 'Shona', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('so', 'Somali', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sq', 'Albanian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sr', 'Serbian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ss', 'Swati', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('st', 'Sesotho', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('su', 'Sundanese', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sv', 'Swedish', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('sw', 'Swahili', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ta', 'Tamil', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('te', 'Telugu', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tg', 'Tajik', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('th', 'Thai', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ti', 'Tigrinya', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tk', 'Turkmen', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tl', 'Tagalog', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tn', 'Setswana', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('to', 'Tongan', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tr', 'Turkish', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ts', 'Tsonga', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tt', 'Tatar', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('tw', 'Twi', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ty', 'Tahitian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ug', 'Uyghur', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('uk', 'Ukrainian', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ur', 'Urdu', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('uz', 'Uzbek', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('ve', 'Venda', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('vi', 'Vietnamese', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('vo', 'Volapük', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('wa', 'Walloon', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('wo', 'Wolof', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('xh', 'Xhosa', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('yi', 'Yiddish', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('yo', 'Yoruba', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('za', 'Zhuang', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('zh', 'Chinese', 1, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup'),
('zu', 'Zulu', 0, '2022-09-12 15:42:56', '2022-09-12 15:42:56', 'setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale_site`
--

CREATE TABLE `mshop_locale_site` (
  `id` int NOT NULL,
  `parentid` int DEFAULT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `theme` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` smallint NOT NULL DEFAULT '0',
  `nleft` int NOT NULL,
  `nright` int NOT NULL,
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_locale_site`
--

INSERT INTO `mshop_locale_site` (`id`, `parentid`, `siteid`, `code`, `label`, `icon`, `logo`, `config`, `refid`, `theme`, `level`, `nleft`, `nright`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 0, '1.', 'default', 'Default', '', '{}', '{}', '', NULL, 0, 1, 2, 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media`
--

CREATE TABLE `mshop_media` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `fsname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimetype` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_media`
--

INSERT INTO `mshop_media` (`id`, `siteid`, `type`, `fsname`, `langid`, `domain`, `label`, `link`, `preview`, `mimetype`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'stage', 'fs-media', NULL, 'catalog', 'Demo: Best seller stage', 'https://aimeos.org/media/default/main-banner-1-big.webp', '{\"480\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-1-low.webp\",\"960\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-1-med.webp\",\"1920\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-1-big.webp\"}', 'image/webp', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(2, '1.', 'menu', 'fs-media', NULL, 'catalog', 'Demo: Best seller menu', 'https://aimeos.org/media/default/product_01_A-low.webp', '{\"240\":\"https:\\/\\/aimeos.org\\/media\\/default\\/product_01_A-low.webp\",\"720\":\"https:\\/\\/aimeos.org\\/media\\/default\\/product_01_A-med.webp\",\"1350\":\"https:\\/\\/aimeos.org\\/media\\/default\\/product_01_A-big.webp\"}', 'image/webp', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(3, '1.', 'stage', 'fs-media', NULL, 'catalog', 'Demo: New arrivals stage', 'https://aimeos.org/media/default/main-banner-2-big.webp', '{\"480\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-2-low.webp\",\"960\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-2-med.webp\",\"1920\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-2-big.webp\"}', 'image/webp', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(4, '1.', 'stage', 'fs-media', NULL, 'catalog', 'Demo: Hot deals stage', 'https://aimeos.org/media/default/main-banner-3-big.webp', '{\"480\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-3-low.webp\",\"960\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-3-med.webp\",\"1920\":\"https:\\/\\/aimeos.org\\/media\\/default\\/main-banner-3-big.webp\"}', 'image/webp', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_list`
--

CREATE TABLE `mshop_media_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_list_type`
--

CREATE TABLE `mshop_media_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_property`
--

CREATE TABLE `mshop_media_property` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_property_type`
--

CREATE TABLE `mshop_media_property_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_media_property_type`
--

INSERT INTO `mshop_media_property_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'media', 'name', 'Media title', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_type`
--

CREATE TABLE `mshop_media_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_media_type`
--

INSERT INTO `mshop_media_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'cms', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'ai-cms-grapesjs'),
(2, '1.', 'attribute', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'attribute', 'icon', 'Icon', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(4, '1.', 'catalog', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(5, '1.', 'catalog', 'stage', 'Stage', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(6, '1.', 'catalog', 'menu', 'Menu', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(7, '1.', 'catalog', 'icon', 'Icon', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(8, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(9, '1.', 'product', 'download', 'Download', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(10, '1.', 'service', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(11, '1.', 'service', 'icon', 'Icon', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(12, '1.', 'supplier', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_plugin`
--

CREATE TABLE `mshop_plugin` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_plugin_type`
--

CREATE TABLE `mshop_plugin_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_plugin_type`
--

INSERT INTO `mshop_plugin_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'plugin', 'order', 'Order', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price`
--

CREATE TABLE `mshop_price` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currencyid` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `value` decimal(12,2) DEFAULT '0.00',
  `costs` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rebate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `taxrate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_list`
--

CREATE TABLE `mshop_price_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_list_type`
--

CREATE TABLE `mshop_price_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_property`
--

CREATE TABLE `mshop_price_property` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_property_type`
--

CREATE TABLE `mshop_price_property_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_type`
--

CREATE TABLE `mshop_price_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_price_type`
--

INSERT INTO `mshop_price_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'attribute', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'service', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product`
--

CREATE TABLE `mshop_product` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `scale` double NOT NULL DEFAULT '0',
  `rating` decimal(4,2) NOT NULL DEFAULT '0.00',
  `ratings` int NOT NULL DEFAULT '0',
  `instock` smallint NOT NULL DEFAULT '0',
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_list`
--

CREATE TABLE `mshop_product_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_list_type`
--

CREATE TABLE `mshop_product_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_product_list_type`
--

INSERT INTO `mshop_product_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'attribute', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(2, '1.', 'attribute', 'config', 'Configurable', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(3, '1.', 'attribute', 'variant', 'Variant', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(4, '1.', 'attribute', 'hidden', 'Hidden', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(5, '1.', 'attribute', 'custom', 'Custom value', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(6, '1.', 'catalog', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(7, '1.', 'catalog', 'promotion', 'Promotion', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(8, '1.', 'media', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(9, '1.', 'price', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(10, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(11, '1.', 'product', 'suggestion', 'Suggestion', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(12, '1.', 'product', 'bought-together', 'Bought together', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(13, '1.', 'tag', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(14, '1.', 'text', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_property`
--

CREATE TABLE `mshop_product_property` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_property_type`
--

CREATE TABLE `mshop_product_property_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_product_property_type`
--

INSERT INTO `mshop_product_property_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'product', 'package-height', 'Package height', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(2, '1.', 'product', 'package-length', 'Package length', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(3, '1.', 'product', 'package-width', 'Package width', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(4, '1.', 'product', 'package-weight', 'Package weight', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_type`
--

CREATE TABLE `mshop_product_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_product_type`
--

INSERT INTO `mshop_product_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'product', 'default', 'Article', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(2, '1.', 'product', 'bundle', 'Bundle', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core'),
(3, '1.', 'product', 'event', 'Event', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(4, '1.', 'product', 'group', 'Group', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(5, '1.', 'product', 'select', 'Selection', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(6, '1.', 'product', 'voucher', 'Voucher', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_rule`
--

CREATE TABLE `mshop_rule` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_rule_type`
--

CREATE TABLE `mshop_rule_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_rule_type`
--

INSERT INTO `mshop_rule_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'rule', 'catalog', 'Catalog', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service`
--

CREATE TABLE `mshop_service` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service_list`
--

CREATE TABLE `mshop_service_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service_list_type`
--

CREATE TABLE `mshop_service_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_service_list_type`
--

INSERT INTO `mshop_service_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'media', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(2, '1.', 'price', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(3, '1.', 'text', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service_type`
--

CREATE TABLE `mshop_service_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_service_type`
--

INSERT INTO `mshop_service_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'service', 'payment', 'Payment', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(2, '1.', 'service', 'delivery', 'Delivery', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_stock`
--

CREATE TABLE `mshop_stock` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `stocklevel` int DEFAULT NULL,
  `backdate` datetime DEFAULT NULL,
  `timeframe` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_stock_type`
--

CREATE TABLE `mshop_stock_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_stock_type`
--

INSERT INTO `mshop_stock_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier`
--

CREATE TABLE `mshop_supplier` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier_address`
--

CREATE TABLE `mshop_supplier_address` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT '0',
  `latitude` double DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `pos` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier_list`
--

CREATE TABLE `mshop_supplier_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier_list_type`
--

CREATE TABLE `mshop_supplier_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_supplier_list_type`
--

INSERT INTO `mshop_supplier_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'attribute', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(2, '1.', 'product', 'promotion', 'Promotion', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(3, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(4, '1.', 'media', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(5, '1.', 'text', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_tag`
--

CREATE TABLE `mshop_tag` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_tag_type`
--

CREATE TABLE `mshop_tag_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_tag_type`
--

INSERT INTO `mshop_tag_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'catalog', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(2, '1.', 'product', 'default', 'Standard', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text`
--

CREATE TABLE `mshop_text` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_text`
--

INSERT INTO `mshop_text` (`id`, `siteid`, `type`, `langid`, `domain`, `label`, `content`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'name', 'de', 'catalog', 'Demo name/de: Start', 'Start', 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(2, '1.', 'url', 'de', 'catalog', 'Demo url/de: Start', 'Start', 1, '2022-09-12 15:42:59', '2022-09-12 15:42:59', 'core'),
(3, '1.', 'short', 'de', 'catalog', 'Demo short/de: Dies ist der Kurztext', 'Dies ist der Kurztext für die Hauptkategorie ihres neuen Webshops.', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(4, '1.', 'short', 'en', 'catalog', 'Demo short/en: This is the short text', 'This is the short text for the main category of your new web shop.', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(5, '1.', 'long', 'de', 'catalog', 'Demo long/de: Hier kann eine ausführliche Einleitung', 'Hier kann eine ausführliche Einleitung für ihre Hauptkategorie stehen.', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(6, '1.', 'long', 'en', 'catalog', 'Demo long/en: Here you can add a long introduction', 'Here you can add a long introduction for you main category.', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(7, '1.', 'meta-description', NULL, 'catalog', 'Demo meta-description', 'Meta descriptions are important because they are shown in the search engine result page', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(8, '1.', 'short', 'de', 'catalog', 'Best seller kurz', '<p>Große Auswahl an TOP Sellern<br /><strong>BESTE Preise garantiert</strong></p>', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(9, '1.', 'short', 'en', 'catalog', 'Best seller short', '<p>LARGE selection of TOP sellers<br /><strong>BEST prices guaranteed</strong></p>', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(10, '1.', 'meta-description', NULL, 'catalog', 'Demo meta-description', 'Meta descriptions are important because they are shown in the search engine result page', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(11, '1.', 'short', 'de', 'catalog', 'New arrivals kurz', '<p><strong>Sommer 2021-2022</strong></p><p>Neue Collection eingetroffen</p>', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(12, '1.', 'short', 'en', 'catalog', 'New arrivals short', '<p><strong>Summer 2021-2022</strong></p><p>New collection available</p>', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(13, '1.', 'meta-description', NULL, 'catalog', 'Demo meta-description', 'Meta descriptions are important because they are shown in the search engine result page', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(14, '1.', 'short', 'de', 'catalog', 'Hot deals kurz', '<p>Bis zu <strong>30%</strong> Rabatt<br />auf ausgewählte Stücke</p>', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(15, '1.', 'short', 'en', 'catalog', 'Hot deals short', '<p>Up to <strong>30%</strong> discount<br />on selected items</p>', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(16, '1.', 'meta-description', NULL, 'catalog', 'Demo meta-description', 'Meta descriptions are important because they are shown in the search engine result page', 1, '2022-09-12 15:43:00', '2022-09-12 15:43:00', 'core'),
(17, '1.', 'content', NULL, 'cms', 'Demo content: Home', '{\"css\":\"img{max-width:100%;}form{padding-top:10px;}.container-xl{min-height:2.5rem !important;}.row{min-height:2.5rem !important;}.col, [class^=\\\"col-\\\"]{min-height:2.5rem !important;}.row{display:flex;width:auto;}.gjs-dashed .container-xl, .gjs-dashed .row, .gjs-dashed .space{padding-top:10px;padding-right:0px;padding-bottom:10px;padding-left:0px;}.table .row{display:table-row;}.table .cell{width:auto;height:auto;}::-webkit-scrollbar{background-color:var(--bs-bg, #f8fafc);width:0.25rem;}::-webkit-scrollbar-thumb{background-color:rgb(80, 88, 96);outline-color:initial;outline-style:none;outline-width:initial;}body{background-image:none;background-color:rgb(248, 250, 252);}.cataloglist{display:block;max-height:350px;overflow-x:hidden;overflow-y:hidden;white-space:nowrap;}.product{display:inline-block;width:240px;height:320px;margin-top:14px;margin-right:14px;margin-bottom:14px;margin-left:14px;background-color:rgb(232, 236, 239);}.contact-form .contact-pot{display:none;}#iz45jf{background-image:url(\\\"https://aimeos.org/media/default/background.webp\\\");}#ihpseq{display:inline-block;min-height:50px;width:100%;}#ikvn3f{display:inline-block;min-height:50px;width:100%;}#ihy2hl{display:inline-block;min-height:50px;width:100%;}#i4rmlj{display:inline-block;min-height:50px;width:100%;}#iid4ih{letter-spacing:normal;}#i4wrp-2{letter-spacing:normal;}#ib6hol{letter-spacing:normal;}\",\"html\":\"<div class=\\\"row g-0\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-gutters=\\\"g-0\\\" data-break=\\\"col-sm\\\"><div class=\\\"col-sm\\\"><a title=\\\"Accessories\\\" href=\\\"/shop\\\" id=\\\"io0s6g\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-top-1.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-top-1.webp 480w, https://aimeos.org/media/default/content-top-1.webp 600w\\\" alt=\\\"Accessories\\\" id=\\\"iae6\\\"/></a></div><div class=\\\"col-sm\\\"><a title=\\\"Women\'s clothing\\\" href=\\\"/shop\\\" id=\\\"i91mut\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-top-2.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-top-2.webp 480w, https://aimeos.org/media/default/content-top-2.webp 600w\\\" alt=\\\"Women\'s clothing\\\" id=\\\"idoo\\\"/></a></div><div class=\\\"col-sm\\\"><a title=\\\"Casual trends\\\" href=\\\"/shop\\\" id=\\\"ix4qff\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-top-3.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-top-3.webp 480w, https://aimeos.org/media/default/content-top-3.webp 600w\\\" alt=\\\"Casual trends\\\" id=\\\"igo4\\\"/></a></div></div><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><h2>Top Seller</h2><cataloglist class=\\\"cataloglist\\\" limit=\\\"6\\\" type=\\\"default\\\" catid=\\\"2\\\"><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div></cataloglist></div><div class=\\\"row g-0\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-gutters=\\\"g-0\\\" data-break=\\\"col-md\\\"><div class=\\\"col-md\\\"><a title=\\\"40% discount\\\" href=\\\"/shop\\\" id=\\\"is5n8h\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-mid-1.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-mid-1.webp 480w\\\" alt=\\\"40% discount\\\" id=\\\"ig0kh\\\"/></a></div><div class=\\\"col-md\\\"><a href=\\\"/shop\\\" title=\\\"Discount deals\\\" id=\\\"ibvrdg\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-mid-2.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-mid-2.webp 480w\\\" alt=\\\"Discount deals\\\" id=\\\"ii2my\\\"/></a></div></div><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><h2 id=\\\"ixboc\\\">New Products</h2><cataloglist class=\\\"cataloglist\\\" limit=\\\"6\\\" type=\\\"default\\\" catid=\\\"13\\\"><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div></cataloglist></div><div class=\\\"background lazy-image\\\" data-background=\\\"https://aimeos.org/media/default/background.webp 480w, https://aimeos.org/media/default/background.webp 960w, https://aimeos.org/media/default/background.webp 1903w\\\" id=\\\"iz45jf\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><div><p id=\\\"ix988m\\\"><span id=\\\"iid4ih\\\">YOUR STYLE - YOUR ATTITUDE</span><br draggable=\\\"true\\\" data-highlightable=\\\"1\\\" id=\\\"i4wrp-2\\\"/><span id=\\\"ib6hol\\\">Select your unique style</span></p></div><a href=\\\"/shop\\\" title=\\\"Unique styles\\\" class=\\\"btn\\\">Take a look</a></div></div><div class=\\\"background\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><h2 id=\\\"iq09l\\\">Hot Deals</h2><cataloglist class=\\\"cataloglist\\\" limit=\\\"6\\\" type=\\\"default\\\" catid=\\\"14\\\"><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div><div class=\\\"product\\\"></div></cataloglist></div></div><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><h2>What&#039;s New</h2><div class=\\\"row\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-break=\\\"col-lg\\\" data-gutters=\\\"\\\"><div class=\\\"col-lg\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><div class=\\\"row\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-gutters=\\\"\\\" data-break=\\\"col-sm\\\"><div class=\\\"col-sm\\\"><a href=\\\"/shop\\\" title=\\\"New arrivals\\\" id=\\\"ikvn3f\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-bottom-1.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-bottom-1.webp 480w, https://aimeos.org/media/default/content-bottom-1.webp 600w\\\" alt=\\\"New arrivals\\\" id=\\\"infyh\\\"/></a></div><div class=\\\"col-sm\\\"><h3 id=\\\"if35b\\\">NEW ARRIVALS</h3><div id=\\\"iwj6a\\\"><p id=\\\"irl1k\\\">Our new collection covers the latest fashion trends. Check out what&#039;s hot this summer!</p></div></div></div></div></div><div class=\\\"col-lg\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><div class=\\\"row\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-break=\\\"col-sm\\\"><div class=\\\"col-sm\\\"><a title=\\\"Cool fashion\\\" href=\\\"/shop\\\" id=\\\"ihpseq\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-bottom-2.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-bottom-2.webp 480w, https://aimeos.org/media/default/content-bottom-2.webp 600w\\\" alt=\\\"Best sellers\\\" id=\\\"izstt\\\"/></a></div><div class=\\\"col-sm\\\"><h3 id=\\\"i8ekd\\\">COOL FASHION</h3><div id=\\\"i2xnz7\\\"><p>Cool styles for cool people! Get your own trending look for this summer season.</p></div></div></div></div></div></div><div class=\\\"row\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-break=\\\"col-lg\\\" data-gutters=\\\"\\\"><div class=\\\"col-lg\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><div class=\\\"row\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-break=\\\"col-sm\\\" data-gutters=\\\"\\\"><div class=\\\"col-sm\\\"><a title=\\\"Best sellers\\\" href=\\\"/shop\\\" id=\\\"ihy2hl\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-bottom-3.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-bottom-3.webp 480w, https://aimeos.org/media/default/content-bottom-3.webp 600w\\\" alt=\\\"Best sellers\\\" id=\\\"i8848\\\"/></a><div id=\\\"i6649q\\\"></div></div><div class=\\\"col-sm\\\"><h3 id=\\\"isv17\\\">BEST SELLERS</h3><p id=\\\"ivkql\\\">Check out our best sellers! High quality accessories and basics at lowest prices!</p></div></div></div></div><div class=\\\"col-lg\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><div class=\\\"row\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-break=\\\"col-sm\\\" data-gutters=\\\"\\\"><div class=\\\"col-sm\\\"><a title=\\\"Casual styles\\\" id=\\\"i4rmlj\\\" href=\\\"/shop\\\" class=\\\"space\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/content-bottom-4.webp\\\" srcset=\\\"https://aimeos.org/media/default/content-bottom-4.webp 480w, https://aimeos.org/media/default/content-bottom-4.webp 600w\\\" alt=\\\"Casual styles\\\" id=\\\"ieoqf\\\"/></a><div id=\\\"i0ld9x\\\"></div></div><div class=\\\"col-sm\\\"><h3>CASUAL STYLES</h3><p>We support your custom style with a large amount of fashion basics from major brands.</p></div></div></div></div></div></div><div class=\\\"background\\\"><div class=\\\"container-xl\\\" data-gjs-name=\\\"Container\\\"><div class=\\\"row g-0\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-gutters=\\\"g-0\\\"><div class=\\\"col\\\"><div class=\\\"row g-0\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-gutters=\\\"g-0\\\"><div class=\\\"col\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/logo-1.png\\\" srcset=\\\"https://aimeos.org/media/default/logo-1.png 240w\\\" alt=\\\"Ballroom\\\" id=\\\"immyok\\\"/></div><div class=\\\"col\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/logo-2.png\\\" srcset=\\\"https://aimeos.org/media/default/logo-2.png 240w\\\" alt=\\\"C-Story\\\" id=\\\"iuvnw1\\\"/></div></div></div><div class=\\\"col\\\"><div class=\\\"row g-0\\\" data-gjs-droppable=\\\".col\\\" data-gjs-name=\\\"Row\\\" data-gutters=\\\"g-0\\\"><div class=\\\"col\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/logo-3.png\\\" srcset=\\\"https://aimeos.org/media/default/logo-3.png 240w\\\" alt=\\\"Sergio\\\" id=\\\"i71vzg\\\"/></div><div class=\\\"col\\\"><img loading=\\\"lazy\\\" src=\\\"https://aimeos.org/media/default/logo-4.png\\\" srcset=\\\"https://aimeos.org/media/default/logo-4.png 240w\\\" id=\\\"ikylxg\\\" alt=\\\"H&R\\\"/></div></div></div></div></div></div>\"}', 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text_list`
--

CREATE TABLE `mshop_text_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` int NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text_list_type`
--

CREATE TABLE `mshop_text_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text_type`
--

CREATE TABLE `mshop_text_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mshop_text_type`
--

INSERT INTO `mshop_text_type` (`id`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, '1.', 'cms', 'name', 'Name', 0, 1, '2022-09-12 15:43:02', '2022-09-12 15:43:02', 'ai-cms-grapesjs'),
(2, '1.', 'cms', 'meta-keyword', 'Meta keywords', 0, 1, '2022-09-12 15:43:02', '2022-09-12 15:43:02', 'ai-cms-grapesjs'),
(3, '1.', 'cms', 'meta-description', 'Meta description', 0, 1, '2022-09-12 15:43:02', '2022-09-12 15:43:02', 'ai-cms-grapesjs'),
(4, '1.', 'cms', 'content', 'Content', 0, 1, '2022-09-12 15:43:03', '2022-09-12 15:43:03', 'ai-cms-grapesjs'),
(5, '1.', 'attribute', 'name', 'Name', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(6, '1.', 'attribute', 'short', 'Short description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(7, '1.', 'attribute', 'long', 'Long description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(8, '1.', 'catalog', 'name', 'Name', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(9, '1.', 'catalog', 'short', 'Short description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(10, '1.', 'catalog', 'long', 'Long description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(11, '1.', 'catalog', 'url', 'URL segment', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(12, '1.', 'catalog', 'meta-keyword', 'Meta keywords', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(13, '1.', 'catalog', 'meta-description', 'Meta description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(14, '1.', 'product', 'name', 'Name', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(15, '1.', 'product', 'short', 'Short description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(16, '1.', 'product', 'long', 'Long description', 0, 1, '2022-09-12 15:43:04', '2022-09-12 15:43:04', 'core'),
(17, '1.', 'product', 'url', 'URL segment', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(18, '1.', 'product', 'meta-keyword', 'Meta keywords', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(19, '1.', 'product', 'meta-description', 'Meta description', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(20, '1.', 'product', 'basket', 'Basket description', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(21, '1.', 'service', 'name', 'Name', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(22, '1.', 'service', 'short', 'Short description', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(23, '1.', 'service', 'long', 'Long description', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(24, '1.', 'supplier', 'name', 'Name', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(25, '1.', 'supplier', 'short', 'Short description', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core'),
(26, '1.', 'supplier', 'long', 'Long description', 0, 1, '2022-09-12 15:43:05', '2022-09-12 15:43:05', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `superuser` smallint NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '1',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longitude` double DEFAULT '0',
  `latitude` double DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `siteid`, `superuser`, `status`, `company`, `vatid`, `salutation`, `title`, `firstname`, `lastname`, `address1`, `address2`, `address3`, `postal`, `city`, `state`, `langid`, `countryid`, `telephone`, `telefax`, `website`, `longitude`, `latitude`, `birthday`, `editor`) VALUES
(1, 'Test user', 'demo@example.com', NULL, '$2y$10$zHn8zqdZhD67BLdzDsaqxexsVyXq41u3pPG9yPtUINDO2WqwFgcFi', NULL, '2022-09-12 09:43:05', '2022-09-12 09:43:05', '1.', 0, 1, 'Test company', 'DE999999999', 'mr', '', 'Test', 'User', 'Test street', '1', '', '10000', 'Test city', 'CA', 'en', 'US', '', '', '', NULL, NULL, '2000-01-01', 'core'),
(2, 'superadmin@gmail.com', 'superadmin@gmail.com', '2022-09-12', '$2y$10$GLaAgPVJJIW9sCm.QgWJwuB3BPOLMjkOa1ikPma8lFzdgQM.w1uOq', NULL, '2022-09-12 09:55:49', '2022-09-12 09:55:49', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, 'aimeos:account');

-- --------------------------------------------------------

--
-- Table structure for table `users_address`
--

CREATE TABLE `users_address` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint UNSIGNED NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double DEFAULT '0',
  `latitude` double DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `pos` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_list`
--

CREATE TABLE `users_list` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint UNSIGNED NOT NULL,
  `key` varchar(134) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refid` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL,
  `status` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_list_type`
--

CREATE TABLE `users_list_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_property`
--

CREATE TABLE `users_property` (
  `id` bigint NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentid` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `langid` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_property_type`
--

CREATE TABLE `users_property_type` (
  `id` int NOT NULL,
  `siteid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `status` smallint NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `madmin_cache`
--
ALTER TABLE `madmin_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_macac_expire` (`expire`);

--
-- Indexes for table `madmin_cache_tag`
--
ALTER TABLE `madmin_cache_tag`
  ADD UNIQUE KEY `unq_macacta_tid_tname` (`tid`,`tname`),
  ADD KEY `fk_macacta_tid` (`tid`);

--
-- Indexes for table `madmin_log`
--
ALTER TABLE `madmin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_malog_sid_time_facility_prio` (`siteid`,`timestamp`,`facility`,`priority`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mshop_attribute`
--
ALTER TABLE `mshop_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msatt_dom_sid_type_code` (`domain`,`siteid`,`type`,`code`),
  ADD KEY `idx_msatt_dom_sid_stat_typ_pos` (`domain`,`siteid`,`status`,`type`,`pos`),
  ADD KEY `idx_msatt_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msatt_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msatt_sid_code` (`siteid`,`code`),
  ADD KEY `idx_msatt_sid_type` (`siteid`,`type`),
  ADD KEY `idx_msatt_key_sid` (`key`,`siteid`);

--
-- Indexes for table `mshop_attribute_list`
--
ALTER TABLE `mshop_attribute_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_msattli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msattli_pid` (`parentid`);

--
-- Indexes for table `mshop_attribute_list_type`
--
ALTER TABLE `mshop_attribute_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msattlity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msattlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msattlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_attribute_property`
--
ALTER TABLE `mshop_attribute_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattpr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  ADD KEY `fk_msattpr_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msattpr_pid` (`parentid`);

--
-- Indexes for table `mshop_attribute_property_type`
--
ALTER TABLE `mshop_attribute_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msattprty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msattprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msattprty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_attribute_type`
--
ALTER TABLE `mshop_attribute_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msattty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msattty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msattty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_catalog`
--
ALTER TABLE `mshop_catalog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscat_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscat_sid_nlt_nrt_lvl_pid` (`siteid`,`nleft`,`nright`,`level`,`parentid`),
  ADD KEY `idx_mscat_sid_status` (`siteid`,`status`);

--
-- Indexes for table `mshop_catalog_list`
--
ALTER TABLE `mshop_catalog_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscatli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_mscatli_pid_dm_sid_pos_rid` (`parentid`,`domain`,`siteid`,`pos`,`refid`),
  ADD KEY `idx_mscatli_rid_dom_sid_ty` (`refid`,`domain`,`siteid`,`type`),
  ADD KEY `idx_mscatli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mscatli_pid` (`parentid`);

--
-- Indexes for table `mshop_catalog_list_type`
--
ALTER TABLE `mshop_catalog_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscatlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mscatlity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mscatlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscatlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_cms`
--
ALTER TABLE `mshop_cms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscms_sid_url` (`siteid`,`url`),
  ADD KEY `unq_mscms_sid_status` (`siteid`,`status`),
  ADD KEY `unq_mscms_sid_label` (`siteid`,`label`);

--
-- Indexes for table `mshop_cms_list`
--
ALTER TABLE `mshop_cms_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscmsli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_mscmsli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mscmsli_pid` (`parentid`);

--
-- Indexes for table `mshop_cms_list_type`
--
ALTER TABLE `mshop_cms_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscmslity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mscmslity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mscmslity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscmslity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_coupon`
--
ALTER TABLE `mshop_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mscou_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mscou_sid_provider` (`siteid`,`provider`),
  ADD KEY `idx_mscou_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscou_sid_start` (`siteid`,`start`),
  ADD KEY `idx_mscou_sid_end` (`siteid`,`end`);

--
-- Indexes for table `mshop_coupon_code`
--
ALTER TABLE `mshop_coupon_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscouco_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscouco_sid_ct_start_end` (`siteid`,`count`,`start`,`end`),
  ADD KEY `idx_mscouco_sid_start` (`siteid`,`start`),
  ADD KEY `idx_mscouco_sid_end` (`siteid`,`end`),
  ADD KEY `fk_mscouco_pid` (`parentid`);

--
-- Indexes for table `mshop_customer`
--
ALTER TABLE `mshop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscus_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscus_sid_langid` (`siteid`,`langid`),
  ADD KEY `idx_mscus_sid_last_first` (`siteid`,`lastname`,`firstname`),
  ADD KEY `idx_mscus_sid_post_addr1` (`siteid`,`postal`,`address1`),
  ADD KEY `idx_mscus_sid_post_city` (`siteid`,`postal`,`city`),
  ADD KEY `idx_mscus_sid_city` (`siteid`,`city`),
  ADD KEY `idx_mscus_sid_email` (`siteid`,`email`);

--
-- Indexes for table `mshop_customer_address`
--
ALTER TABLE `mshop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mscusad_pid` (`parentid`),
  ADD KEY `idx_mscusad_langid` (`langid`),
  ADD KEY `idx_mscusad_sid_last_first` (`siteid`,`lastname`,`firstname`),
  ADD KEY `idx_mscusad_sid_post_addr1` (`siteid`,`postal`,`address1`),
  ADD KEY `idx_mscusad_sid_post_ci` (`siteid`,`postal`,`city`),
  ADD KEY `idx_mscusad_sid_city` (`siteid`,`city`),
  ADD KEY `idx_mscusad_sid_email` (`siteid`,`email`);

--
-- Indexes for table `mshop_customer_group`
--
ALTER TABLE `mshop_customer_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscusgr_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscusgr_sid_label` (`siteid`,`label`);

--
-- Indexes for table `mshop_customer_list`
--
ALTER TABLE `mshop_customer_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscusli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_mscusli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mscusli_pid` (`parentid`);

--
-- Indexes for table `mshop_customer_list_type`
--
ALTER TABLE `mshop_customer_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscuslity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mscuslity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mscuslity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscuslity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_customer_property`
--
ALTER TABLE `mshop_customer_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mcuspr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  ADD KEY `fk_mscuspr_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mcuspr_pid` (`parentid`);

--
-- Indexes for table `mshop_customer_property_type`
--
ALTER TABLE `mshop_customer_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mcusprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mcusprty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mcusprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mcusprty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_locale`
--
ALTER TABLE `mshop_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msloc_sid_lang_curr` (`site_id`,`langid`,`currencyid`),
  ADD KEY `idx_msloc_sid_curid` (`site_id`,`currencyid`),
  ADD KEY `idx_msloc_sid_status` (`site_id`,`status`),
  ADD KEY `idx_msloc_sid_pos` (`site_id`,`pos`),
  ADD KEY `fk_msloc_siteid` (`site_id`),
  ADD KEY `fk_msloc_langid` (`langid`),
  ADD KEY `fk_msloc_currid` (`currencyid`);

--
-- Indexes for table `mshop_locale_currency`
--
ALTER TABLE `mshop_locale_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msloccu_status` (`status`),
  ADD KEY `idx_msloccu_label` (`label`);

--
-- Indexes for table `mshop_locale_language`
--
ALTER TABLE `mshop_locale_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mslocla_status` (`status`),
  ADD KEY `idx_mslocla_label` (`label`);

--
-- Indexes for table `mshop_locale_site`
--
ALTER TABLE `mshop_locale_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mslocsi_code` (`code`),
  ADD UNIQUE KEY `unq_mslocsi_siteid` (`siteid`),
  ADD KEY `idx_mslocsi_nlt_nrt_lvl_pid` (`nleft`,`nright`,`level`,`parentid`),
  ADD KEY `idx_mslocsi_level_status` (`level`,`status`),
  ADD KEY `idx_mslocsi_label` (`label`);

--
-- Indexes for table `mshop_media`
--
ALTER TABLE `mshop_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msmed_sid_dom_langid` (`siteid`,`domain`,`langid`),
  ADD KEY `idx_msmed_sid_dom_label` (`siteid`,`domain`,`label`),
  ADD KEY `idx_msmed_sid_dom_mime` (`siteid`,`domain`,`mimetype`),
  ADD KEY `idx_msmed_sid_dom_link` (`siteid`,`domain`,`link`);

--
-- Indexes for table `mshop_media_list`
--
ALTER TABLE `mshop_media_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_msmedli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msmedli_pid` (`parentid`);

--
-- Indexes for table `mshop_media_list_type`
--
ALTER TABLE `mshop_media_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msmedlity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msmedlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msmedlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_media_property`
--
ALTER TABLE `mshop_media_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedpr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  ADD KEY `fk_msmedpr_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msmedpr_pid` (`parentid`);

--
-- Indexes for table `mshop_media_property_type`
--
ALTER TABLE `mshop_media_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msmedprty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msmedprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msmedprty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_media_type`
--
ALTER TABLE `mshop_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msmedty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msmedty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msmedty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_plugin`
--
ALTER TABLE `mshop_plugin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msplu_sid_ty_prov` (`siteid`,`type`,`provider`),
  ADD KEY `idx_msplu_sid_prov` (`siteid`,`provider`),
  ADD KEY `idx_msplu_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msplu_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msplu_sid_pos` (`siteid`,`pos`);

--
-- Indexes for table `mshop_plugin_type`
--
ALTER TABLE `mshop_plugin_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspluty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mspluty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mspluty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mspluty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_price`
--
ALTER TABLE `mshop_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mspri_sid_dom_currid` (`siteid`,`domain`,`currencyid`),
  ADD KEY `idx_mspri_sid_dom_quantity` (`siteid`,`domain`,`quantity`),
  ADD KEY `idx_mspri_sid_dom_value` (`siteid`,`domain`,`value`),
  ADD KEY `idx_mspri_sid_dom_costs` (`siteid`,`domain`,`costs`),
  ADD KEY `idx_mspri_sid_dom_rebate` (`siteid`,`domain`,`rebate`);

--
-- Indexes for table `mshop_price_list`
--
ALTER TABLE `mshop_price_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprili_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_msprili_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msprili_pid` (`parentid`);

--
-- Indexes for table `mshop_price_list_type`
--
ALTER TABLE `mshop_price_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprility_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msprility_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msprility_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msprility_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_price_property`
--
ALTER TABLE `mshop_price_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspripr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  ADD KEY `fk_mspripr_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mspripr_pid` (`parentid`);

--
-- Indexes for table `mshop_price_property_type`
--
ALTER TABLE `mshop_price_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspriprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mspriprty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mspriprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mspriprty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_price_type`
--
ALTER TABLE `mshop_price_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msprity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msprity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msprity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_product`
--
ALTER TABLE `mshop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspro_siteid_code` (`siteid`,`code`),
  ADD KEY `idx_mspro_id_sid_stat_st_end_rt` (`id`,`siteid`,`status`,`start`,`end`,`rating`),
  ADD KEY `idx_mspro_sid_stat_st_end_rt` (`siteid`,`status`,`start`,`end`,`rating`),
  ADD KEY `idx_mspro_sid_rating` (`siteid`,`rating`),
  ADD KEY `idx_mspro_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mspro_sid_start` (`siteid`,`start`),
  ADD KEY `idx_mspro_sid_end` (`siteid`,`end`);

--
-- Indexes for table `mshop_product_list`
--
ALTER TABLE `mshop_product_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msproli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_msproli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msproli_pid` (`parentid`);

--
-- Indexes for table `mshop_product_list_type`
--
ALTER TABLE `mshop_product_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprolity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msprolity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msprolity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msprolity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_product_property`
--
ALTER TABLE `mshop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspropr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  ADD KEY `fk_mspropr_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mspropr_pid` (`parentid`);

--
-- Indexes for table `mshop_product_property_type`
--
ALTER TABLE `mshop_product_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msproprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msproprty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msproprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msproprty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_product_type`
--
ALTER TABLE `mshop_product_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msproty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msproty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msproty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msproty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_rule`
--
ALTER TABLE `mshop_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msrul_sid_prov` (`siteid`,`provider`),
  ADD KEY `idx_msrul_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msrul_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msrul_sid_pos` (`siteid`,`pos`),
  ADD KEY `idx_msrul_sid_start` (`siteid`,`start`),
  ADD KEY `idx_msrul_sid_end` (`siteid`,`end`);

--
-- Indexes for table `mshop_rule_type`
--
ALTER TABLE `mshop_rule_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msrulty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msrulty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msrulty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msrulty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_service`
--
ALTER TABLE `mshop_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msser_siteid_code` (`siteid`,`code`),
  ADD KEY `idx_msser_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_msser_sid_prov` (`siteid`,`provider`),
  ADD KEY `idx_msser_sid_code` (`siteid`,`code`),
  ADD KEY `idx_msser_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msser_sid_pos` (`siteid`,`pos`);

--
-- Indexes for table `mshop_service_list`
--
ALTER TABLE `mshop_service_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msserli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_msserli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_msserli_pid` (`parentid`);

--
-- Indexes for table `mshop_service_list_type`
--
ALTER TABLE `mshop_service_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msserlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msserlity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msserlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msserlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_service_type`
--
ALTER TABLE `mshop_service_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msserty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msserty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msserty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msserty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_stock`
--
ALTER TABLE `mshop_stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssto_sid_pid_ty` (`siteid`,`prodid`,`type`),
  ADD KEY `idx_mssto_sid_stocklevel` (`siteid`,`stocklevel`),
  ADD KEY `idx_mssto_sid_backdate` (`siteid`,`backdate`);

--
-- Indexes for table `mshop_stock_type`
--
ALTER TABLE `mshop_stock_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msstoty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msstoty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_msstoty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msstoty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_supplier`
--
ALTER TABLE `mshop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssup_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mssup_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mssup_sid_label` (`siteid`,`label`);

--
-- Indexes for table `mshop_supplier_address`
--
ALTER TABLE `mshop_supplier_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mssupad_sid_rid` (`siteid`,`parentid`),
  ADD KEY `fk_mssupad_pid` (`parentid`);

--
-- Indexes for table `mshop_supplier_list`
--
ALTER TABLE `mshop_supplier_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssupli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_mssupli_pid_dm_sid_pos_rid` (`parentid`,`domain`,`siteid`,`pos`,`refid`),
  ADD KEY `idx_mssupli_rid_dom_sid_ty` (`refid`,`domain`,`siteid`,`type`),
  ADD KEY `idx_mssupli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mssupli_pid` (`parentid`);

--
-- Indexes for table `mshop_supplier_list_type`
--
ALTER TABLE `mshop_supplier_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssuplity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mssuplity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mssuplity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mssuplity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_tag`
--
ALTER TABLE `mshop_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstag_sid_dom_ty_lid_lab` (`siteid`,`domain`,`type`,`langid`,`label`),
  ADD KEY `idx_mstag_sid_dom_langid` (`siteid`,`domain`,`langid`),
  ADD KEY `idx_mstag_sid_dom_label` (`siteid`,`domain`,`label`);

--
-- Indexes for table `mshop_tag_type`
--
ALTER TABLE `mshop_tag_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstagty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mstagty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mstagty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mstagty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_text`
--
ALTER TABLE `mshop_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mstex_sid_domain_status` (`siteid`,`domain`,`status`),
  ADD KEY `idx_mstex_sid_domain_langid` (`siteid`,`domain`,`langid`),
  ADD KEY `idx_mstex_sid_dom_label` (`siteid`,`domain`,`label`),
  ADD KEY `idx_mstex_sid_dom_cont` (`siteid`,`domain`,`content`(255));

--
-- Indexes for table `mshop_text_list`
--
ALTER TABLE `mshop_text_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstexli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_mstexli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_mstexli_pid` (`parentid`);

--
-- Indexes for table `mshop_text_list_type`
--
ALTER TABLE `mshop_text_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstexlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mstexlity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mstexlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mstexlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_text_type`
--
ALTER TABLE `mshop_text_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstexty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mstexty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_mstexty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mstexty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `unq_lvu_email` (`email`),
  ADD KEY `idx_lvu_langid` (`langid`),
  ADD KEY `idx_lvu_last_first` (`lastname`,`firstname`),
  ADD KEY `idx_lvu_post_addr1` (`postal`,`address1`),
  ADD KEY `idx_lvu_post_city` (`postal`,`city`),
  ADD KEY `idx_lvu_lastname` (`lastname`),
  ADD KEY `idx_lvu_address1` (`address1`),
  ADD KEY `idx_lvu_city` (`city`);

--
-- Indexes for table `users_address`
--
ALTER TABLE `users_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lvuad_pid` (`parentid`),
  ADD KEY `idx_lvuad_langid` (`langid`),
  ADD KEY `idx_lvuad_sid_last_first` (`siteid`,`lastname`,`firstname`),
  ADD KEY `idx_lvuad_sid_post_addr1` (`siteid`,`postal`,`address1`),
  ADD KEY `idx_lvuad_sid_post_ci` (`siteid`,`postal`,`city`),
  ADD KEY `idx_lvuad_sid_city` (`siteid`,`city`),
  ADD KEY `idx_lvuad_sid_email` (`siteid`,`email`);

--
-- Indexes for table `users_list`
--
ALTER TABLE `users_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_lvuli_pid_dm_sid_ty_rid` (`parentid`,`domain`,`siteid`,`type`,`refid`),
  ADD KEY `idx_lvuli_key_sid` (`key`,`siteid`),
  ADD KEY `fk_lvuli_pid` (`parentid`);

--
-- Indexes for table `users_list_type`
--
ALTER TABLE `users_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_lvulity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_lvulity_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_lvulity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_lvulity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `users_property`
--
ALTER TABLE `users_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_lvupr_sid_ty_lid_value` (`parentid`,`siteid`,`type`,`langid`,`value`),
  ADD KEY `fk_lvupr_key_sid` (`key`,`siteid`),
  ADD KEY `fk_lvupr_pid` (`parentid`);

--
-- Indexes for table `users_property_type`
--
ALTER TABLE `users_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_lvuprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_lvuprty_sid_status_pos` (`siteid`,`status`,`pos`),
  ADD KEY `idx_lvuprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_lvuprty_sid_code` (`siteid`,`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `madmin_log`
--
ALTER TABLE `madmin_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mshop_attribute`
--
ALTER TABLE `mshop_attribute`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_attribute_list`
--
ALTER TABLE `mshop_attribute_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_attribute_list_type`
--
ALTER TABLE `mshop_attribute_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mshop_attribute_property`
--
ALTER TABLE `mshop_attribute_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_attribute_property_type`
--
ALTER TABLE `mshop_attribute_property_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_attribute_type`
--
ALTER TABLE `mshop_attribute_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mshop_catalog`
--
ALTER TABLE `mshop_catalog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mshop_catalog_list`
--
ALTER TABLE `mshop_catalog_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mshop_catalog_list_type`
--
ALTER TABLE `mshop_catalog_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_cms`
--
ALTER TABLE `mshop_cms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_cms_list`
--
ALTER TABLE `mshop_cms_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_cms_list_type`
--
ALTER TABLE `mshop_cms_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_coupon`
--
ALTER TABLE `mshop_coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mshop_coupon_code`
--
ALTER TABLE `mshop_coupon_code`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_customer`
--
ALTER TABLE `mshop_customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_customer_address`
--
ALTER TABLE `mshop_customer_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_customer_group`
--
ALTER TABLE `mshop_customer_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_customer_list`
--
ALTER TABLE `mshop_customer_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_customer_list_type`
--
ALTER TABLE `mshop_customer_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mshop_customer_property`
--
ALTER TABLE `mshop_customer_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_customer_property_type`
--
ALTER TABLE `mshop_customer_property_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_locale`
--
ALTER TABLE `mshop_locale`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mshop_locale_site`
--
ALTER TABLE `mshop_locale_site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_media`
--
ALTER TABLE `mshop_media`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mshop_media_list`
--
ALTER TABLE `mshop_media_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_media_list_type`
--
ALTER TABLE `mshop_media_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_media_property`
--
ALTER TABLE `mshop_media_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_media_property_type`
--
ALTER TABLE `mshop_media_property_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_media_type`
--
ALTER TABLE `mshop_media_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mshop_plugin`
--
ALTER TABLE `mshop_plugin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_plugin_type`
--
ALTER TABLE `mshop_plugin_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_price`
--
ALTER TABLE `mshop_price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_price_list`
--
ALTER TABLE `mshop_price_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_price_list_type`
--
ALTER TABLE `mshop_price_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_price_property`
--
ALTER TABLE `mshop_price_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_price_property_type`
--
ALTER TABLE `mshop_price_property_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_price_type`
--
ALTER TABLE `mshop_price_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mshop_product`
--
ALTER TABLE `mshop_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_product_list`
--
ALTER TABLE `mshop_product_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_product_list_type`
--
ALTER TABLE `mshop_product_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mshop_product_property`
--
ALTER TABLE `mshop_product_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_product_property_type`
--
ALTER TABLE `mshop_product_property_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mshop_product_type`
--
ALTER TABLE `mshop_product_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mshop_rule`
--
ALTER TABLE `mshop_rule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_rule_type`
--
ALTER TABLE `mshop_rule_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_service`
--
ALTER TABLE `mshop_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_service_list`
--
ALTER TABLE `mshop_service_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_service_list_type`
--
ALTER TABLE `mshop_service_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mshop_service_type`
--
ALTER TABLE `mshop_service_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_stock`
--
ALTER TABLE `mshop_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_stock_type`
--
ALTER TABLE `mshop_stock_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mshop_supplier`
--
ALTER TABLE `mshop_supplier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_supplier_address`
--
ALTER TABLE `mshop_supplier_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_supplier_list`
--
ALTER TABLE `mshop_supplier_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_supplier_list_type`
--
ALTER TABLE `mshop_supplier_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mshop_tag`
--
ALTER TABLE `mshop_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_tag_type`
--
ALTER TABLE `mshop_tag_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mshop_text`
--
ALTER TABLE `mshop_text`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mshop_text_list`
--
ALTER TABLE `mshop_text_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_text_list_type`
--
ALTER TABLE `mshop_text_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mshop_text_type`
--
ALTER TABLE `mshop_text_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_address`
--
ALTER TABLE `users_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_list`
--
ALTER TABLE `users_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_list_type`
--
ALTER TABLE `users_list_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_property`
--
ALTER TABLE `users_property`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_property_type`
--
ALTER TABLE `users_property_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `madmin_cache_tag`
--
ALTER TABLE `madmin_cache_tag`
  ADD CONSTRAINT `fk_macacta_tid` FOREIGN KEY (`tid`) REFERENCES `madmin_cache` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_attribute_list`
--
ALTER TABLE `mshop_attribute_list`
  ADD CONSTRAINT `fk_msattli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_attribute_property`
--
ALTER TABLE `mshop_attribute_property`
  ADD CONSTRAINT `fk_msattpr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_catalog_list`
--
ALTER TABLE `mshop_catalog_list`
  ADD CONSTRAINT `fk_mscatli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_cms_list`
--
ALTER TABLE `mshop_cms_list`
  ADD CONSTRAINT `fk_mscmsli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_cms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_coupon_code`
--
ALTER TABLE `mshop_coupon_code`
  ADD CONSTRAINT `fk_mscouco_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_customer_address`
--
ALTER TABLE `mshop_customer_address`
  ADD CONSTRAINT `fk_mscusad_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_customer_list`
--
ALTER TABLE `mshop_customer_list`
  ADD CONSTRAINT `fk_mscusli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_customer_property`
--
ALTER TABLE `mshop_customer_property`
  ADD CONSTRAINT `fk_mcuspr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_locale`
--
ALTER TABLE `mshop_locale`
  ADD CONSTRAINT `fk_msloc_currid` FOREIGN KEY (`currencyid`) REFERENCES `mshop_locale_currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msloc_langid` FOREIGN KEY (`langid`) REFERENCES `mshop_locale_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msloc_siteid` FOREIGN KEY (`site_id`) REFERENCES `mshop_locale_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_media_list`
--
ALTER TABLE `mshop_media_list`
  ADD CONSTRAINT `fk_msmedli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_media_property`
--
ALTER TABLE `mshop_media_property`
  ADD CONSTRAINT `fk_msmedpr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_price_list`
--
ALTER TABLE `mshop_price_list`
  ADD CONSTRAINT `fk_msprili_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_price_property`
--
ALTER TABLE `mshop_price_property`
  ADD CONSTRAINT `fk_mspripr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_product_list`
--
ALTER TABLE `mshop_product_list`
  ADD CONSTRAINT `fk_msproli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_product_property`
--
ALTER TABLE `mshop_product_property`
  ADD CONSTRAINT `fk_mspropr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_service_list`
--
ALTER TABLE `mshop_service_list`
  ADD CONSTRAINT `fk_msserli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_supplier_address`
--
ALTER TABLE `mshop_supplier_address`
  ADD CONSTRAINT `fk_mssupad_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_supplier_list`
--
ALTER TABLE `mshop_supplier_list`
  ADD CONSTRAINT `fk_mssupli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_text_list`
--
ALTER TABLE `mshop_text_list`
  ADD CONSTRAINT `fk_mstexli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_text` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_address`
--
ALTER TABLE `users_address`
  ADD CONSTRAINT `fk_lvuad_pid` FOREIGN KEY (`parentid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_list`
--
ALTER TABLE `users_list`
  ADD CONSTRAINT `fk_lvuli_pid` FOREIGN KEY (`parentid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_property`
--
ALTER TABLE `users_property`
  ADD CONSTRAINT `fk_lvupr_pid` FOREIGN KEY (`parentid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
