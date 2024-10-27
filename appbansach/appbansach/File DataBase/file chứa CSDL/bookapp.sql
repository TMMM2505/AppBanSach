-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 09:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluongdamua` int(11) NOT NULL,
  `gia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluongdamua`, `gia`) VALUES
(38, 9, 1, '102000'),
(38, 7, 2, '170000'),
(39, 8, 1, '89000'),
(41, 9, 1, '102000'),
(42, 8, 2, '178000'),
(43, 9, 1, '102000'),
(54, 22, 1, '75000'),
(55, 23, 2, '320000'),
(56, 18, 2, '116000'),
(57, 18, 2, '116000'),
(59, 17, 1, '23');

-- --------------------------------------------------------

--
-- Table structure for table `chitietsach`
--

CREATE TABLE `chitietsach` (
  `id` int(11) NOT NULL,
  `tensach` varchar(200) NOT NULL,
  `tentacgia` varchar(50) NOT NULL,
  `idtheloai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinhanh` varchar(1000) NOT NULL,
  `mota` varchar(2000) DEFAULT NULL,
  `daban` int(11) NOT NULL,
  `phanloai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietsach`
--

INSERT INTO `chitietsach` (`id`, `tensach`, `tentacgia`, `idtheloai`, `soluong`, `gia`, `hinhanh`, `mota`, `daban`, `phanloai`) VALUES
(1, 'Quốc gia khởi nghiệp', 'Dan Senor', 1, 107, 99000, 'https://static1.cafeland.vn/cafelandnew/hinh-anh/2020/10/17/163/quoc-gia-khoi-nghiep2.jpg', 'Trong cuốn sách này độc giả sẽ được khám phá câu chuyện về sự phát triển thần kỳ của nền kinh tế Israel, dù luôn phải đối phó với sự thù địch của các quốc gia lân bang.\r\nCội nguồn, nguyên nhân của sự thành công đó chính là tinh thần Peres/ Chutzpah: sự quyết liệt, luôn hướng tới sự sáng tạo, khởi nghiệp; biến đổi những hoàn cảnh nguy nan trở thành các cơ hội hiếm có và hành động tức thì để có thể hiện thực hóa mọi ước mơ, suy nghĩ.\r\nQuốc gia khởi nghiệp là một cuốn sách tham khảo tuyệt vời cho bất cứ ai muốn bước chân vào con đường khởi nghiệp cũng như tất cả những ai quan tâm đến việc thúc đẩy, phát triển Việt Nam trở thành một quốc gia khởi nghiệp thành công', 5, 0),
(2, '12 Xu Hướng Công Nghệ Trong Thời Đại 4.0', 'Kevin Kelly', 2, 98, 100000, 'https://ghiensach.com/wp-content/uploads/2022/03/top-sach-cong-nghe-thong-tin.jpg', 'Công nghệ hiện đại đang khiến thế giới thay đổi từng ngày, thậm chí là thay đổi theo từng giờ, từng phút.\r\n\r\nNhưng kể cả khi bạn đang choáng ngợp với các biển chuyển diễn ra liên tục và cho rằng tương lai là thứ không thể nắm bắt, thì vẫn có những xu hướng không-thể-tránh khỏi sẽ xảy ra trong ba mươi năm tới. Chúng chính là những thứ được tạo ra bởi các xu thế công nghệ ngày hôm nay.\r\n\r\nTrong “The Inevitable: Làm chủ công nghệ làm chủ tương lai”, Kevin Kelly đưa ra một lộ trình tươi sáng cho tương lai, chỉ ra những biến đổi trong cuộc sống – từ thực tế ảo trong gia đình đến một nền kinh tế dựa trên nhu cầu của người tiêu dùng và trí tuệ nhân tạo được ứng dụng vào sản xuất. \r\n\r\nChúng đều sẽ trở thành các nguồn lực lâu dài và đắc dụng, và tạo ra một cuộc cách mạng quy mô trong cách chúng ta mua sắm, làm việc, học tập và giao tiếp.\r\n\r\nVới việc phân tích 12 xu hướng làm thay đổi thế giới công nghệ, “The Inevitable: Làm chủ công nghệ làm chủ tương lai” cung cấp cho độc giả cái nhìn mới mẻ hơn về một thế giới tương lai đầy tiềm năng, và cho phép những ai có tầm nhìn sớm định hướng được con đường của mình, đi trước đón đầu, tiến những bước vững chắc trên hành trình phát triển sự nghiệp cũng như cuộc sống cá nhân.\r\n\r\nCuốn sách công nghệ thông tin này được viết bởi Kevin Kelly, đồng sáng lập tạp chí công nghệ Wired nổi tiếng, người đã giữ chức Tổng biên tập trong những năm đầu tiên và là tác giả của nhiều cuốn sách đột phá về công nghệ.', 6, 0),
(3, 'Dữ Liệu Lớn', 'Johnny Marr', 2, 95, 250000, 'https://ghiensach.com/wp-content/uploads/2022/03/sach-cntt.jpg', 'Màu sơn nào có thể cho bạn biết một chiếc xe đã qua sử dụng vẫn còn trong tình trạng tốt? Làm thế nào các công chức ở thành phố New York có thể xác định các hố ga nguy hiểm nhất trước khi chúng phát nổ? Và làm thế nào những cuộc tìm kiếm của Google dự đoán được sự lây lan của dịch cúm H1N1?\r\nChìa khóa để trả lời những câu hỏi này, và nhiều câu hỏi khác, là dữ liệu lớn. “Dữ liệu lớn” đề cập đến khả năng đang phát triển của chúng ta để nắm giữ các bộ sưu tập lớn thông tin, phân tích, và rút ra những kết luận đôi khi sâu sắc đáng ngạc nhiên. \r\nLĩnh vực khoa học đang nổi lên này có thể chuyển vô số hiện tượng – từ giá vé máy bay đến các văn bản của hàng triệu cuốn sách – thành dạng có thể tìm kiếm được, và sử dụng sức mạnh tính toán ngày càng tăng của chúng ta để khám phá những điều chúng ta chưa bao giờ có thể nhìn thấy trước. ', 15, 0),
(4, 'Công Nghiệp Tương Lai', 'Alec Ross', 2, 96, 190000, 'https://ghiensach.com/wp-content/uploads/2022/03/cong-nghiep-tuong-lai.jpg', 'Đây là một cuốn sách về công nghệ thông tin quan trọng mà thiết nghĩ không ai nên bỏ qua, đặc biệt là những bạn trẻ đang trên đường tìm kiếm những con đường hứa hẹn nhất để xây dựng sự nghiệp.\r\nĐược viết bởi một chuyên gia lão luyện trong xây dựng chính sách công nghiệp của Hoa Kỳ, cuốn sách khởi đầu bằng việc nêu lên với những mũi nhọn của công nghiệp tương lai (robot, máy người, dữ liệu lớn, nông nghiệp chuẩn xác, kinh tế chia sẻ, bitcoin…), với tất cả những mặt trái và mặt phải của chúng, những nỗi lo lắng (tấn công mạng, robot thống trị con người…), những tia hy vọng (giảm đói nghèo, cơ hội nghề nghiệp mớ).\r\nCuốn sách đặc biệt thú vị ở phần bàn về địa lý của các thị trường tương lai. Phần này cho thấy việc nắm bắt các xu hướng công nghiệp và dựa vào đó để định hướng chính sách là yếu tố tiên quyết cho sự thành công ở từng quốc gia. \r\nNó cũng cho thấy sự cởi mở xã hội, dân chủ, bình quyền nam nữ, tôn trọng quyền tác giả đóng vai trò quan trọng như thế nào trong việc giữ các quốc gia ở tuyến đầu của sự phát triển. Một cuốn sách đầy hấp lực.', 12, 0),
(5, 'Deep Learning – Cuộc Cách Mạng Học Sâu', 'Terrence J. Sejnowski', 2, 89, 250000, 'https://ghiensach.com/wp-content/uploads/2022/03/sach-hay-ve-cong-nghe-thong-tin.jpg', 'Nếu bạn sử dụng chức năng nhận diện giọng nói trên điện thoại Android hoặc phần mềm dịch thuật của Google (Google Translate) trên Internet, khi đó bạn đang giao tiếp với mạng nơ-ron (neural networks), một mạng lưới được huấn luyện bởi deep learning (học sâu). \r\nMặc dù có khoảng cách lớn giữa thực tế và các bộ phim mà chúng ta được xem. Nhưng ngay cả những nhà văn khoa học viễn tưởng giàu trí tưởng tượng nhất cũng không thể đoán trước được các tác động cuối cùng của học sâu và trí tuệ nhân tạo đối với thế giới này.\r\nCuộc sống trên Trái đất tràn ngập những điều bí ẩn, nhưng có lẽ bí ẩn lớn nhất là bản chất của trí thông minh. Bản chất trí thông minh có nhiều dạng, từ thông minh của vi khuẩn cho tới trí thông minh phức tạp của con người, mỗi trí thông minh đều thích nghi một cách phù hợp trong tự nhiên. \r\nTrí tuệ nhân tạo cũng sẽ có nhiều dạng, thể hiện từng đặc điểm riêng của nó. Khi trí thông minh máy móc (machine intelligence) đã dựa vào mạng nơ-ron, nó có thể đưa ra một khuôn khổ khái niệm mới cho trí thông minh sinh học.', 14, 0),
(6, 'Kinh điển về khởi nghiệp', 'Bill Aulet', 1, 70, 78000, 'https://tusachceo.com/wp-content/uploads/2019/10/sach-kinh-dien-ve-khoi-nghiep-1-min.png', 'Dù khởi nghiệp kinh doanh là con đường mà bạn đã hay sẽ lựa chọn, cuốn sách Kinh điển về Khởi nghiệp cũng đều sẽ là cẩm nang tuyệt vời giúp bạn xây dựng được một doanh nghiệp thực sự thành công, tránh khỏi những cạm bẫy vốn có đối với các công ty khởi nghiệp, đặc biệt trong môi trường cạnh tranh, biến đổi nhanh chóng và toàn cầu như hiện nay.Với Kinh điển về Khởi nghiệp, kinh doanh không còn là lãnh địa của thiên tài và may mắn. Sẽ ngày càng có nhiều người có cơ hội trở thành những doanh nhân thành công khi họ được trang bị những kiến thức cần thiết nhất những chỉ dẫn cụ thể nhất, từ một ý tưởng kinh doanh hay sản phẩm mới khác biệt cho đến một doanh nghiệp phát triển mạnh và vững chắc, như 24 bước hành động được trình bày trong cuốn sách rất dễ đọc.Kinh điển về Khởi nghiệp ra đời từ kinh nghiệm nhiều lần khởi nghiệp kinh doanh và những bài giảng của tác giả Bill Aulet thuộc Viện Công nghệ Massachusetts – MIT, một trong những trường đại học hàng đầu thế giới, nơi cho ra đời hơn 30.000 công ty, với tổng doanh thu hàng năm khoảng 2.000 tỉ đô la, tương đương với nền kinh tế đứng thứ 10 thế giới.', 11, 0),
(7, 'Những cuộc phiêu lưu trong kinh doanh', 'John Brooks', 1, 92, 85000, 'https://sach.tonirovkasamara.ru/timthumb.php?w=200&h=300&zc=1&a=t&s=1&src=http%3A%2F%2Ften.uberupload.ru%2Fbooks%2Fdb4d15dea028497445628d4ef6b876d1.jpg&q=52', 'Những Cuộc Phiêu Lưu Trong Kinh Doanh \"Tác phẩm này của Brooks nhắc nhở chúng ta các nguyên tắc điều hành một doanh nghiệp vững mạnh và tạo ra các giá trị bền vững như yếu tố con người luôn đóng vai trò quan trọng trong mọi hoạt động kinh doanh? Dù có sản phẩm chất lượng hay kế hoạch sản xuất và truyền thông xuất sắc đến đâu chăng nữa, bạn vẫn cần những con người thích hợp để chỉ đạo và thực hiện kế hoạch đó.\"', 16, 0),
(8, 'Lược Sử Kinh Tế Học', 'Niall Kishtainy', 1, 102, 89000, 'https://toplist.vn/images/800px/luoc-su-kinh-te-hoc-761349.jpg', 'Lược sử kinh tế học chọn lọc và trình bày theo trật tự biên niên những hình thái, học thuyết, vấn đề và quy luật kinh tế then chốt trong các xã hội phương Tây suốt mấy ngàn năm qua với một góc nhìn khách quan, cách diễn giải cuốn hút và những ví dụ minh họa rất sinh động, gần gũi. Có lẽ, không ít độc giả, sau khi gấp cuốn sách này lại, sẽ không còn muốn chuyển kênh khi chương trình ti vi tường thuật một buổi tọa đàm của các chuyên gia kinh tế.', 19, 0),
(9, 'Doanh Nghiệp Của Thế Kỷ 21', 'Robert T. Kiyosaki', 1, 129, 102000, 'https://toplist.vn/images/800px/doanh-nghiep-cua-the-ky-21-761351.jpg', 'Trong quyển Doanh nghiệp của thế kỉ 21, Robert Toru Kiyosaki sẽ đưa ra lý do tại sao chúng ta cần phải tạo dựng doanh nghiệp riêng của mình (bao gồm việc thay đổi loại hình doanh nghiệp, thay đổi tư duy làm giàu đúng đắn và cách thức tìm kiếm phương tiện xây dựng doanh nghiệp phù hợp với bản thân mỗi người). Tác giả còn cho bạn đọc biết cách thức tìm kiếm những gì mình cần để phát triển doanh nghiệp hoàn hảo, nhưng để doanh nghiệp của mình phát triển thì mình cũng sẽ phải phát triển theo.', 29, 1),
(10, 'Nghệ thuật ẩn mình', 'Kevin Mitnick', 4, 12, 100000, 'https://salt.tikicdn.com/cache/w1200/ts/product/47/4b/45/6386ab1926fd23aad2b93d8f83429769.jpg', 'Trong cuốn sách này, Kevin Mitnick, hacker nổi tiếng nhất thế giới, sẽ hướng dẫn các biện pháp dễ thực hiện (và ít tốn kém) giúp bạn – trên cương vị một cá nhân bình thường và một người tiêu dùng – có thể giấu các thông tin nhận dạng cá nhân của mình trong kỷ nguyên của Dữ liệu Lớn, vốn không thiếu những scandal quy mô quốc tế về những vụ vi phạm dữ liệu người dùng thường xuyên xuất hiện trên các mặt báo. Mitnick bàn đến nhiều phương tiện mà chúng ta sử dụng hằng ngày – từ điện thoại, email, cho đến tin nhắn,… – chỉ ra những lỗ hổng mà người khác có thể lợi dụng để giành quyền kiểm soát các dữ liệu của chúng ta, đồng thời đưa ra những giải pháp phòng chống cụ thể và hữu hiệu mà bất kỳ ai cũng có thể thực hiện để tự bảo vệ mình.\r\n\r\nNhưng có lẽ một trong những giá trị quan trọng nhất của cuốn sách là qua đó, tác giả đã giải ảo niềm tin thơ ngây của đại đa số chúng ta rằng những hoạt động của mình trên mạng là đàng hoàng và lành mạnh nên có thể công khai, rằng chỉ những người có ý đồ xấu mới phải tìm cách che giấu các dữ liệu cá nhân. Hay nói như Mikko Hypponen, nhà nghiên cứu trưởng của hãng bảo mật F-Secure, thì: “Có thể bạn không có gì phải giấu diếm. Nhưng bạn có rất nhiều thứ phải bảo vệ đấy.”', 36, 1),
(13, 'Người trong muôn nghề', 'spiderum', 3, 99, 160000, 'https://salt.tikicdn.com/cache/w1200/ts/product/07/3e/ae/26cc99e58483d0030de5e8dc777e3d81.jpg', 'Hầu hết những người trẻ đều đã từng hoặc đang trải qua cảm giác không biết mình thuộc về đâu. Khó khăn lớn nhất có lẽ không phải là kiếm được việc, mà là chọn được một nghề thực sự phù hợp với bản thân. Trên hành trình kiếm tìm ấy, người trẻ phải gánh trên vai rất nhiều áp lực vô hình từ gia đình và xã hội. Đi học thì ngành phải \"hot\", trường phải \"xịn\". Đi làm thì vị trí phải “oai\", lương tháng phải “cao\", công ty phải “khủng\". \r\n\r\nChúng ta mải chạy theo những thứ bề nổi mà quên mất rằng mục đích sau cùng của việc chọn ngành, chọn nghề là giúp mình tìm được điểm giao thoa giữa năng lực, sở thích cá nhân với nhu cầu của xã hội.\r\n\r\nNgười Trong Muôn Nghề hi vọng có thể kéo bạn lại gần hơn với mục đích bản chất ấy. Cuốn sách là tuyển tập những câu chuyện đi làm tâm huyết đến từ những cây viết dày dặn kinh nghiệm trong các lĩnh vực chuyên môn và những môi trường làm việc khác nhau. Những chia sẻ này sẽ giúp các bạn học sinh, sinh viên có một cái nhìn toàn diện hơn về thế giới công việc thực thụ: \r\n\r\n- Làm việc tại tập đoàn lớn thì khác gì với môi trường startup, nhà nước, và freelance? \r\n- Làm thế nào để có được một tư duy đúng đắn trong việc lựa chọn nghề nghiệp, và cần chuẩn bị những gì từ khi còn ngồi trên ghế nhà trường? \r\n- Đâu là những điểm đặc thù của mỗi ngành nghề – từ Công nghệ thông tin, Kỹ thuật, Kiểm toán cho tới Giáo dục, Y tế, Marketing, thậm chí là những nghề rất mới như làm Game, làm Youtube? ', 1, 0),
(14, 'Nghệ Thuật Tư Duy Phản Biện', 'Albert Rutherford', 3, 100, 83000, 'https://salt.tikicdn.com/cache/w1200/ts/product/f2/78/db/519339b2143334abb6c62381a036cf88.jpg', 'Tư duy phản biện là một phần trong cuộc sống hằng ngày, bạn cần nắm lấy và phát triển từ nó. Thực hiện nghiên cứu của bạn, tìm kiếm các nguồn thông tin tốt, đưa ra lập luận của bạn và cân nhắc phản bác, cân nhắc xem bạn có đưa ra giả định hay không và đừng vội vàng đưa ra quyết định nếu bạn không hài lòng với thông tin bạn thu thập được.\r\n\r\nBạn có phải là một y tá phẫu thuật hay thậm chí làm việc trong lĩnh vực y tế, thì bạn cũng có thể thực hiện một số hình thức thử nghiệm. Việc đưa ra quyết định về những việc cần xử lý tại nơi làm việc và ở nhà dựa trên mức độ ưu tiên và mức độ khẩn cấp của hoàn cảnh.\r\n\r\nNếu bạn có một dự án đến hạn vào ngày mai, dự án đó sẽ được ưu tiên hơn dự án đến hạn vào tháng sau. Đứa con mới sinh của bạn cần được vỗ về trước khi giúp đứa con lớn hơn làm bài tập về nhà và giúp ra những quyết định dựa trên khả năng suy nghĩ chín chắn của mình và cuốn sách này đã chỉ ra cách phát triển và nâng cao những kỹ năng đó để bạn được trao quyền đạt được nhiều thành quả và thành công hơn. Bây giờ bạn đã có các kỹ năng cần thiết để trở thành một nhà tư tưởng phản biện hiệu quả, hãy bắt đầu sử dụng các kỹ năng mới phát triển của bạn ngay hôm nay. Thách thức bản thân đánh giá một cách nghiêm túc niềm tin của bạn và tự quyết định xem bạn có thực sự hiểu được ý nghĩa và lịch sử đằng sau những suy nghĩ và quan điểm của mình hay không. Bạn có thể hoặc không thay đổi quan điểm của mình, nhưng ít nhất bạn chắc chắn sẽ biết mình đang đứng ở đâu và tại sao. Hãy bắt đầu áp dụng lập luận phản biện trong cuộc sống hằng ngày của bạn khi bạn đưa ra quyết định và đưa ra kết luận cả lớn và nhỏ.\r\n\r\nTrong cuộc đời mỗi người, không ai có thể tránh được những tổn thương về mặt cảm xúc, nhưng nếu tâm trí và cảm xúc phân minh, bạn sẽ có thể lùi lại một bước trước những cảm xúc cá nhân để giải quyết tình huống theo cách có lợi nhất cho bạn. Đồng thời, bạn sẽ có thể sử dụng kỹ năng tư duy phản biện để thách thức các ý tưởng và lý tưởng. “Nghệ thuật tư duy phản biện” sẽ giúp bạn', 0, 0),
(15, 'Nhân Duyên ... Mèo Định', 'Melinda Metz', 4, 100, 75000, 'https://salt.tikicdn.com/cache/w1200/ts/product/ab/96/7e/4893a113ea332bd5eaa0da85780404ea.jpg', 'Các bạn yêu động vật hãy cẩn thận! Chú mèo Mac đáng yêu này sẽ “đánh cắp” trái tim của bạn đó! -\r\n\r\nĐược truyền cảm hứng từ câu chuyện có thật về chú mèo “đạo chích” ở Portland, Oregon - chú mèo chuyên trộm đồ đạc nhà hàng xóm, và cũng “trộm” mất trái tim của họ…\r\n\r\n“Mac ngoạm lấy miếng vải bông. Nó nhấm nháp cả mùi lẫn vị tỏa ra từ vật đó. Rồi với cảm giác chiến thắng ngập tràn, nó nhảy trở lên bệ cửa sổ rồi biến mất vào trong bóng đêm với chiến lợi phẩm bay lất phất phía sau.”\r\n\r\nMacGyver, nhân vật chính trong cuốn sách “Nhân duyên Mèo định”, là một chú mèo tinh nghịch, thích đùa giỡn, leo trèo nhưng luôn ôm ấp hy vọng có thể khiến cô chủ của mình hạnh phúc. Bạn có đang sở hữu một chú mèo như thế?\r\n\r\nTừng là một giáo viên dạy Lịch sử, Jamie Snyder phóng khoáng và yêu thích sự tự do. Sau 5 năm với bốn mối tình không có kết quả khiến cho Jamie dù đã ba mươi tư tuổi vẫn chưa tìm được một nửa của mình. Năm đầu tiên với anh chàng chỉ biết nghĩ cho bản thân; năm thứ hai trải qua với anh chàng quên nói mình đã kết hôn; năm thứ ba kết thúc với anh chàng đeo bám, và đến năm thứ 4 gặp phải anh chàng không thích sự ràng buộc. Năm tệ nhất, năm thứ năm, là năm mẹ của Jamie bị ngã bệnh, nên lúc đó mọi quyết định cô đưa ra đều là vì mẹ.\r\n\r\nSau những năm tháng ấy, Jamie cuối cùng cũng quyết định sống cuộc sống của Năm-tôi-tỏa-sáng. Nhưng nỗ lực chẳng muốn liên quan đến đàn ông của cô đã sớm bị lung lay vì chú mèo MacGyver - người bạn đồng hành và là chỗ dựa quan trọng trong đời cô.\r\n\r\nTừ tình yêu dành cho cô chủ, sự thông minh, tinh nghịch lẫn tinh tế và đương nhiên là cả chiếc mũi vô cùng thính của mình, Mac hiểu Năm-tỏa-sáng của Jamie là năm cô ấy hạnh phúc. Nếu muốn sống hạnh phúc thì cô ấy cần một người “bạn cùng bầy” phù hợp, chính vì thế Mac đã lập nên một kế hoạch hoàn hảo nhằm tác hợp cho Jamie và David – một anh chàng làm bánh điển trai gần nhà. “Phi vụ” xe duyên do Mac lãnh đạo đã khiến Jamie và David vô tình trao đổi cho nhau những món đồ bị đánh tráo, và rồi, theo thờ', 0, 0),
(16, 'Lâu Đài Trên Mây', 'Diana Wynne Jones', 4, 100, 58000, 'https://salt.tikicdn.com/cache/w1200/ts/product/76/41/12/831a995434e56f9b5fbc1b6ed65a1c39.jpg', 'Tại thành Zanzib ở vương quốc Rashpuht, phía Nam của Ingary, có một người buôn thảm trẻ tuổi tên Abdullah ngày ngày đắm chìm trong những mộng tưởng hoang đường. Tuy chẳng giàu có nhưng anh rất bằng lòng với cuộc sống của mình, cho tới ngày anh được một lữ khách phương xa bán cho một tấm thảm mầu nhiệm.\r\nHằng đêm, tấm thảm đưa anh tới một khu vườn đẹp mê hoặc, nơi anh gặp gỡ và đem lòng yêu nàng công chúa Hoa Đêm khả á. Một đêm nọ, nàng lại bị ma thần cướp đi ngay trước mắt anh. Với tấm thảm thần giúp sức và sự lanh trí của bản thân, Abdullah khăn gói lên đường đi giải cứu cô gái của lòng mình...\r\n\r\n“Một chuyến phiêu lưu kỳ ảo vô cùng sống động.”\r\n- School Library Journal\r\n\r\n“Phần tiếp theo của Lâu đài bay của pháp sư Howl không hề kém cạnh phần đầu. Với khiếu hài hước kỳ lạ và những tình tiết bí ẩn, Jones đã thành công trong việc tạo nên cho cuốn sách một không khí căng thẳng mà dí dỏm, và lần nữa chứng minh rằng mọi sự không phải lúc nào cũng như ta tưởng.”', 0, 1),
(17, 'Spy X Family', 'Tatsuya Endo', 4, 99, 23, 'https://cdn0.fahasa.com/media/catalog/product/s/p/spy-x-family---tap-3.jpg', 'Yuri, em trai của Yor đã tới thăm nhà Forger!! Twilight và Yuri cùng giấu nhẹm thân phận điệp viên, cũng như cảnh sát mật của mình, và giở đủ chiêu thăm dò lẫn nhau. Yuri, cậu em cuồng chị gái đang gấp rút muốn điều tra xem liệu Twilight có phải là người chồng thật sự của chị mình hay không…!?\r\n\r\nTATSUYA ENDO\r\n\r\n Hầu hết các giai thoại được kể về điệp viên đều là những nhiệm vụ thất bại. Bởi đã hoàn thành nhiệm vụ một cách hoàn hảo không vết tích thì sẽ chẳng có bất kì một ghi chép công khai nào còn lưu lại về vụ việc đó.\r\n\r\nNgoài những lần gặp thất bại ra, tôi không có khả năng làm công việc mà chẳng được ai biết đến, hay trở thành điệp viên. Bởi tôi thuộc trường phái thích được khen ngợi mà.', 1, 0),
(18, 'Khu Vườn Bí Mật ( Tái Bản 2019 )', 'Frances Hodgson Burnett', 4, 98, 58000, 'https://salt.tikicdn.com/cache/w1200/ts/product/30/74/bd/e8883d02bba0ca7c232ebde1672462b6.jpg', 'Mary Lennox, một cô bé mồ côi, cáu kỉnh, không ai ưa, tới sống tại nhà ông bác ở vùng đồng hoang Yorkshire, nước Anh, nơi có rất nhiều bí mật đang đợi cô. Ban đêm, có tiếng khóc của ai đó từ một hành lang gần phòng cô. Còn ban ngày, cô gặp Dickon, một cậu bé biết thuần dưỡng và nói chuyện cùng loài vật. Rồi một ngày, nhờ sự giúp đỡ của một con chim ức đỏ, Mary khám phá ra một nơi bí ẩn nhất trên thế gian này – Khu vườn bí mật. Mọi thứ dường như đã chết trong khu vườn mười năm qua khóa kín. Cùng với Colin, vị chủ nhân ốm yếu của tiếng khóc bí ẩn kia, và Dickon, cậu bé mà tất cả mọi người đều yêu mến, Mary đã tìm ra những thứ sẽ làm thay đổi cuộc đời cô mãi mãi, khi mùa xuân về đánh thức cả khu vườn tuyệt đẹp.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 2, 0),
(19, 'Tàn Ngày Để Lại', 'Kazuo Ishiguro', 4, 100, 104000, 'https://salt.tikicdn.com/cache/w1200/ts/product/bc/82/ac/a6bf1a9e771d2741fbe89de5c121bad6.jpg', 'Stevens là một quản gia người Anh với tất cả mọi hàm nghĩa của từ này: tận tụy, chỉn chu, trung thành, và trên hết, luôn luôn có một ý thức mãnh liệt về phẩm giá nghề nghiệp. Mong muốn cải thiện chất lượng phục vụ tại dinh thự và chấm dứt những sa sút hiện tại, Stevens dấn thân vào một cuộc hành trình đi qua Miền Tây nước Anh. Mỗi chặng trên cuộc hành trình mở ra một cánh cửa nối về quá khứ, và dần dà hành trình ấy làm hé lộ những mất mát và nuối tiếc theo sau những ảo tưởng của một đời người.\r\n\r\nBằng một lối viết bậc thầy, đạt đến một sự cân bằng phi thường giữa lời kể bình thản, điềm tĩnh và nỗi hoang mang dữ dội cùng niềm tiếc nuối mênh mông, Kazuo Ishiguro đã bóc tách một cách hết sức tinh tế cái ảo tưởng tót vời mà nhân vật chính đã dâng hiến đời mình cho nó, và làm lộ ra trong cốt lõi không phải là một lý tưởng, mà là một sự ngây thơ rất đẹp nhưng cũng rất khờ dại khi đặt trong một thời hiện đại khôn lường, sự ngây thơ thuộc về một quá khứ mà con người vĩnh viễn không thể nào trở lại được nữa.', 0, 0),
(20, 'Dưới Một Mái Nhà Ở Paris', ' Guillaume Musso', 3, 100, 71000, 'https://salt.tikicdn.com/cache/w1200/ts/product/60/2d/a1/ea76ddb80e0c39f261188d5622a26d08.jpg', 'Dưới Một Mái Nhà Ở Paris\r\n\r\n“Nghệ thuật là một lời nói dối khiến chúng ta hiểu được sự thật…”\r\n\r\nParis, một xưởng vẽ giấu mình cuối một ngõ nhỏ rợp bóng cây xanh. Madeline đã thuê căn xưởng làm nơi nghỉ ngơi và tách mình khỏi thế giới. Do một nhầm lẫn ngẫu nhiên, nữ cảnh sát trẻ người Luân Đôn chạm trán với Gaspard, một nhà biên kịch đến từ Mỹ cũng thuê trọ tại chính nơi này. Họ buộc phải sống cùng nhau trong vài ngày, và chính ở đó, cùng nhau khám phá số phận bí ẩn của họa sĩ nổi tiếng Sean Lorenz, chủ căn nhà, người đã để lại ba bức tranh bí ẩn cuối cùng trước khi qua đời.\r\n\r\nĐể vén được bức màn sự thật về Sean Lorenz, hai người buộc phải đối mặt với quỷ dữ ngự trị chính trong bản thân mình, trên một hành trình điều tra sẽ dẫn tới lối rẽ không ngờ khiến cuộc đời họ thay đổi mãi mãi.\r\n\r\nMột lần nữa Guillaume Musso ghi dấu tên tuổi mình với một cuốn tiểu thuyết trinh thám quyến rũ và gây nghiện bởi những nhân vật đậm chất nhân văn. Một sự dấn thân đáng kinh ngạc vào thế giới huyền bí của sáng tạo.', 0, 1),
(22, 'Bố Già', 'Mario Puzo', 4, 8, 75000, 'https://salt.tikicdn.com/cache/w1200/ts/product/3a/f3/0c/affb24c3914eabf3834b1ca179ad465a.jpg', 'Thế giới ngầm được phản ánh trong tiểu thuyết Bố Già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố Già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiềng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử, vì thế mà có ý kiến cho rằng “Bố Già là sự tổng hòa của mọi hiểu biết. Bố Già là đáp án cho mọi câu hỏi”.\r\n\r\nVới cấu tứ hoàn hảo, cốt truyện không thiếu những pha hành động gay cấn, tình tiết bất ngờ và không khí kình địch đến nghẹt thở, Bố Già xứng đáng là đỉnh cao trong sự nghiệp văn chương của Mario Puzo. Và như một cơ duyên đặc biệt, ngay từ năm 1971-1972, Bố Già đã đến với bạn đọc trong nước qua phong cách chuyển ngữ hào sảng, đậm chất giang hồ của dịch giả Ngọc Thứ Lang. ', 0, 0),
(23, 'Kẻ Thành Công Phải Biết Lắng Nghe', 'Mark Goulston', 3, 100, 160000, 'https://bizweb.dktcdn.net/100/197/269/products/ke-thanh-cong-phai-biet-lang-nghe.jpg?v=1514182238167', 'Cuốn sách nghệ thuật giao tiếp mang đến cho độc giả những bí mật giúp tiếp cận tất cả mọi người xung quanh, ngay cả khi những cách thức giao tiếp hiệu quả nhất cũng không đem lại kết quả như mong đợi.\r\n\r\nĐồng nghiệp không ưa bạn, khách hàng thất vọng về bạn, hay nhân viên hoài nghi bạn… Làm thế nào bạn có thể khiến những người này làm theo những điều bạn muốn? Cuốn sách này sẽ cho bạn câu trả lời!\r\n\r\nTại sao khách hàng chọn những doanh nghiệp khác chứ không chọn bạn, dù bạn đã nỗ lực quảng bá không ngừng?\r\n\r\nTại sao trong công việc, nhiều đồng nghiệp không ưa bạn, sếp và khách hàng thất vọng về bạn?\r\n\r\nTại sao trong cuộc sống, dù bạn không ngừng cố gắng, nhưng người khác vẫn không hiểu bạn?\r\n\r\nCâu trả lời chỉ có thể là: bạn chưa thực sự giao tiếp hiệu quả với mọi người! Mà nguyên nhân phổ biến nhất của giao tiếp không hiệu quả chính là không biết lắng nghe!\r\n\r\nVậy làm thế nào để giao tiếp hiệu quả và khiến mọi người làm theo những điều bạn muốn?\r\n\r\nTrong cuốn sách kỹ năng này, chuyên gia tâm thần học và chuyên gia kinh doanh hàng đầu Mark Goulston mang đến cho độc giả những bí mật giúp tiếp cận tất cả mọi người xung quanh, ngay cả khi những cách thức giao tiếp hiệu quả nhất cũng không đem lại kết quả như mong đợi.\r\n\r\nRào cản trong giao tiếp giữa con người sẽ trở thành rào cản đối với sự thành công, sự phát triển cũng như hạnh phúc.Do vậy, việc vượt qua những rào cản đó không chỉ đơn thuần là một nghệ thuật, nó còn là một kỹ năng tối cần thiết. Kẻ Thành Công Phải Biết Lắng Nghe cung cấp cho bạn những phương pháp cũng như sự tự tin để có thể tiếp cận được những con người mà bạn luôn cho là mình không thể với tới, và khiến những mối quan hệ khó khăn trở thành những mối quan hệ hiệu quả và mang lại nguồn lợi vô tận!', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitiettacgia`
--

