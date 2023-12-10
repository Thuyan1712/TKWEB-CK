-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2023 lúc 10:20 AM
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
-- Cơ sở dữ liệu: `tatshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Máy ảnh'),
(2, 'Máy quay'),
(3, 'ống kính'),
(4, 'phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `MaDM`) VALUES
(1, 'SONY', 1),
(2, 'CANON', 1),
(3, 'FUJIFILM', 1),
(4, 'NIKON', 1),
(5, 'PENTAX', 1),
(6, 'SONY', 2),
(7, 'CANON', 2),
(8, 'HÀNH TRÌNH GOPRO', 2),
(9, 'BLACKMAGIC DESIGN', 2),
(10, 'DJI', 2),
(11, 'SONY', 3),
(12, 'CANON', 3),
(13, 'FUJIFILM', 3),
(14, 'NIKON', 3),
(15, 'PENTAX', 3),
(16, 'THIẾT BỊ CHỐNG RUNG', 4),
(17, 'CHÂN MÁY ẢNH', 4),
(18, 'DÈN FLASH MÁY ẢNH', 4),
(19, 'THẺ NHỚ', 4),
(20, 'PIN + SẠC', 4),
(21, 'TÚI MÁY ẢNH', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `original_price` text NOT NULL,
  `price` text DEFAULT NULL,
  `dexuat` varchar(100) NOT NULL,
  `noibat` varchar(100) NOT NULL,
  `new` varchar(100) NOT NULL,
  `detail` text DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image1` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `MaLSP`, `MaDM`, `name`, `original_price`, `price`, `dexuat`, `noibat`, `new`, `detail`, `introduction`, `image`, `image1`) VALUES