CREATE TABLE `chitiettacgia` (
  `idtacgia` int(11) NOT NULL,
  `tentacgia` varchar(100) NOT NULL,
  `quequan` varchar(100) DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `hinhanhtacgia` varchar(1000) DEFAULT NULL,
  `mota` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiettacgia`
--

INSERT INTO `chitiettacgia` (`idtacgia`, `tentacgia`, `quequan`, `gioitinh`, `hinhanhtacgia`, `mota`) VALUES
(1, 'Dan Senor', 'Quốc Tế', 'Nam', 'https://images.forwardcdn.com/image/970x/center/images/cropped/senor-032510-1425719888.jpg', 'Dan Senor sinh ngày 6/11/1971 tại Utica, New York, Hoa Kỳ. Dan là chuyên gia cao cấp về các vấn đề Trung Đông, cố vấn cho chính phủ Mỹ. Đồng thời nghiên cứu Trung Đông tại Hội Đồng Quan hệ đối ngoại, tập trung vào các chính sách, chính trị và kinh doanh ở khu vực.Với tư cách là cố vấn chính sách đối ngoại cấp cao của chính phủ Hoa Kỳ, ông là một trong những quan chức dân sự tại vị lâu nhất ở Iraq. Ông cũng từng là cố vấn Lầu Năm Góc cho Bộ Tư lệnh Trung tâm ở Qatar và là cố vấn chính sách đối ngoại và truyền thông tại Thượng viện Hoa Kỳ. Vì vậy, Dan Senor được trao tặng danh hiệu cao quý nhất của Lầu Năm Góc – Huân chương dân sự cao nhất.'),
(2, 'Kevin Kelly', 'Quốc Tế', 'Nam', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Kevin_Kelly_in_2022_03.jpg/330px-Kevin_Kelly_in_2022_03.jpg', NULL),
(3, 'Johnny Marr', 'Mỹ', 'Nam', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Johnny_Marr_University_of_Salford_2012_crop.jpg/330px-Johnny_Marr_University_of_Salford_2012_crop.jpg', 'Johnny Marr (tên khai sinh là John Martin Maher , ngày 31 tháng 10 năm 1963) là một nhạc sĩ, nhạc sĩ và ca sĩ người Anh. Anh ấy nổi tiếng lần đầu tiên với tư cách là nghệ sĩ guitar và đồng sáng tác của The Smiths , người hoạt động từ năm 1982 đến năm 1987. Kể từ đó, anh ấy đã biểu diễn với nhiều ban nhạc khác và bắt đầu sự nghiệp solo.\r\nSinh ra ở Manchester , với cha mẹ là người Ireland, Marr thành lập ban nhạc đầu tiên của mình ở tuổi 13. Anh ấy là thành viên của một số ban nhạc với Andy Rourke trước khi thành lập Smiths với Morrissey vào năm 1982. The Smiths đã đạt được thành công về mặt thương mại và được giới phê bình đánh giá cao, với Marr\'s jangle phong cách guitar pop trở nên đặc biệt trong âm thanh của ban nhạc, nhưng đã tách ra vào năm 1987 do sự khác biệt cá nhân giữa Marr và Morrissey. Kể từ đó, Marr là thành viên của Pretenders , The The , Electronic , Modest Mouse và Cribs , và anh ấy đã trở thành một nhạc sĩ chuyên nghiệp , làm việc với những tên tuổi nhưPet Shop Boys , Talking Heads , Bryan Ferry và Hans Zimmer .\r\nSau khi phát hành một album mang tên Boomslang vào năm 2003 với tên Johnny Marr and the Healers, Marr đã phát hành album solo đầu tiên của mình, The Messenger , vào năm 2013. Album solo thứ hai của anh ấy, Playland , được phát hành vào năm 2014, tiếp theo là album thứ ba, Call the Comet , vào năm 2018. Cuốn tự truyện của Marr, Set the Boy Free , được xuất bản vào năm 2016.'),
(4, 'Alec Ross', 'Hoa Kì', 'Nam', 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Alec_Ross%2C_state_dept.jpg', 'Alec Ross (sinh ngày 30 tháng 11 năm 1971) là một chuyên gia chính sách công nghệ người Mỹ, từng là Cố vấn cấp cao về Đổi mới cho Ngoại trưởng Hillary Clinton trong suốt nhiệm kỳ Ngoại trưởng của bà. [1] Sau khi rời Bộ Ngoại giao vào năm 2013, ông gia nhập Trường Quan hệ Công chúng và Quốc tế, Đại học Columbia với tư cách là Nghiên cứu viên cao cấp. Ross là tác giả của cuốn sách bán chạy nhất của New York Times The Industries of the Future và The Raging 2020s: Companies, Nations, People – and the Fight for Our Future .Các ngành công nghiệp của tương laiđã được dịch sang 24 ngôn ngữ và được vinh danh là Cuốn sách của năm 2016 bởi Quỹ đổi mới đột phá của Liên hoan phim TriBeCa .Ross là Nghiên cứu sinh xuất sắc tại Đại học Johns Hopkins. Ông là giáo sư thỉnh giảng ưu tú tại Trường Kinh doanh Đại học Bologna .Ông cũng là Thành viên Hội đồng Quản trị tại Amplo, một công ty đầu tư mạo hiểm toàn cầu. '),
(5, 'Terrence J. Sejnowski', 'Việt Nam', 'Nam', 'https://www.salk.edu/wp-content/uploads/2015/10/Sejnowski-Web.jpg', 'Terrence Joseph Sejnowski (sinh ngày 13 tháng 8 năm 1947) là Giáo sư Francis Crick tại Viện Nghiên cứu Sinh học Salk , nơi ông chỉ đạo Phòng thí nghiệm Sinh học Thần kinh Tính toán và là giám đốc của trung tâm sinh học lý thuyết và tính toán Crick-Jacobs . Ông đã thực hiện nghiên cứu tiên phong về mạng thần kinh và khoa học thần kinh tính toán .\r\nSejnowski cũng là Giáo sư Khoa học Sinh học và là giáo sư trợ giảng tại các khoa khoa học thần kinh , tâm lý học , khoa học nhận thức , khoa học máy tính và kỹ thuật tại Đại học California, San Diego , nơi ông là đồng giám đốc của Viện Tính toán Thần kinh . \r\nCùng với Barbara Oakley , anh ấy đã đồng sáng tạo và giảng dạy Học cách học: Các công cụ tinh thần mạnh mẽ giúp bạn thành thạo các môn học khó , khóa học trực tuyến phổ biến nhất thế giới, có sẵn trên Coursera .'),
(6, 'Bill Aulet', 'Mỹ', 'Nam', 'https://m.media-amazon.com/images/I/61t75j-ozcL._SX450_.jpg', 'Bill Aulet, người có bằng đại học Harvard và MIT, đã có hơn 25 năm kinh doanh thành công tại IBM và là người đang thay đổi cách hiểu, giảng dạy và thực hành về tinh thần kinh doanh trên khắp thế giới. Ông đã trực tiếp tạo ra hàng trăm triệu đô la giá trị cổ đông thông qua các công ty của mình. Trong suốt bảy năm qua, ông đã chịu trách nhiệm lãnh đạo sự phát triển của giáo dục khởi nghiệp trên toàn MIT, nơi ông đã được công nhận với nhiều giải thưởng. Bill viết và nói một cách logic về cách các doanh nhân được tạo ra và tầm quan trọng của cả giáo dục và hệ sinh thái. Ông cũng là một diễn giả nổi bật trên các chương trình như CNBC’s Squawk Box và Bloomberg News cũng như tại các sự kiện và hội nghị trên khắp thế giới.'),
(7, 'John Brooks', 'Mỹ', 'Nam', 'https://eccthai.com/wp-content/uploads/2021/03/tac-gia-john-brooks.jpg', 'John Brooks, sinh ngày 5/12/1920 , mất 27/07/1993.\r\nTác giả là cây viết cộng tác lâu dài cùng tạp chí The NewYorker, đặc biệt trong chủ đề tài chính. Brooks là tác giả của rất nhiều đầu sách ở cả thể loại giả tưởng và phi giả tưởng, trong đó nổi tiếng nhất là cuộc kiểm tra những trò lố tài chính của thị trường tăng giá ở Phố Wall những năm 1960, Những cuộc phiêu lưu trong kinh doanh năm 1969.'),
(8, 'Niall Kishtainy', 'Anh', 'Nam', 'https://static.wixstatic.com/media/76405a_322aa97f26ad49e0aafa6dcfe70b1fce~mv2_d_4896_3264_s_4_2.jpg/v1/fill/w_584,h_460,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/76405a_322aa97f26ad49e0aafa6dcfe70b1fce~mv2_d_4896_3264_s_4_2.jpg', ''),
(9, 'Robert T. Kiyosaki', 'Mỹ', 'Nam', 'https://bstyle.vn/wp-content/uploads/2018/11/Robert-Kiyosaki-1.jpg', 'Robert Kiyosaki tên đầy đủ Robert Toru Kiyosaki (Sinh 08/4/1947) là một doanh nhân, nhà đầu tư, tác giả và diễn giả nổi tiếng người Mỹ. Ông là tác giả của cuốn sách nổi tiếng ‘Rich Dad Poor Dad’, cuốn sách tài chính cá nhân số một của mọi thời đại.\r\nÔng đã thay đổi cách nhìn của mọi người về tiền bạc. Ông đưa ra lý do vì sao hầu hết mọi người ngày nay đang gặp khó khăn về tài chính mặc dù họ có nhiều năm giáo dục và đào tạo chính quy, nhưng không hiểu gì về tiền bạc.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sodienthoai` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `soluongtong` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluongtong`, `tongtien`) VALUES
(38, 8, 'Ha Noi', '0123456789', 'phattai@gmail.com', 3, 272000),
(39, 8, 'Viet Nam', '0123456789', 'phattai@gmail.com', 1, 89000),
(41, 8, 'abc', '0123456789', 'phattai@gmail.com', 1, 102000),
(42, 8, 'abc', '0123456789', 'phattai@gmail.com', 2, 178000),
(43, 8, 'acd', '0123456789', 'phattai@gmail.com', 1, 102000),
(54, 8, 'a', '0123456789', 'phattai@gmail.com', 1, 75000),
(55, 8, 'Viet Nam', '0123456789', 'phattai@gmail.com', 2, 320000),
(56, 8, 'Thạch Thất', '0123456789', 'phattai@gmail.com', 2, 116000),
(57, 8, 'HN', '0123456789', 'phattai@gmail.com', 2, 116000),
(59, 8, 'A', '0123456789', 'phattai@gmail.com', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `madonhang` int(11) NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`madonhang`, `tenkh`, `sdt`, `email`) VALUES
(5, 'a', 1, 'a'),
(6, 'a', 2, '1'),
(7, 'a', 2, 'a'),
(8, 'a', 2, 'abc'),
(9, 'a', 2, 'c'),
(10, 'a', 2, 'b'),
(11, 'a', 2, '6'),
(12, 't', 3, '1'),
(13, 'a', 213, 'adqwd'),
(14, 'eq', 3432, 'edfwe'),
(15, 'ew', 4, 'r'),
(16, 'ư', 3, '2'),
(17, '3', 2, '4'),
(18, 'a', 3, 'c'),
(19, 'r', 3, '5'),
(20, '34', 5, '4'),
(21, '5', 6, '5'),
(22, '3', 5, '3'),
(23, '4', 4, '4'),
(24, '4', 6, '8'),
(25, '1', 2, '3'),
(26, '2', 3, '4'),
(27, 'q4', 12325435, 'afrfgghgcj');

-- --------------------------------------------------------

--
-- Table structure for table `theloaisach`
--

CREATE TABLE `theloaisach` (
  `idtheloai` int(11) NOT NULL,
  `theloai` varchar(200) NOT NULL,
  `hinhanh` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theloaisach`
--

INSERT INTO `theloaisach` (`idtheloai`, `theloai`, `hinhanh`) VALUES
(1, 'Kinh Tế', 'https://www.shutterstock.com/image-vector/growth-icon-vector-260nw-788776309.jpg'),
(2, 'Công nghệ', 'https://img.freepik.com/free-vector/illustration-social-media-concept_53876-18139.jpg?w=2000'),
(3, 'Tâm lý', 'https://png.pngtree.com/png-vector/20190729/ourlarge/pngtree-brain-head-hypnosis-psychology-blue-dotted-line-line-icon-png-image_1622562.jpg'),
(4, 'Truyện', 'https://png.pngtree.com/png-vector/20190120/ourlarge/pngtree-primary-school-student-starting-school-school-pupil-child-png-image_488672.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(8, 'phattai@gmail.com', '123456', 'Ba Truong', '0123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietsach`
--
ALTER TABLE `chitietsach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiettacgia`
--
ALTER TABLE `chitiettacgia`
  ADD PRIMARY KEY (`idtacgia`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`madonhang`);

--
-- Indexes for table `theloaisach`
--
ALTER TABLE `theloaisach`
  ADD PRIMARY KEY (`idtheloai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietsach`
--
ALTER TABLE `chitietsach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `chitiettacgia`
--
ALTER TABLE `chitiettacgia`
  MODIFY `idtacgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `theloaisach`
--
ALTER TABLE `theloaisach`
  MODIFY `idtheloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