(1, 2, 1, 'Máy Ảnh Canon EOS R6 Body', '70.000.000', '66.990.000', 'co', '', '', 'Máy Ảnh Canon EOS R6 Body \n\n- Cảm biến CMOS 20MP full frame\n- Chip xử lý hình ảnh DIGIC X\n- Quay video 4K60p và FHD 120p 10bit trong máy\n- Ổn định hình ảnh sensor-shift 5 trục\n- Chụp liên tiếp 12 fps (màn trập cơ) hoặc 20 fps (màn trập điện tử, không gây ồn)\n- Màn hình LCD 3.15 inch, 2.1 triệu điểm\n- EVF OLED 5.76 triệu điểm, phóng đại 0.76x\n- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10\n- 2 khay thẻ nhớ: 1x CFExpress, 1x SD UHS-II\n- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1\n- Phụ kiện đi kèm: Canon EOS R6, Nắp body, Dây đeo cổ, Bộ sạc pin, Pin, Cáp AC, Cáp, Thẻ bảo hành, Hướng dẫn sử dụng', NULL, 'mayanhcannon.jpg\n', 'mayanhcannon1.jpg'),
(2, 2, 1, 'Máy Ảnh Canon EOS 5D Mark IV', '48.000.000', '45.990.000', 'co', '', '', '- Chip xử lý hình ảnh: DIGIC 6+\r\n- Dual Pixel RAW\r\n- Khả năng quay video: 4K\r\n- Chế độ khử flicker\r\n- Tích hợp: kết nối Wi-Fi và NFC\r\n- Thẻ nhớ: SD/ SDHC/ SDXC, CompactFlash Type II\r\n- Tuổi thọ pin (theo CIPA): 900 tấm khi sạc đầy\r\n- Cổng kết nối: USB 3.0, HDMI\r\n- Kích thước: 150.7 x 116.4 x 75.9mm\r\n- Khối lượng: 890g\r\n- Phụ kiện đi kèm: Eyecup, Pin LP-E6N, sạc LC-E6, dây đeo cổ EOS 5D Mark IV, dây AV, dây USB, hướng dẫn sử dụng', 'Canon ra mắt một siêu phẩm mới máy ảnh Canon EOS 5D Mark IV. Chiếc DSLR này đã đáp ứng được sự kỳ vọng mà tất cả mọi người mong đợi với những cải tiến vượt bậc bởi những công nghệ tiên tiến nhất hiện nay đem đến cho người dùng những tiện ích nổi trội. ', 'cn1.jpg\n', 'cn1.1.jpg\n'),
(3, 2, 1, 'CANON RF 15-35MM F/2.8L IS USM MỚI 100% CHÍNH HÃNG', '70.000.000', '65.990.000', '', '', '', 'Định dạng : Ngàm RF / Full-Frame\r\nKhẩu độ : f/2.8 - f/22\r\nGóc nhìn : 110° 30\' - 63°\r\nĐộ phóng đại tối đa : 0.21x\r\nKhoảng cách lấy nét tối thiểu : 28 cm\r\nCấu trúc quang học : 16 thấu kính / 12 nhóm\r\n3 thấu kính phi cầu & 2 thấu kính Ultra-Low Dispersion\r\nTráng phủ Air Sphere & Fluorine\r\nHệ thống Nano USM AF\r\nỔn định hình ảnh quang học\r\nVòng điều khiển tùy chỉnh\r\n9 lá khẩu tròn\r\nĐường kính Filter : φ82mm\r\nKích thước : 88.5 x 126.8 mm\r\nTrọng lượng : 840 Gram', 'Canon RF 15-35mm f/2.8L IS USM thuộc dòng ống kính Zoom góc rộng đa dụng cho dòng máy ảnh Mirroless FullFrame, thiết kế nổi bật với khẩu độ tối đa f/2.8 sáng mở nhanh, cho phép chụp trong nhiều điều kiện ánh sáng khác nhau, đồng thời tăng khả năng kiểm soát độ sâu trường ảnh. Phạm vi tiêu cự rộng phù hợp chụp đa dạng tình huống từ phong cảnh đến tư liệu.', 'cn2.jpg\n', 'cn2.1.jpg'),
(4, 2, 1, 'MÁY ẢNH CANON EOS R100 KÈM KIT RF-S18-45MM', '20.000.800', '18.690.000', '', '', 'co', ' Cảm biến APS-C 1.6x 24.2MP\r\n CPU DIGIC 8\r\n Dual Pixel CMOS AF và Eye Detection AF\r\n Màn hình LCD 3 inch, 1.04 triệu điểm ảnh\r\n Ống ngắm điện tử OLED 0.39 inch, 2.36 triệu điểm ảnh\r\n Khả năng quay video 4K/24p, FullHD/60p, slowmotion FullHD/120p.\r\n Chụp liên tục 6.5fps\r\n Chống rung kỹ thuật số 5 trục\r\n Tốc độ màn trập: 1/4000 - 30 giây\r\n ISO: 100 - 12.800 (mở rộng đến 25.600)\r\n Khe thẻ nhớ SD\r\n Kích thước: 116.3 x 85.5 x 68.8 mm\r\n Trọng lượng: 309 Gram\r\n MicroHDMI, jack 3.5mm, Type-C\r\n Creative Filters cung cấp nhiều hiệu ứng khác nhau\r\n Pin đi kèm LP-E17 lithium-ion7.2 VDC, 1040 mAh', 'Đây là sản phẩm mới nhất của Canon với nhiều tính năng ưu việt và chất lượng hình ảnh tuyệt vời cùng với mức giá vô cùng ưu đãi. Với các tính năng tập trung về quay phim (4K, tốc độ cao), Canon tin rằng sản phẩm sẽ là sự lựa chọn hàng đầu cho những người mới bắt đầu với đam mê nhiếp ảnh và quay phim.', 'cn2.2.jpg\n\n', 'cn2.3.jpg'),
(5, 2, 1, 'MÁY ẢNH CANON POWERSHOT SX740 HS/ĐEN (NHẬP KHẨU)', '15.000.000', '13.990.000', 'co', '', '', '- Cảm biến CMOS 20.3MP\r\n- Bộ xử lý hình ảnh DIGIC 8\r\n- Zoom quang học 40x , chống rung\r\n- Chụp liên tục 10 khung hình / giây\r\n- Quay phim video 4K\r\n- Kết nối Wi-Fi và Bluetooth\r\n- ISO 100-3200 (Mở rộng)\r\n- Trọng lượng: 299 gram \r\n- Pin tương thích: NB-13L\r\n- Phụ kiện đi kèm: Dây đeo cổ tay WS-800, Pin NP-13L, Bộ sạc Pin CB-2LHE, Cáp AC, Sách HDSD, Phiếu bảo hành', NULL, 'cn.2.4.jpg\n\n', 'cn2.5.jpg'),
(6, 2, 1, 'MÁY ẢNH CANON EOS 850D KIT EF-S18-55MM F/4-5.6 IS STM ', '25.000.000', '22.990.000', 'co', '', '', '- Cảm biến CMOS APS-C 24mpx\r\n- Bộ xử lý hình ảnh DIGIC 8\r\n- Hệ thống AF 45 điểm cross-type\r\n- Hỗ trợ tính năng EOS iTR AF\r\n- Tốc độ chụp liên tiếp tối đa đạt tới 7 hình/giây\r\n- Hỗ trợ AF theo mắt ở Live view \r\n- Quay video 4K\r\n- Kết nối không dây Wi-Fi và Bluetooth\r\n- Trọng lượng: 515g\r\n\r\nỐng Kính Canon EF-S18-55 F/4-5.6 IS STM\r\n- Lens hood  EW-60C (60 mm)\r\n- Len cap- Nắp ống kính E-58 (58mm)\r\n- Kích thước bộ lọc 58 (mm)\r\n- Khoảng cách lấy nét tối thiễu 9,8\"\r\n- Stepping Motor, Hệ thống lấy nét trong\r\n- Khoảng lấy nét nhỏ nhất: 0.25m\r\n- Kích thước / Trọng lượng: Ø68.5mm x 84.5mm / 200g', 'EOS 850D là chiếc máy ảnh DSLR phổ thông mới nhất của Canon được trình làng để thay thế cho 800D từng rất thành công của hãng. Máy ảnh với nhiều cải biến về thiết kế lẫn tính năng hứa hẹn sẽ trở thành sự lựa chọn hoàn hảo cho các tay nhiếp ảnh bán chuyên.', 'cn.2.6.jpg\n\n', 'cn2.7.jpg'),
(7, 4, 1, 'MÁY ẢNH NIKON Z6 II + LENS Z 24-70MM F4/S | CHÍNH HÃNG VIC', '55.000.000', '54.990.000', '', '', '', 'Bộ xử lý hình ảnh EXPEED\r\nCảm biến BSI CMOS định dạng FX 24.5MP\r\nChụp liên tiếp 14fps, ISO 60-51200\r\nVideo UHD 4K30', 'Nikon Z6 II là mẫu máy ảnh mirrorless kế nhiệm của Nikon Z6. Giống như Nikon Z6, Nikon Z6 II được thiết kế hoàn toàn bằng hợp kim Magiê tạo độ chắc chắn, bền bỉ mang lại cảm giác thoải mái cho người dùng', 'mk.jpg\n', 'nk.jpg'),
(8, 4, 1, 'MÁY ẢNH NIKON Z9 (BODY ONLY) | CHÍNH HÃNG', '100.000.000', '99.900.000', 'co', '', '', 'Bộ xử lý hình ảnh EXPEED\r\nCảm biến BSI CMOS định dạng FX 24.5MP\r\nChụp liên tiếp 14fps, ISO 60-51200\r\nVideo UHD 4K30', 'Dành cho các nhiếp ảnh gia và nhà làm phim chuyên nghiệp, Nikon Z9 mang đến tốc độ, chất lượng hình ảnh và khả năng kết nối ấn tượng trong một thân máy mirrorless. Cùng với cảm biến mới được phát triển, hiệu suất lấy nét tự động nâng cao và khả năng quay video 8K độ chi tiết cao, Nikon Z 9 xứng đáng là chiếc Flagship thế hệ mới của Nikon', 'nk1.jpg\n', 'nk1.1.jpg'),
(9, 4, 1, 'MÁY ẢNH NIKON D780 KIT AF-S 24-120 F/4 G ED VR', '75.000.000', '71.900.000', '', '', '', '- Cảm biến BSI CMOS FX 24.5MP\r\n- Bộ xử lý hình ảnh EXPEED 6\r\n- ISO: 100 – 51200 (50 – 204800)\r\n- Tốc độ màn trập: 1/8000s – 900s\r\n- Độ phân giải video: 4K30p, Full HD 120p; MP4, H.264\r\n- Kích cỡ: 143.5 x 115.5 x 76 mm\r\nLens 24-120mm F4 G\r\n- Cấu tạo ống kính: 17 thấu kính thuộc 13 nhóm\r\n- Số lá: 9\r\n- Kích thước: Ø84 x 103mm\r\n- Trọng lượng: 670g', NULL, 'nk1.2.jpg\n', 'nk1.3.jpg'),
(10, 4, 1, 'MÁY ẢNH NIKON Z6 II (BODY ONLY) HÀNG XÁCH TAY', '35.000.000', '33.990.000', 'co', '', '', 'Bộ xử lý hình ảnh EXPEED\r\nCảm biến BSI CMOS định dạng FX 24.5MP\r\nChụp liên tiếp 14fps, ISO 60-51200\r\nVideo UHD 4K30', 'Nikon Z6 II là mẫu máy ảnh mirrorless kế nhiệm của Nikon Z6. Giống như Nikon Z6, Nikon Z6 II được thiết kế hoàn toàn bằng hợp kim Magiê tạo độ chắc chắn, bền bỉ mang lại cảm giác thoải mái cho người dùng. Máy ảnh được trang bị màn hình LCD 3.2 inch, 2.1 triệu điểm ảnh kết hợp với các nút bấm thuận tiện trong quá trình sử dụng', 'nk1.4.jpg\r\n', '0'),
(11, 4, 1, 'MÁY ẢNH NIKON Z6 II (BODY ONLY) | CHÍNH HÃNG VIC\r\n', '45.000.000', '41.590.000', '', '', '', 'Bộ xử lý hình ảnh EXPEED\r\nCảm biến BSI CMOS định dạng FX 24.5MP\r\nChụp liên tiếp 14fps, ISO 60-51200\r\nVideo UHD 4K30', 'Nikon Z6 II  là mẫu máy ảnh mirrorless kế nhiệm của Nikon Z6. Giống như Nikon Z6, Nikon Z6 II được thiết kế hoàn toàn bằng hợp kim Magiê tạo độ chắc chắn, bền bỉ mang lại cảm giác thoải mái cho người dùng', 'nk1.5.jpg\n\n', 'nk1.6.jpg'),
(12, 4, 1, 'MÁY ẢNH NIKON D850 KIT AF-S 24-120 F/4 G ED VR', '83.000.000', '80.390.000', '', '', '', '- Bộ cảm biến CMOS FX-Format BMP 45.7MP\r\n- Bộ xử lý hình ảnh EXPEED 5\r\n- Màn hình cảm ứng LCD 3.2 \"2.36m-Dot\r\n- Ghi hình Video 4K UHD ở tốc độ 30 khung hình / giây\r\n- Hệ thống AFF 153 điểm đa điểm CAM 20K\r\n- ISO: 64-25600, mở rộng: 32-102400\r\n- 7 khung hình / giây cho 51 khung hình với AE / AF\r\n- Thời gian trôi đi 8K, Chế độ Digitizer Phủ định\r\n- Bộ cảm biến RGB 180k Pixel, Chế độ Thay Đổi Tiêu điểm\r\n- Phụ kiện đi kèm: Nắp ống kính trước và sau, Nắp Body, Sạc MH-25A, cáp UC-E22 USB 3.0,cáp HDMI/USB, Pin EN-EL15, thẻ bảo hành, hướng dẫn sử dụng', 'Máy ảnh Nikon D850 đánh dấu sự trở lại của Nikon sau một thời gian dài im ắng. Mặc dù được giới thiệu là phiên bản tiếp nối cho D810 trước đây nhưng D850 lại được cải tiến khá mạnh về công nghệ với cảm biến IBS đời mới do chính Nikon sản xuất có thể quay phim 4K mạnh mẽ.', 'nk1.7.jpg\n', 'nk1.8.jpg\n'),
(13, 3, 1, 'MÁY ẢNH FUJIFILM X-T30 MARK II + KIT XF 18-55MM F/2.8-4/ SLIVER', '28.000.000', '25.900.000', 'co', '', '', '- Cảm biến 26.1MP APS-C X-Trans BSI CMOS 4\n- Bộ xử lý X-Processor 4 với CPU Quad\n- Dải ISO: 160 - 12800 (Mở rộng : 80 - 51200)\n- Lấy nét tự động theo pha 425 điểm\n- Chụp liên tiếp 8 fps với màn trập cơ\n- Chụp liên tiếp tốc độ cao blackout-free 30 fps với 16.6MP\n- Quay Video UHD 4K 30fps, F-log Gamma DCI 4K 10bit\n- Kính ngắm điện tử OLED 2,36m-Dot\n- EVF với độ phóng đại 0.62x\n- Màn hình cảm ứng tinh thể lỏng 3.0\" 1.04M điểm ảnh\n- 19 loại hiệu ứng giả lập phim\n- Chế độ SR Auto nâng cao\n- Kết nối Wi-Fi, Bluetooth tích hợp\n- Pin sạc Lithium-ion NP-W126S\n- Kích thước: 118.4 x 82.8 x 46.8 mm\n- Trọng lượng: 378 g (bao gồm pin và thẻ nhớ SD)\n- Trọng lượng: 329 g (chỉ body)', NULL, 'ff.jpg\n\n', 'ff1.jpg'),
(14, 3, 1, 'MÁY ẢNH FUJIFILM X-S20 + LENS XC 15-45MM F/3.5-5.6 (CHÍNH HÃNG)', '39.000.000', '35.990.000', 'co', '', '', 'Cảm biến X-Trans CMOS 4\r\nBộ xử lý hình ảnh X-Processor 5\r\nQuay video 6.2K/30fps, 4K/60fps\r\nỔn định hình ảnh IBIS 5 trục, 7-stops\r\n19 Chế độ giả lập màu phim\r\nKính ngắm 2.36 triệu điểm, phóng đại 0.62x\r\nMàn hình LCD xoay đa góc 3.0 inch, 1.84 triệu điểm\r\nSử dụng pin Fujifilm NP-W235', 'Fujifilm X-S20 được trang bị cảm biến APS-C X-Trans CMOS thế hệ thứ 4, giúp mang lại cho máy ảnh khả năng chụp ảnh độ phân giải cao, sắc nét cùng chi tiết vượt trội. Đặc biệt, cấu trúc X-Trans của cảm biến giúp giảm thiểu tối đa hiện tượng moiré và mang lại màu sắc tự nhiên, trung thực hơn trong các bức ảnh', 'ff1.1.jpg\n\n', 'ff1.2.jpg'),
(15, 3, 1, 'MÁY ẢNH FUJIFILM X-S20 + LENS XF 18-55MM F/2.8-4 (CHÍNH HÃNG)', '45.000.000', '41.990.000', '', 'co', '', 'Cảm biến X-Trans CMOS 4\r\nBộ xử lý hình ảnh X-Processor 5\r\nQuay video 6.2K/30fps, 4K/60fps\r\nỔn định hình ảnh IBIS 5 trục, 7-stops\r\n19 Chế độ giả lập màu phim\r\nKính ngắm 2.36 triệu điểm, phóng đại 0.62x\r\nMàn hình LCD xoay đa góc 3.0 inch, 1.84 triệu điểm\r\nSử dụng pin Fujifilm NP-W23', 'Fujifilm X-S20 được trang bị cảm biến APS-C X-Trans CMOS thế hệ thứ 4, giúp mang lại cho máy ảnh khả năng chụp ảnh độ phân giải cao, sắc nét cùng chi tiết vượt trội. Đặc biệt, cấu trúc X-Trans của cảm biến giúp giảm thiểu tối đa hiện tượng moiré và mang lại màu sắc tự nhiên, trung thực hơn trong các bức ảnh.\r\n\r\n', 'ff1.3.jpg\n', 'ff1.4.jpg\n'),
(16, 3, 1, 'MÁY ẢNH FUJIFILM X-S10 KIT 18-55MM', '37.000.000', '30.990.000', '', 'co', '', 'Máy ảnh Fujifilm X-S10\r\n- Bộ xử lý hình ảnh X-Processor 4\r\n- Cảm biến 26.1MP APS-C X-Trans BSI CMOS 4\r\n- Ổn định hình ảnh 5 trục\r\n- Quay video UHD 4K 30 fps, Full HD 240 fps\r\n\r\nỐng Kính Fujifilm (Fujinon) XF18-55mm F2.8-4 R LM OIS\r\n- Khẩu độ F2.8 - F4\r\n- Phóng đại  0.15x\r\n- Số lượng lá khẩu 7\r\n- Kích thước bộ lọc ø58mm\r\n- Trọng lượng 310g', 'Máy ảnh Fujifilm X-S10 là chiếc máy ảnh Fujifilm tầm trung nhưng được tích hợp đầy đủ tính năng như một máy ảnh chuyên nghiệp. Fujifilm X-S10 sở hữu công nghệ chụp ảnh thông minh và thiết kế được cải tiến dễ dàng thao tác và  sử dụng.', 'ff1.5.jpg\n', 'ff1.6.jpg\n'),
(17, 3, 1, 'MÁY ẢNH FUJIFILM X-E4 + KIT XF 27MM F2.8 MARK II - BẠC', '30.000.000', '25.990.000', '', '', '', 'Máy Ảnh Fujifilm X-E4 - Bạc\n\n- Cảm biến 26.1MP APS-C X-Trans BSI CMOS 4\n- Bộ xử lý hình ảnh X-Processor 4 với Quad CPU\n- Độ phóng đại khung ngắm: 0.62x\n- Tốc độ màn trập: 1/4000s\n- Dải ISO: 160 - 12800 (Mở rộng: 80 - 51200)\n- DCI và UHD 4K60 Video; F-Log Gamma, Full HD ở 240 fps\n- Độ phân giải Video: 3840 x 2160\n- Kính ngắm điện tử OLED 0.39 inch\n- Màn hình cảm ứng LCD 3 inch, 1040000 dots\n- Trọng lượng: 364 g\n\nỐng Kính Fujifilm XF 27mm F2.8 Mark II \n- Phạm vi khẩu độ: F2.8 - F16\n- Góc nhìn: 55°\n- Cấu tạo ống kính: 7 thấu kính thuộc 5 nhóm\n- Khoảng cách lấy nét tối thiểu: 34 cm\n- Độ phóng đại tối đa: 0,1x\n- Có khả năng khoáng tia nước, khoáng bụi\n- Trọng lượng: 84 g', 'Máy ảnh X-E4 giữ được ngoại hình truyền thống, cổ điển của Fujifilm và cực nhỏ gọn. Nắp trên của máy được làm bằng chất liệu hợp kim Magie cứng bền mang đến cảm giác cầm máy chắc chắn hơn. Cũng nhờ đó, máy sở hữu khả năng khoáng tia nước, khoáng bụi bẩn hiệu quả, giúp các nhiếp ảnh gia tự do thao tác máy trong nhiều điều kiện chụp ảnh. Ngoài ra, X-E4 được thiết kế phẳng bề dày chưa tới 3.5 cm và trọng lượng chỉ 364 g trong một con Body giúp người dùng dễ dàng mang đi du lịch mà không tốn quá nhiều diện tích để có thể lưu lại những khoảnh khắc của chuyến đi.', 'ff1.7.jpg\n', 'ff1.8.jpg\n'),
(18, 3, 1, 'MÁY ẢNH FUJIFILM GFX 100', '25.000.000', '23.500.000', 'co', '', '', '- Cảm biến CMOS BSI 43.8 x 32.9mm 102MP\r\n- Bộ xử lý hình ảnh X Processor 4\r\n- EVF OLED 5.76 triệu điểm tháo rời được\r\n- Màn hình LCD cảm ứng, lật, 3.2\" 2.36 triệu điểm\r\n- Video 4K30 DCI; F-Log Gamma & xuất 10 bit\r\n- Ổn định hình ảnh sensor-shift 5 trục\r\n- AF nhận diện pha 2.16 triệu điểm\r\n- ISO 100-12800\r\n- Chụp liên tiếp đến 5 fps\r\n- Tích hợp báng pin\r\n- 2 khe cắm thẻ nhớ SD', 'Fujifilm GFX 100 đã xuất hiện, máy ảnh mirrorless medium format 102 megapixel mà Fujifilm tự tin sẽ làm thay đổi công nghệ và khả năng của máy ảnh kỹ thuật số. Đây là máy ảnh hàng đầu mới nhất của dòng GFX.', 'ff1.9.jpg\n', 'ff2.jpg\n'),
(19, 1, 1, 'MÁY ẢNH SONY ALPHA A1 BODY', '20.000.000', '15.599.000', 'co', '', '', '- Cảm biến Fullframe 50.1 MP Exmor RS BSI CMOS Sensor\r\n- Bộ xử lý hình ảnh BIONZ XR & LSI Front-End\r\n- Dynamic range 15-stop\r\n- ISO: 100-32000 mở rộng lên đến 102400\r\n- Chụp 30 khung hình/giây chế độ AF/AE\r\n- Hệ thống lấy nét theo pha 759 điểm\r\n- Real time Eye AF (Ảnh tĩnh/quay phim/người/động vật)\r\n- Real time tracking\r\n- Quay phim 8K30p Video, 4K 120p Video in 10-Bit\r\n- 4.3K 16-Bit Raw Video Output, S-Cinetone\r\n- Tốc độ đồng bộ flash nhanh nhất thế giới 1/400s\r\n- Màn hình LCD cảm ứng nghiêng\r\n- Chống rung quang học 5,5 trục\r\n- Khe thẻ nhớ kép: CFexpress, SD\r\n- Wi-Fi tốc độ cao, Bluetooth, PC Remote, truyền file FTP, USB.....\r\n- Khả năng chống bụi và chống ẩm\r\n- Pin FZ100\r\n- Kích thước: 128,9 x 96,9 x 69,7 mm\r\n- Trọng lượng: 737 g', 'Với sự cải tiến kết hợp những tính năng nổi bật từ các tiền nhiệm, máy ảnh Sony Alpha A1 vừa ra mắt thực sự trở thành một gã quái vật khổng lồ, cân mọi thể loại thách thức từ chụp ảnh đến quay video 8K chất lượng cao.Sony Alpha A1 còn gây ấn tượng mạnh mẽ khi sở hữu khả năng quay video 8K với 30p.\r\nĐược tích hợp nhiều tính năng chuyên nghiệp nhưng Sony Alpha A1 không quá cồng kềnh, máy vẫn giữ ngoại hình cơ bản của hãng và trọng lượng máy cũng chỉ xấp xỉ 727 g.\r\nAlpha A1 được làm bằng hợp kim magnesium cứng cáp, chống ẩm, chống bụi hiệu quả, đem lại độ bền cao cho máy. Giúp bạn có thể mang máy đến bất cứ đâu để tự do trải nghiệm, khám phá dù là trong điều kiện thời tiết khắc nghiệt.', 'sn1.jpg\n', 'sn1.1.jpg\n'),
(20, 1, 1, 'MÁY ẢNH SONYMÁY ẢNH SONY CYBERSHOT DSC-RX1RM2/ RX1R II ALPHA A1 BODY', '10.000.000', '8.099.000', '', 'co', '', '- Độ phân giải: 42.4 Megapixel\r\n- Cảm biến full frame ExmorR CMOS sensor\r\n- Bộ xử lý hình ảnh: BIONZ X\r\n- Ống kính: Carl Zeiss Sonnar T*, 35mm F2\r\n- Bộ lọc chống răng cưa có thể tùy chỉnh được\r\n- Màn hình LCD 3 inch lật (lên 109 độ, xuống 41 độ)\r\n- Ống ngắm điện tử OLED \r\n- Quay phim full HD 1,920x1,080/50p\r\n- Kết nối Wifi/NFC\r\n- Lấy nét tự động hybrid nhanh,\r\n- Trọng lượng 507 g\r\n- Pin tương thích NP-BX1\r\n- Phụ kiện máy ảnh đi kèm: Pin, Adapter, Dây đeo, cáp USB, Cataloge\r\n ', 'Với việc trang bị cảm biến full-frame, máy ảnh Sony CyberShot DCS-RX1R II có cảm biến mạnh nhất và chất lượng ảnh tốt nhất trong số các máy ảnh du lịch của Sony.', 'sn1.2.jpg\n', 'sn1.3.jpg\n'),
(21, 1, 1, 'MÁY ẢNH SONY ZV-E1 (WHITE, BODY ONLY) | CHÍNH HÃNG', '70.000.000', '52.990.000', 'co', '', '', 'Bộ xử lý hình ảnh BIONIC XR\r\nCảm biến Exmor R CMOS Full-frame 12MP\r\nDải dynamic range 15+ stop\r\nĐược thiết kế cho người sáng tạo nội dung\r\nISO mở rộng 80 - 409.600\r\nMàn hình cảm ứng LCD 3.0 inch\r\nỔn định hình ảnh SteadyShot 5 trục\r\nQuay video UHD 4K 120p / FHD 240p / 10-Bit', 'Sony ZV-E1 là sự kết hợp của máy ảnh và máy quay phim tiện lợi cho các content creator. Sở hữu thiết kế siêu nhỏ gọn, cảm biến Exmor R CMOS 12MP full-frame và bộ xử lý hình ảnh BIONZ XR, quay video chất lượng UHD 4K 120p, dải dynamic range 15+ stop, công nghệ chống rung 5 trục,... người dùng có thể sử dụng chiếc camera mirrorless này để ghi lại những hình ảnh chân thực, sắc nét, màu sắc sống động. ', 'sn1.4.jpg\n', 'sn1.5.jpg\n'),
(22, 1, 1, 'MÁY ẢNH SONY ALPHA A7C KIT SONY FE 28-60MM F4-5.6 (SEL2860', '50.000.000', '46.990.000', 'co', '', '', '- Máy chỉ nặng 509 gam\r\n- Kích thước 124mm x 71,1mm x 59,7mm ( W x H x D )\r\n- Cảm biến Full-frame BSI 24,2 MP\r\n- Chống rung 5 trục – 5 stop\r\n- ISO 100-51200 (mở rộng lên đến 204800)\r\n- 15 stop dynamic range\r\n- 10 fps với AF/AE\r\n- 693 điểm lấy nét chiếm 93% cảm biến\r\n- Real-time EyeAF lấy nét tự động ánh mắt người và động vật\r\n- Real-time tracking\r\n- 4K HDR, S-log2, S-log3,…', '\r\nSony Alpha A7C là máy ảnh Mirrorless Full Frame nhỏ gọn chỉ với 509g Kích thước: 124 x 71 x 60 mm nhưng lại tích hợp đầy đủ tính năng của một chiếc máy ảnh hiện đại, thiết kế nhỏ gọn kiểu dáng đặc biệt sẽ là chiếc máy ảnh ưng ý đối với những tín đồ mê chụp ảnh và thời trang.', 'sn1.6.jpg\n', 'sn1.7.jpg\n'),
(23, 1, 1, 'MÁY ẢNH SONY ALPHA A6600 (ILCE-6600M) KIT 18-135MM OSS (ĐEN)', '44.000.000', '40.990.000', '', 'co', '', '- Cảm biến Exmor CMOS 24.2MP APS-C\r\n- Bộ xử lý hình ảnh BIONZ X\r\n- Video UHD 4K30p với Gamma HLG & S-Log3\r\n- XGA Tru-Finder 2.36m-Dot OLED EVF\r\n- Màn hình cảm ứng nghiêng 180 °\r\n- Ổn định 5 trục SteadyShot \r\n- Chụp lên tới 11 khung hình / giây\r\n- ISO 100-32000\r\n- FOCUS 4D với 425 điểm phát hiện pha\r\n- AF thời gian thực cho Stills và Video\r\n- Phin tương thích : NP-FZ100\r\n- Cổng tai nghe & Mic, Wi-Fi và Bluetooth', 'Sony A6600 Kit 18-135mm OSS (Đen) là phiên bản nâng cấp của chiếc A6500 vốn là flagship của dòng mirrorless cảm biến APS-C của Sony. Vẫn sở hữu cảm biến ảnh 24.2 MP, A6600 Kit 18-135mm OSS (Đen) sở hữu chip xử lý BIONZ X mới có tốc độ nhanh hơn 1,8 lần so với A6500. Sony tiếp tục áp dụng công nghệ AI để cải thiện khả năng lấy nét cho dòng máy ảnh mirrorless với hai tính năng Real-time Tracking AF và Real-time Eye AF từ dòng sản phẩm A6400.', 'sn1.8.jpg\n', 'sn1.9.jpg\n'),
(24, 6, 2, 'Máy quay Sony HXR-NX3', '15.000.000', '13.990.000', '', '', '', '- 03 cảm biến 1/2.8 inch Exmor CMOS\r\n- Tự động lấy nét theo pha\r\n- 1920x1080 đến 60p\r\n- Lens Sony G tiêu cự 4,1 - 82,0 mm zoom quang 20x\r\n- Zoom hình ảnh 40x ; Khẩu độ f/1.6-f/11\r\n- Khoảng cách lấy nét tối thiểu : 10mm(Wide) ; 800mm (Tele)\r\n- Filter : ø72mm\r\n- Video : HD, SD, MP4\r\n- Thời lượng : 450 phút\r\n- Kính ngắm 0.45 inch, tỷ lệ 16:9\r\n- Màn hình LCD 3.5 inch 921,000 Diot\r\n- 4 Nút gạt ND (1: Clear, 2: 1/4ND, 3: 1/16ND, 4:1/64 ND)\r\n- Khả năng ghi hình với độ sáng tối thiểu là 0.6 Lux\r\n- Kết nối : Composite BNC, NTSC, USB Type-A, HDMI\r\n- 02 cổng Audio XLR 3-pin, RCA, 3.5mm, jack DC\r\n- Đèn LED trợ sáng 5.500K 800 Lx\r\n- Hỗ trợ Wi-Fi 2.4 GHz\r\n- 2 khe cắm thẻ SD, các chế độ chuyển tiếp và mô phỏng\r\n- Pin F970 quay 410 phút (không Led)\r\n- Kích thước : 174.5 * 193.0 * 393.0 mm\r\n- Trọng lượng : 2210 Gram', NULL, 'sony-nx3.jpg', 'hxr-nx80-24h-1.jpg'),
(25, 6, 2, 'Sony FX30 + XLR Handle Unit', '57.000.000', '54.990.000', '', '', '', 'Định dạng : APS-C E-Mount\r\nCảm biến CMOS APS-C BSI 26.1MP, Chip Exmor R\r\nUHD 4K 120 | 1080p 240\r\n10-Bit 4:2:2 XAVC S-I,16-Bit Raw Output\r\nBảng tìm kiếm màu sắc LUTs & Hỗ trợ đồng bộ hóa mã thời gian\r\nLấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\r\nISO : 100 - 32,000 (Mở rộng 50 - 102,400)\r\nTốc độ màn trập : 1/8000\r\nChống rung 5 trục trên cảm biến\r\nMicrô tích hợp âm thanh nổi\r\n495 điểm lấy nét tự động theo pha\r\nMàn hình LCD cảm ứng 3inch 2,360,000 Diot\r\nTích hợp Wi-Fi, Bluetooth\r\nKhe cắm thẻ nhớ kép CFexpress Type A / SD\r\nPin sạc FZ-100 ILME-FX30\r\nKích thước : 129.7 * 77.8 * 84.5 mm\r\nTrọng lượng : 562 Gram', NULL, 'sn1.jpg', 'sn1.1.jpg'),
(26, 6, 2, 'Sony FX30', '45.000.000', '43.990.000', '', 'co', '', 'Định dạng : APS-C E-Mount\r\nCảm biến CMOS APS-C BSI 26.1MP, Chip Exmor R\r\nUHD 4K 120 | 1080p 240\r\n10-Bit 4:2:2 XAVC S-I,16-Bit Raw Output\r\nBảng tìm kiếm màu sắc LUTs & Hỗ trợ đồng bộ hóa mã thời gian\r\nLấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\r\nISO : 100 - 32,000 (Mở rộng 50 - 102,400)\r\nTốc độ màn trập : 1/8000\r\nChống rung 5 trục trên cảm biến\r\nMicrô tích hợp âm thanh nổi\r\n495 điểm lấy nét tự động theo pha\r\nMàn hình LCD cảm ứng 3inch 2,360,000 Diot\r\nTích hợp Wi-Fi, Bluetooth\r\nKhe cắm thẻ nhớ kép CFexpress Type A / SD\r\nPin sạc FZ-100 ILME-FX30\r\nKích thước : 129.7 * 77.8 * 84.5 mm\r\nTrọng lượng : 562 Gram', NULL, 'sn2.jpg', 'sn2.1.jpg'),
(27, 6, 2, 'Sony 4K HDR FDR-AX700', '47.000.000', '42.900.000', '', '', '', 'Cảm biến: CMOS Exmor RS 1.0\", 14.2MP\nỐng kính Zeiss Vario Sonnar T *\nZoom quang học : 12x\nQuay video 4K HDR\nMàn hình LCD cảm ứng 3.5\"\nPhạm vi lấy nét tự động rộng\nPhản hồi lấy nét tự động nhanh\nTự động lấy nét theo pha 273 điểm\nChống rung quang học SteadyShot\nTốc độ ghi 120 fps\nKích thước : 116 x 89.5 x 196.5 mm\nTrọng lượng : 935Gram', NULL, 'sn3.jpg', 'sn3.1.jpg'),
(28, 6, 2, 'Máy quay Sony HXR-NX80', '60.000.000', '56.990.000', '', 'co', '', '- Cảm biến hình ảnh 1 inch Type Exmor RS CMOS\r\n- Tự động lấy nét theo pha\r\n- Lens Zeiss zoom 12x, f/2.8 - f/4.5\r\n- 4 Nút gạt ND (1: Clear, 2: 1/4ND, 3: 1/16ND, 4:1/64 ND)\r\n- Hỗ trợ chuẩn nén XAVC S 4K av2 AVCHD\r\n- 4K HDR với Hybrid Log-Gamma (HLG)\r\n- Khả năng ghi hình với độ sáng tối thiểu là 1.7 Lux\r\n- Ghi hình Slow & Quick Motion : 1080p (50i) 1-100 fps; 1080p (60i) 1-120fps; 2160p (50i) 1-25fps; 2160p (60i) 1-30\r\n- Các ngõ ra : Composite, USB, HDMI\r\n- Các ngõ vào : Audio XLR 5-pin, DC\r\n- Ghi hình 4K (3840x2160) ở tốc độ 100Mbps\r\n- Hỗ trợ Wi-Fi / Ustream 2,4 GHz\r\n- 2 khe cắm thẻ SD, các chế độ chuyển tiếp và mô phỏng\r\n- Hỗ trợ S-Log3/S- Gamut3\r\n- Trọng lượng : 1,3Kg', NULL, 'sn4.jpg', 'sn4.1.jpg'),
(29, 7, 2, 'Máy quay Canon EOS XA35', '40.000.000', '36.990.000', '', '', '', 'Cảm biến HD CMOS Pro\nKính ngắm điện tử OLED cảm ứng 3.5\"\nQuay phim Full HD 1080p lên đến 59.94p\nChế độ Wide DR Gamma 600%\nChế độ Highlight Priority\nCổng âm thanh đầu vào XLR 2x \nCổng xuất HD/SD-SDI\nKhe thẻ nhớ Dual SD/SDHC/SDXC\nTích hợp kết nối Wi-Fi với FTP\nỐng kính zoom quang học 20x', NULL, 'cn1.jpg', 'cn1.1.jpg'),
(30, 7, 2, 'Máy Quay Canon XA55', '65.000.000', '62.500.000', '', '', '', '- 8.29MP, cảm biến 1\" CMOS\r\n- Quay video lên đến UHD 4K30\r\n- Cổng Mini-HDMI và 3G-SDI\r\n- Tích hợp ống kính quang học zoom 15x\r\n- 02 cổng âm thanh XLR và Mic/Line Audio\r\n- Chống rung quang học 5 trục\r\n- 02 khe thẻ SD có thể ghi song song hoặc liên tiếp\r\n- Chip xử lý hình ảnh DIG!C DV 6\r\n- Màn hình cảm ứng xoay lật LCD 3\", ống ngắm dịch chuyển', NULL, 'cn3.jpg', 'cn3.1.jpg'),
(31, 7, 2, 'Máy quay Canon EOS C100 Mark II', '72.000.000', '69.890.000', '', 'co', '', 'Hỗ trợ tất cả các dải ống kính EF\r\nCảm biến CMOS 8.3MP Super 35mm;\r\nCông nghệ lấy nét thần tốc Dual Pixel Auto Focus\r\nHỗ trợ lấy nét phát hiện khuôn mặt\r\nĐộ nhạy cao, độ nhiễu thấp\r\nCanon Log và dải gamma DR rộng\r\nTính năng kết nối không dây tích hợp sẵn\r\nHỗ trợ GPS qua GP-E2\r\nTín hiệu HDMI không nén rõ nét', NULL, 'cn2.jpg', 'cn2.1.jpg'),
(32, 7, 2, 'Máy Quay Canon XF200', '95.000.000', '92.000.000', '', '', '', '- Ống zoom quang học góc rộng 20x, f18\r\n- Ghi âm 4 kênh, 2 đầu vào XLR\r\n- Chốt xoay tối ưu\r\n- Loại cảm biến: CMOS Pro\r\n- Chuẩn video: MXF / MP4\r\n- Chế độ quay: HD\r\n- Kết nối: HDMI, USB', NULL, 'cn4.jpg', 'cn4.1.jpg'),
(33, 8, 2, 'GoPro HERO 12 Black', '15.000.000', '10.190.000', '', '', '', 'Camera cảm biến CMOS 32MP 1/1.9 inch 8K60/4K240\r\nBộ xử lý chip GP2 thế hệ mới\r\nHỗ trợ chụp ảnh trong điều kiện thiếu sáng\r\nMàn hình cảm ứng LCD trước 2,27 inch, màn hình sau\r\nMàn hình phụ Live-View LCD 1,4 inch\r\nVideo 5.3K60/4K120/2.7K240, ảnh 32MP\r\nQuay Slo Motion 2704 x 1520p tại 240 fps\r\nTốc độ màn trập: 1/25 - 1/2000 giây\r\nKhẩu độ Max: f/2.8\r\nISO: 100 - 6400\r\nChụp liên tục: 25 ảnh/1 giây\r\nPin sạc 1720 mAh\r\nChống rung HyperSmooth 6.0, Horizon Lock/Horizon Leveling\r\nTự động nhận diện khuôn mặt công nghệ AI\r\nSử dụng thuật toán khử nhiễu 3DNR\r\nLặn sâu 10 mét\r\nTích hợp Wi-Fi & Bluetooth 4.1 LE, GPS, Micro thu âm\r\nKhe cắm thẻ nhớ Micro SD\r\nĐầu vào: USB Type-C\r\nKích thước: 71,8 * 50.8 * 33,6 mm\r\nTrọng lượng: 153 Gram', NULL, 'gv1.jpg', 'gv1.1.jpg'),
(34, 8, 2, 'GoPro HERO 11 Black', '10.000.000', '8.990.000', '', '', '', 'Camera cảm biến CMOS 27MP 1/1.9 inch\r\nBộ xử lý chip GP2 thế hệ mới\r\nHỗ trợ chụp ảnh trong điều kiện thiếu sáng\r\nMàn hình cảm ứng LCD trước 2,27 inch, màn hình sau\r\nMàn hình phụ Live-View LCD 1,4 inch\r\nVideo 5.3K60 / 4K120 / 2.7K240, ảnh 23MP\r\nQuay Slo Motion 2704 x 1520p tại 240 fps\r\nTốc độ màn trập : 1/25 - 1/2000 giây\r\nKhẩu độ Max : f/2.8\r\nISO : 100 - 6400\r\nChụp liên tục : 25 ảnh / 1 giây\r\nPin sạc 1720 mAh\r\nChống rung HyperSmooth 5.0, Horizon Lock / Horizon Leveling\r\nTự động nhận diện khuôn mặt\r\nSử dụng thuật toán khử nhiễu 3DNR\r\nLặn sâu 10 met\r\nTích hợp Wi-Fi & Bluetooth, Micro thu âm\r\nKhe cắm thẻ nhớ Micro SD\r\nĐầu vào : USB Type-C\r\nKích thước : 71,8 * 50.8 * 33,6 mm\r\nTrọng lượng : 153 Gram', NULL, 'gv2.png', 'gv2.1.jpg'),
(35, 8, 2, 'GoPro HERO 10 Black', '15.000.000', '12.490.000', '', '', '', 'Camera cảm biến CMOS 23MP\r\nBộ xử lý chip GP2 thế hệ mới\r\nHỗ trợ chụp ảnh trong điều kiện thiếu sáng\r\nMàn hình cảm ứng LCD phía trước 2,27 inch\r\nMàn hình phụ Live-View LCD 1,4 inch\r\nVideo 5.3K60 / 4K120 / 2.7K240, ảnh 23MP\r\nChống rung HyperSmooth 4.0\r\nLặn sâu 10 met\r\nThời lượng pin lớn\r\nMicro tích hợp\r\nKhe cắm thẻ nhớ Micro SD\r\nTốc độ màn trập : 1/25 - 1/2000 giây\r\nISO : 100 - 6400\r\nChụp liên tục : 25 ảnh / 1 giây\r\nPin sạc 1720 mAh\r\nKích thước : 71,0 * 55,0 * 33,6 mm\r\nTrọng lượng : 158 Gram', NULL, 'gv3.jpg', 'gv3.1.jpg'),
(36, 8, 2, 'GoPro HERO 9 Black', '11.000.000', '7.490.000', '', '', '', 'Màn hình cảm ứng đủ màu\r\nChống rung HyperSmooth\r\nĐiều khiển giọng nói\r\nQuay video 5K\r\nCảm biến : 1-Chip CMOS 20MP\r\nChụp liên tục 30 ảnh / giây, SuperPhoto HDR\r\nISO : 100 - 6400 (Auto)\r\nGPS và cảm biến chuyển động\r\nTùy chọn ống kính được cải thiện\r\nCó màn hình cạnh\r\nThiết kế housing tùy chọn và lắp đặt các phụ kiện mới\r\nKích thước : 62.3 * 44.9 * 33mm\r\nTrọng lượng : 116 Gram', NULL, 'gv4.jpg', 'gv4.1.jpg'),
(37, 9, 2, 'Blackmagic Pocket Cinema Camera 6K Pro', '10.000.000', '7.000.000', '', '', '', '\r\n- Tương thích với Canon EF Mount\r\n- Cảm biến Super35 HDR, thế hệ Gen 5\r\n- Đầu vào XLR kép, Canon Active EF Mount\r\n- Ghi 6K 6144 x 3456 lên đến 50 khung hình / giây\r\n- Dual Native 400 & 3200 ISO đến 25.600\r\n- Màn hình LCD HDR nghiêng, độ sáng 1500 cd/m²\r\n- Ghi lên đến 120 khung hình / giây Windowed HD\r\n- Dải động 13-Stop, Hỗ trợ lấy nét tự động\r\n- Ghi USB Type-C, Hỗ trợ 3D LUT\r\n- Khe cắm thẻ CFast 2.0 & SD / UHS-II\r\n- Pin NP-F570, Bộ lọc ND tích hợp\r\n- Kích thước :  179.83 * 112.01 * 122.94 mm\r\n- Trọng lượng : 1238 Gram', NULL, 'bl1.jpg', 'bl1.1.jpg'),
(38, 9, 2, 'Blackmagic Design Cinema 6K', '10.000.000', '9.000.000', '', '', '', 'Định dạng : L-Mount FullFrame CMOS 24.6 MP 36 * 24 mm\r\nISO : 400 - 3200 (Mở rộng : 100 - 25.600)\r\nKhe thẻ nhớ CF Express Type B/SD UHS-II\r\nMàn hình LCD nghiêng\r\nCảm biến HDR Super35\r\nKhoa học màu thế hệ 5\r\nĐầu vào XLR kép\r\nCanon Active EF Mount\r\nPin NP-F570\r\nGhi 6K 6144 x 3456 lên đến 50 khung hình/giây\r\nDual Native 400 & 3200 ISO đến 25.600\r\nKhe cắm thẻ CFast 2.0 & SD / UHS-II\r\nGhi lên đến 120 khung hình / giây Windowed HD\r\nGhi USB Type-C, Hỗ trợ 3D LUT\r\nDải động 13-Stop, Hỗ trợ lấy nét tự động\r\nKích thước: 179.8 * 94 * 122 mm\r\nTrọng lượng: 1200 Gram', NULL, 'bl2.jpg', 'bl2.1.jpg'),
(39, 9, 2, 'Blackmagic Pocket Cinema Camera 4K', '10.000.000', '8.000.000', '', '', '', 'Cảm biến 4/3 HDR với độ phân giải 4096 x 2160\r\nTương thích với các ống kính Micro Four Thirds cao cấp\r\nDynamic range 13 stop, cho phép ghi hình ảnh chất lượng điện ảnh.\r\nISO tối đa 25600\r\nVỏ ngoài làm bằng vật liệu composite siêu bền, siêu nhẹ.\r\nCổng USB-C mở rộng cho phép ghi nội dung trực tiếp lên ổ cứng hoặc cấp nguồn\r\nHỗ trợ các định dạng file tương thích với các NLE phổ biến, bao gồm 10-bit ProRes và 12-bit RAW.\r\nBán kèm DaVinci Resolve Studio\r\nKích thước: 177.8 x 96.52 x 86.36mm\r\nTrọng lượng: 680.38g', NULL, 'bl3.jpg', 'bl3.1.jpg'),
(40, 10, 2, 'Máy quay DJI Osmo Action 4 Standard Combo', '12.000.000', '9.190.000', '', 'co', '', 'Camera 12MP với cảm biến CMOS 1/1.3 inch\r\nBộ vi xử lý hình ảnh Ambarella H2 image Processor\r\nMàn hình trước: 1,4-inch 323 ppi 320×320\r\nMàn hình sau: 2,25-inch 326 ppi 360×640\r\nĐộ sáng màn hình trước/sau: 750±50 cd/m²\r\nThiết kế hình vuông gọn, nhẹ, tiện đeo lên người khi di chuyển\r\nĐế kết nối từ tính linh hoạt\r\nISO: 100 - 12.800\r\nCamera góc rộng FOV: 155° f/2.8\r\nZoom kỹ thuật số: Photo 4x, Video 2x\r\nVideo, Slow Motion, Timelapse: 4K/120fps, 2.7K, 1080\r\nLặn sâu 18m (Không có vỏ), 60m (có vỏ)\r\nChế độ chống rung RockSteady 3.0 và HorizonBalancing\r\n3 Microphones; Stereo Recording, Loa tích hợp\r\nHỗ trợ thẻ nhớ MicroSD (Max. 256GB)\r\nPin LiPo 1S 1770mAh 5Wh 7.7V dùng được 160 phút\r\nKết nối Wifi, Bluetooth, App DJI Mimo\r\nTrình chỉnh sửa AI\r\nKích thước: 70.5 * 44.2 * 32.8 mm\r\nTrọng lượng: 145 Gram', NULL, 'dj1.jpeg', 'dj1.1.jpeg'),
(41, 10, 2, 'DJI Osmo Pocket 2 Combo', '10.000.000', '9.500.000', '', '', '', 'ActiveTrack 3.0\r\nChụp ảnh chất lượng cao 64MP\r\nHệ thống âm thanh DJI Matrix Stereo\r\nKhởi động nhanh với Fast Wake\r\nĐộ Phân Giải Camera : 64 MP\r\nCảm Biến : 1/1.7\"\r\nKhẩu Độ Lớn Nhất của Lens : f/1.8\r\nGóc Nhìn : 93°\r\nĐộ Phân Giải Video : 4K Ultra HD: 3840×2160, 2.7K: 2720×1530, FHD: 1920×1080\r\nMàn Hình : LCD cảm ứng\r\nKích Thước Màn Hình : 1.08\"\r\nISO Ảnh : 100 - 6400\r\nISO Video : 100 - 6400\r\nChế Độ Chụp : HDR, Panorama, Self-Portrait, Time-Lapse Movie\r\nTốc Độ Màn Trập : 8 - 1/8000s\r\nChống Rung 3 trục\r\nTích Hợp 4 mic\r\nKết nối với Smartphone như màn hình hiển thị\r\nĐiều khiển Wi-Fi và Bluetooth tùy chọn\r\nThời Gian Sạc : 73 phút\r\nKích Thước : 124.7 × 38.1 × 30 mm\r\nTrọng lượng : 117Gram', NULL, 'dj2.jpg', 'dj2.1.jpg'),
(42, 10, 2, 'Máy quay DJI Osmo Action 4 Adventure Combo', '15.000.000', '11.690.000', '', '', '', 'Camera 12MP với cảm biến CMOS 1/1.3 inch\r\nBộ vi xử lý hình ảnh Ambarella H2 image Processor\r\nMàn hình cảm ứng trước 2.25 inch 350 ppi; màn hình sau 1.4 inch\r\nThiết kế hình vuông gọn, nhẹ, tiện đeo lên người khi di chuyển\r\nĐế kết nối từ tính linh hoạt\r\nISO: 100 - 12.800\r\nCamera góc rộng FOV : 155° f/2.8\r\nZoom kỹ thuật số: Photo 4x, Video 2x\r\nVideo, Slow Motion, Timelapse: 4K/120fps, 2.7K, 1080\r\nLặn sâu 18m (Không có vỏ), 60m (có vỏ)\r\nChế độ chống rung RockSteady 3.0 và HorizonBalancing\r\n3 Microphones; Stereo Recording, Loa tích hợp\r\nHỗ trợ thẻ nhớ MicroSD (Max. 256GB)\r\nPin LiPo 1S 1300mAh 5Wh 7.7V dùng được 160 phút\r\nKết nối Wifi, Bluetooth, App DJI Mimo\r\nTrình chỉnh sửa AI\r\nKích thước: 70.5 * 44.2 * 32.8 mm\r\nTrọng lượng: 145 Gram', NULL, 'dj3.jpeg', 'dj3.1.jpeg'),
(43, 18, 4, 'Godox ML150II Macro Ring Flash Light', '2.000.000', '1.900.000', '', '', '', 'Thời lượng flash: 1/200 đến 1/5000 giây\r\nThời gian tái chế: Xấp xỉ 0,1 đến 2 giây\r\nNhiệt độ màu: 5800K\r\nDung lượng pin: 4 x AA\r\nTương thích: Filter 49mm/52mm/55mm/58mm/62mm/67mm/72mm/77mm (thông qua Vòng chuyển đổi đi kèm)\r\nKích thước vòng: 132 * 132 * 32 mm\r\nKích thước bộ điều khiển: 116 * 71 * 48 mm\r\nTrọng lượng: 420 Gram', NULL, 'fl1.jpg', 'fl1.1.jpg'),
(44, 18, 4, 'Trigger Godox Xpro-S tích hợp TTL', '3.000.000', '1.390.000', '', '', '', '\r\nSử dụng cho Sony\r\nMàn hình LCD hiển thị 5 nhóm.\r\n5 nút điều khiển riêng cho từng nhóm.\r\nĐồng bộ hệ thống Radio Godox 2.4GHz.\r\nTính năng HSS đồng bộ với máy ảnh 1/8000.\r\nGiao diện màn hình LCD lớn dể dàng thiết lập.\r\nHỗ trợ phần mềm USB type C và kích hoạt không dây bằng cáp đồng bộ 2.5mm\r\nĐiều chỉnh công suất riêng cho từng nhóm', NULL, 'fl2.jpg', 'fl2.1.jpg'),
(45, 18, 4, 'Adapter Flash CANON AD-E1 cho Canon R50 / R10 / R7 / R8 / R6m2 / R3', '2.000.000', '1.490.000', '', 'co', '', 'Hàng Chính hãng thương hiệu Canon\r\nChuyên nghiệp, Tiện lợi, An toàn\r\nDùng cho đèn flash không thể tiếp xúc trực tiếp với Máy ảnh\r\nKết nối nhanh chóng với máy ảnh để đồng bộ Flash rời\r\nThiết kế nhỏ gọn, nhẹ, ngoại hình đẹp mắt\r\nHiệu quả hoạt động cao\r\nLẫy gài chắc chắn\r\nTiện lợi cho các nhiếp ảnh gia\r\nSử dụng cho các dòng máy : Canon R50, R10, R7, R8, R6 Mark II, R3.....\r\nKích thước : 38,9 * 31,2 * 38,4 mm\r\nTrọng lượng : 41,1 Gram', NULL, 'fl3.jpg', 'fl3.1.jpg'),
(46, 21, 4, 'Túi máy ảnh Camera Bags Designer Alpha 5000', '1.000.000', ' 850.000', '', 'Chất liệu : Vải poly chống thấm Sức chứa : 1 Body DSLR hoặc Mirrorless, 2 ống kính đi kèm, 1 máy tín', '', 'Chất liệu : Vải poly chống thấm\nSức chứa : 1 Body DSLR hoặc Mirrorless, 2 ống kính đi kèm, 1 máy tính bằng, và các phụ kiện khác\nThiết kế túi dạng bao thư\nKích thước : 330 * 190 * 170 mm\nTải trọng : 8Kg\nMàu sắc : Đen, Xám', NULL, 'tma.jpg', 'tma1.1.jpg'),
(47, 20, 4, 'Bộ 2 pin + 1 Sạc KingMa NB-13L cho Canon G7X2, G7X3, G5X, G9X, G9X2', '1.000.000', '890.000', '', 'co', '', 'Dung lượng: 1010mAh\r\nLoại pin: Lithium-ion\r\nTương thích: Pin NB-13L cho Canon G7X2, G7X3, G5X, G9X, G9X2,...\r\nĐiện thế: 3.6V\r\nInput: 5V 2.1A\r\nOutput: 500mA * 2 / 700mA * 1\r\nThiết kế nhỏ gọn, dễ mang theo\r\nAn toàn, dễ dàng sử dụng, lượng pin sử dụng lâu\r\nKích thước: 42 * 29.6 * 9.6 mm\r\nTrọng lượng: 23 Gram\r\nPin thay thế tương thích các dòng G7X2, G7X3, G5X, G9X, G9X2, SX720HS, SX620, SX730, G1X3, G1, Mark Ⅱ, Mark Ⅲ, G7X,...', NULL, 'ps1.jpg', 'ps1.1.jpg'),
(48, 19, 4, 'Thẻ nhớ C-Fast Exascend Archon 512Gb 560Mb', '13.000.000', '11.830.000', '', '', '', 'Sản phẩm mới 100%, nguyên hộp\nChuyên dụng cho Máy ảnh, Máy quay phim\nLoại thẻ : SD Card\nDung lượng : 512Gb\nDòng sản phẩm : C-Fast Exascend Archon\nTốc độ đọc : 560Mb/s\nTốc độ ghi : 500mb/s\nThiết kế cao cấp, bền bỉ\nTốc độ truyền dữ liệu cực nhanh và ổn định\nHỗ trợ chế độ chụp liên tiếp và quay Video Full HD, đáp ứng chuẩn SDMI\nDung lượng lưu trữ thoải mái    ', NULL, 'tn2.jpg', 'tn2.1.jpg'),
(49, 19, 4, 'Thẻ nhớ C-Fast Exascend Archon 1TB 560Mb', '23.000.000', '19.990.000', '', '', '', '\r\nSản phẩm mới 100%, nguyên hộp\r\nChuyên dụng cho Máy ảnh, Máy quay phim\r\nLoại thẻ : SD Card\r\nDung lượng : 1TB\r\nDòng sản phẩm : C-Fast Exascend Archon\r\nTốc độ đọc : 560Mb/s\r\nTốc độ ghi : 500mb/s\r\nThiết kế cao cấp, bền bỉ\r\nTốc độ truyền dữ liệu cực nhanh và ổn định\r\nHỗ trợ chế độ chụp liên tiếp và quay Video Full HD, đáp ứng chuẩn SDMI\r\nDung lượng lưu trữ thoải mái', NULL, 'tn1.jpg', 'tn1.1.jpg'),
(50, 19, 4, '\r\nThẻ nhớ CF Express Type-B 2TB 1800Mb Exascend Essential', '22.000.000', '19.170.000', '', '', 'co', 'Sản phẩm mới 100%, nguyên hộp\r\nChuyên dụng cho Máy ảnh, Máy quay phim\r\nLoại thẻ : SD Card\r\nDung lượng : 2TB\r\nDòng sản phẩm : CF Express Type B\r\nTốc độ đọc : 1800Mb/s\r\nTốc độ ghi : 1700mb/s\r\nThiết kế cao cấp, bền bỉ\r\nTốc độ truyền dữ liệu cực nhanh và ổn định\r\nHỗ trợ chế độ chụp liên tiếp và quay Video Full HD, đáp ứng chuẩn SDMI\r\nDung lượng lưu trữ thoải mái', NULL, 'tn3.jpg', 'tn3.1.jpg'),
(51, 11, 3, 'ỐNG KÍNH SONY 18-200MM F3.5-6.3 (SEL18200LE)', '15.000.000', '10.990.000', '', '', '', 'Ống Kính Sony 18-200mm F3.5-6.3\r\n- 18-200mm F3.5 – 6.3 OSS\r\n- Tiêu cự quy chiếu lên cảm biến fullframe: 27-300mm\r\n- Thành phần kính: 17 lớp kính – 13 nhóm\r\n- Góc nhìn: 76 độ - 8 độ\r\n- Số lá khẩu: 7 lá\r\n- Vùng khẩu độ: 3.5 – 22\r\n- Khoảng cách lấy nét tối thiểu: 0.5m\r\n- Độ phóng đại: 0.27x\r\n- Đường kính ống kính: 62mm\r\n- Kích thước: 68mm x 97.1mm\r\n- Trọng lượng: 460gram\r\n- Đi kèm: Cáp trước + sau + Loa che nắng\r\n- Bảo Hành: 1 năm ', 'Ống kính Sony E 18-200mm F/3.5-6.3 OSS là ống kính zoom đa dụng sở hữu dải tiêu cự từ góc rộng cho tới tele cho khả năng chụp ảnh đa dạng từ phong cảnh cho tới chân dung hay động vật hoang dã. Tương thích với máy ảnh Sony E-muont cảm biến APS-C hay máy quay phim, ống kính náy được xem là giai pháp hữu hiệu cho những người không muốn thay thế ống kính trong suốt quá trình chụp.', 'oksn.jpg', 'oksn1.jpg'),
(52, 11, 3, 'ỐNG KÍNH SONY E 55-210MM F4.5-6.3 OSS (SEL55210) BẠC', '10.000.000', '6.990.000', '', '', '', 'Ống kính Sony E 55-210mm F4.5-6.3 OSS\r\n- Khẩu độ F4.5-6.3\r\n- Phóng đại  0.23x\r\n- Chống rung quang học\r\n- Số lượng lá khẩu 7\r\n- Khoảng cách lấy nét gần nhất 1m\r\n- Kích thước bộ lọc ø49mm\r\n- Hood tương thích ALC-SH115\r\n- Trọng lượng 345g\r\n- Dành cho máy ảnh định dạng APS-C\r\n', 'Ống kính Sony E 55-210mm F4.5-6.3 OSS là ống kính tele zoom được thiết kế đặc biệt dành cho các máy ảnh Sony có cảm biến APS-C, nơi mà nó cung cấp phạm vi tiêu cự từ 82.5-315mm rất phù hợp để chụp chân dung, thể thao hay động vật hoang dã. Với tính năng chống rung đặc biệt được Sony trang bị, ống kính này sẽ đem lại những hình ảnh tuyetj vời mà bạn luôn muốn lưu giữ.', 'oksn2.jpg', 'oksn2.1.jpg'),
(53, 11, 3, 'ỐNG KÍNH SONY SEL 30MM MACRO F/3.5 (SEL30M35)', '10.000.000', '6.499.000', '', '', '', 'Ống Kính Sony SEL 30mm Macro F3.5\r\n- Khoảng cách lấy nét cực tiểu 0,095 m\r\n- Hệ số độ phóng đại cực đại 1.0x\r\n- Đường kính của kính lọc 49mm\r\n- Trọng lượng 138 g\r\n- Ống kính E-mount/dành cho máy ảnh APS-C\r\n', 'Ống kính Sony SEL 300mm Macro F3.5 là ống kính macro được thiết kế đặc biệt dành cho những người yêu thích thể loại chụp macro. Sử dụng trên các máy ảnh Sony không gương lật sử dụng cảm biến APS-C, ống kính này cung cấp một tiêu cự tương đương 45mm trên cảm biến full frame gần với góc nhìn của mắt người cho khả năng quan sát chân thực.', 'oksn3.jpg', 'oksn3.1.jpg'),
(54, 12, 3, 'ỐNG KÍNH CANON RF 70-200MM F2.8 L IS USM', '100.000.000', '82.000.000', '', 'co', '', 'Ống Kính Canon RF 70-200mm F2.8L IS USM\r\n- Tiêu cự: 70-200mm\r\n- Khẩu độ: f/2.8\r\n- Dùng cho máy ảnh mirrorless full frame ngàm RF Canon\r\n- Kích thước: 88.8 x 199 mm\r\n- Trọng lượng: 1490Gr\r\n\r\n', NULL, 'okcn1.jpg', 'okcn1.1.jpg'),
(55, 12, 3, 'ỐNG KÍNH CANON RF24-105MM F4 L IS USM', '38.000.000', '36.990.000', '', '', '', 'Ống Kính Canon RF 24-105MM F4 L IS USM\r\n- RF-Mount Lens / định dạng full-frame\r\n- Khẩu độ: f / 4 đến f / 22\r\n- Hệ thống Nano USM AF\r\n- Ổn định hình ảnh quang học\r\n- Vòng điều khiển tùy chỉnh\r\n- Khoảng cách chụp tối thiểu: 0,45m\r\n- Độ phóng đại: 0,24X\r\n- Số lượng lá khẩu 9\r\n- Trọng lượng: 725g\r\n', NULL, 'okcn2.jpg', 'okcn2.1.jpg'),
(56, 13, 3, 'FUJIFILM XF 10-24MM F/4 MARK II', '25.000.000', '22.000.000', '', '', '', 'Ngàm ống kính: FUJIFILM X\r\nCấu trúc ống kính: 14 thấu kính chia làm 10 nhóm, 4 thấu kính phi cầu, 4 thấu kính tán xạ thấp\r\nTiêu cự: 10-24mm (tương đương 15-36mm trên khổ 35mm)\r\nGóc nhìn: 110-61.2°\r\nKhẩu độ lớn nhất: F4\r\nKhẩu độ nhỏ nhất: F22\r\nKhoảng cách lấy nét tối thiểu: 24cm\r\nĐộ phóng đại tối đa: 0.16x\r\nKích thước: ø77.6mm x 87mm\r\nTrọng lượng: 385gr\r\nFilter: ø72mm\r\n', 'TỔNG QUAN FUJIFILM XF 10-24MM F/4 MARK II\r\nGhi lại thế giới theo góc nhìn rộng lớn hơn.      Fujinon XF10-24mmF4 R OIS WR mark II mới không chỉ hỗ trợ nhiếp ảnh gia sáng tạo những tuyệt phẩm khắc họa được nét đẹp trong từng khoảnh khắc, mà còn giúp truyền tải những câu chuyện hùng vĩ của cảnh vật xung quanh.  \r\n\r\n- Sở hữu vòng khẩu độ với thang điểm f-stop và khóa vị trí tự động.\r\n- Trang bị khả năng chống bụi và chống ẩm, có thể hoạt động ở nhiệt độ thấp tới -10 độ C.\r\n- Trang bị cảm biến con quay hồi chuyển mới giúp cải thiện khả năng ổn định hình ảnh lên đến 3.5 stops.\r\n- Thiết kế cải tiến nhỏ gọn và phong cách hơn', 'okfj1.jpg', 'okfj1.1.jpg'),
(57, 13, 3, 'ỐNG KÍNH FUJIFILM (FUJINON) XF 35MM F1.4 R', '13.000.000', '10.600.000', '', 'co', '', 'Ống Kính Fujifilm (Fujinon) XF 35mm F1.4 R\r\n- Khẩu độ F1.4\r\n- Phóng đại  0.17x\r\n- Số lượng lá khẩu 7\r\n- Kích thước bộ lọc ø52mm\r\n- Trọng lượng 187g\r\n', 'Ống kính Xf 35mm F / 1.4 R đã được đón nhận trong cộng đồng nhiếp ảnh khi nó được phát hành . XF 35mm f / 1.4 là một trong những bộ ba của ống kính Fujifilm, ra mắt với máy ảnh X-Pro 1. Cùng với 60mm XF f / 2.4 Macro và 18mm XF f / 2, đó là ống kính lâu đời nhất trong đội hình XF.', 'okfj2.jpg', 'okfj2.1.jpg'),
(58, 14, 3, 'ỐNG KÍNH NIKON AF-S NIKKOR 200-500MM F/5.6E ED VR', '37.000.000', '34.000.000', '', '', '', 'Ống Kính Nikon AF-S NIKKOR  200-500mm f/5.6E ED VR\r\n- Khẩu độ: F5.6\r\n- Phóng đại:  0,22x\r\n- Số lượng lá khẩu: 9\r\n- Khoảng cách lấy nét gần nhất: 2.2m\r\n- Kích thước bộ lọc: ø95mm\r\n- Hood tương thích: HB-71\r\n- Trọng lượng: 2300g\r\n- Dùng cho máy Nikon Full frame', 'Ống kính Nikon AF-S Nikkor 200-500mm F5.6E ED VR là ống kính tele được thiết kế để sử dụng với bộ cảm biến hình ảnh FX, ống kính này cũng tương thích với các cảm biến DX nơi mà nó sẽ cung cấp một phạm vi tương đương tiêu cự 300-750mm dành riêng cho thể loại chụp thể thao hay động vật hoang dã một cách tối ưu nhất.', 'oknk1.jpg', 'oknk1.1.jpg'),
(59, 15, 3, 'Ống Kính Pentax DAL 18-55mm F3.5-5.6 WR', '3.000.000', '2.500.000', '', '', '', 'Ống Kính Pentax DAL 18-55mm F3.5-5.6 WR\r\n\r\n- Cấu tạo thấu kính: 11 thấu kính / 8 nhóm\r\n- Góc ảnh: 76-29°\r\n- Đường kính filter: 52mm\r\n- Khoảng cách: Lấy nét gần nhất 0.25m\r\n- Số lá khẩu: 6\r\n- Tiêu cự: 18-55mm\r\n- Đường kính Filter:  Ø52 mm', NULL, 'okpt1.jpg', 'okpt1.1.jpg'),
(60, 16, 4, 'GIMBAL CHỐNG RUNG DJI RONIN RS3 PRO', '28.000.000', '24.500.000', '', 'co', '', 'Giải pháp năng động & đa năngMở rộng dựa trên các tính năng mạnh mẽ của dòng Ronin, DJI Ronin RS 3 Pro là một nền tảng mở rộng máy ảnh tiên tiến, toàn diện, trao quyền cho các nhà quay phim và cung cấp các giải pháp chụp phối hợp cho các nhóm quay chuyên nghiệp.\r\n\r\nKhóa trục tự động\r\nCánh tay trục sợi carbon mở rộng\r\nTải trọng đã kiểm tra 4,5kg (10lbs)\r\nLấy nét LiDAR\r\nO3 Pro Transmission', NULL, 'tbcr1.jpg', 'tbcr1.1.jpg'),
(61, 16, 4, 'BÁNG TAY CẦM CANON GRIP HG-100TBR CHO CANON G5/ G7 X MARK II/ III', '4.000.000', '3.200.000', '', '', '', 'Tay Cầm Canon Tripod Grip HG-100TBR\r\n- Thiết kế gọn nhẹ\r\n- Dễ dàng hoạt động\r\n- Giá treo máy ảnh có thể điều chỉnh\r\n- Dung tải không quá 1 kg 1\r\n', NULL, 'tbcn2.jpg', 'tbc2.1.jpg'),
(62, 16, 4, 'GIMBAL CHỐNG RUNG ZHIYUN CRANE M3 COMBO', '5.070.000', '4.000.000', '', '', '', 'Gimbal Chống Rung Zhiyun Crane M3 Combo\r\n- Chống Rung: 3 trục (Pitch, Roll, Yaw)\r\n- Pin: 1 x Built-In\r\n- Dung lượng pin: 1150 mAh\r\n- Số giờ hoạt động: 8 giờ\r\n- Điện ap: 9,6 -12,6 VDC\r\n- Kết nối không dây: Bluetooth 5.0, Wi-Fi\r\n- Cổng kết nối:\r\n•	1 x Đầu vào USB Type-C (Nguồn)\r\n•	1 x Đầu ra USB Type-C (Nguồn / Điều khiển)\r\n- Trọng lượng: 1 kg\r\n', NULL, 'tbcr3.jpg', 'tbcr3.1.jpg'),
(63, 17, 4, 'BỘ CHÂN MÁY ẢNH MANFROTTO ELEMENT MARK II 4-S', '4.000.000', '3.000.000', '', '', '', '•	- Tải trọng: 8 kg\r\n•	- Chiều cao tối đa: 160 cm\r\n•	- Chiều dài khi gấp: 42.4 cm\r\n•	- Số đoạn chân: 4\r\n•	- Trọng lượng: 1.59 kg\r\n•	- Gọn nhẹ trên vai và ổn định trên mặt đất\r\n•	- Làm bằng nhôm chắc chắn, nhỏ gọn và nhẹ\r\n•	- Thiết kế hấp dẫn và mang tính biểu tượng\r\n•	- Dễ dàng và thoải mái khi di chuyển nhờ kèm túi đeo vai có đệm\r\n•	- Hỗ trợ máy ảnh DSLR, CSC, compact\r\n', NULL, 'cma1.jpg', 'cma1.1.jpg'),
(64, 17, 4, 'CHÂN MÁY ẢNH TRIPOD BENRO T691', '7.000.000', '6.300.000', '', '', '', 'Chân máy ảnh Tripod Benro T691\r\n- Model: T691\r\n- Chiều cao tối đa: 1520mm\r\n- Chiều dài gấp gọn: 470mm\r\n- Số đoạn chân: 4\r\n- Trọng lượng: 1.37kg\r\n- Tải trọng tối đa: 3kg\r\n- Đường kính: 20.8mm (lớn nhất)/ 13 mm (nhỏ nhất)\r\n', NULL, 'cm2.jpg', 'cm2.1.jpg'),
(65, 17, 4, 'CHÂN MÁY ẢNH TRIPOD BEIKE Q999H', '8.000.000', '7.000.000', '', '', '', NULL, NULL, 'cm3.jpg', 'cm3.1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `diachi`, `user`, `password`, `role`) VALUES
(1, 'admin', NULL, 'admin@gmail.com', '123', 1),
(2, 'thuy', NULL, 'thuy@gmail.com', '456', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
