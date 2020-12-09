-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2020 at 12:37 PM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-8+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pwk`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(255) NOT NULL,
  `judul` text NOT NULL,
  `konten` text NOT NULL,
  `gambar` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `konten`, `gambar`, `log`) VALUES
(7, 'Alumni Departemen Teknik Perencanaan Wilayah dan Kota (PWK) Fakultas Teknik Universitas Hasanuddin Kembali Sukses Mewakili Indonesia Dalam Sakura Science Plan di Jepang.', '<p>Alumni Dept. Teknik PWK Unhas melalui program &lsquo;Sakura Science Plan (SSP)&rsquo; kembali mencatatkan prestasinya dengan mendapatka undangan sebagai peserta dalam kegiatan Sakura Science Exchange Program, yang kali ini berlangsung selama 7 hari, mulai dari tanggal 15 &ndash; 20 Desember 2019 di 5 kota di Jepang; Matsuyama Ehime Prefecture, Hiroshima, Kisarazu Chiba dan Matsudo Chiba serta Tokyo. Keterlibatan Dept. Teknik PWK UNHAS dan alumninya merupakan kali ke 3 secara berturut turut sepanjang tahun 2018 dan 2019. Seluruh pembiayaan kegiatan ini ditanggung oleh Pemerintah Jepang melalui penyelenggaraan Program yaitu Ehime University JAPAN dan Japan Science and Technology Agency (JST).</p>\r\n<p>&nbsp;</p>\r\n<p>Peserta program berasal dari 5 institusi pendidikan dari 3 negara; Indonesia, Nepal dan Kamboja. Indonesia sendiri diwakili oleh Universitas Hasanuddin, Makassar, dengan mengirim 3 mahasiswi terpilih dari Sekolah Pascasarjana dan 1 orang dosen pembimbing sebagai pemimpin tim. Peserta program adalah Marinda Indayani dan Andi Starina Fitri (dari Program Studi Manajemen Perkotaan), Ummu Kalsum Basman (dari Program Studi Teknik Transportasi) dan Dr. Eng. Abdul Rahman Rasyid, ST., M.Si (dosen merangkap Sekretaris Departemen Perencanaan Wilayah Kota FT UNHAS). Total peserta program berjumlah 14 orang mahasiswa dan 3 orang dosen pembimbing.</p>\r\n<p>&nbsp;</p>\r\n<p>Mengusung tema &ldquo;A workshop training on disaster risk reduction focusing on IoT in landslide and flood disasters&rdquo;, program SSP ini dipusatkan di Universitas Ehime, Kota Matsuyama, Perfektur Ehime. Sebagai ketua tim penyelenggara, Prof. Netra Prakash Bhandary dari Departement of Environmental Design, mewakili Faculty of Collaborative Regional Innovation Ehime University, menjelaskan tujuan program Sakura Science Plan, yaitu terlaksananya sharing informasi dan pengetahuan antara negara-negara peserta dengan Jepang khususnya dalam mitigasi bencana serta memberikan bekal pengalaman bagi para mahasiswa agar menjadi pemimpin dalam upaya penanganan bencana di negara masing masing.</p>\r\n<p>&nbsp;</p>\r\n<p>Peserta program mendapatkan kuliah mengenai sejarah kebencanaan di Jepang dan upaya mitigasi yang telah dilakukan untuk mengurangi resiko bencana, termasuk potensi kebencanaan di masa depan. Selanjutnya, seluruh peserta bertolak ke Perfektur Hiroshima untuk mengunjungi Asaminami, Yagi Ward, sebuah kawasan yang pernah terdampak bencana longsor dahsyat pada tahun 2014. Para peserta mendapatkan tambahan pengetahuan tentang bentuk kerjasama antara pemerintah dan komunitas masyarakat terdampak untuk bangkit dari keterpurukan akibat bencana yang dibawakan langusng oleh pimpinan komunitas masyarakat setempat. Selain itu, peserta juga mengunjungi pembangunan Sabo DAM Utama sebagai upaya dari pemerintah Jepang dalam pencegahan dampak longsor di masa datang dengan fungsi sebagai bangunan penahan dan pengelak material longsor di sepanjang lembah. Total akan dibangun kurang lebih 30 Sabo DAM.</p>\r\n<p>&nbsp;</p>\r\n<p>Kunjungan ke kompleks perakitan dan museum Mazda - salah satu industri otomotif terbesar di Kota Hiroshima, mengakhiri rangkaian kegiatan di Perfektur Hiroshima. Perjalanan yang melelahkan dengan bus sejauh 82 kilometer, terbayar dengan hangatnya jamuan dan makan malam khas Jepang yang diselenggarakan oleh pihak Universitas Ehime untuk menyambut kedatangan peserta kembali ke Kota Matsuyama. Seluruh kegiatan SSP di Universitas Ehime pun ditutup dengan pemberian sertifikat kepada seluruh peserta yang diserahkan langsung oleh Dekan Faculty of Collaborative Regional Innovation Ehime University, Professor Katsushi Nishimura. Dalam sambutannya, beliau berpesan agar setiap peserta dapat menyebarluaskan informasi yang diperoleh selama di Jepang, setibanya di negara masing-masing.</p>\r\n<p>&nbsp;</p>\r\n<p>Dari Perfektur Ehime, peserta program &lsquo;terbang&rsquo; ke Perfektur Chiba untuk berpartisipasi dalam Fifth International Workshop on Effective Engineering Education/ IWEEE-2019, yang bertempat di National College of Technology Kisarazu Chiba. Dalam lokakarya ini, dosen pembimbing dari masing-masing negara diberikan kesempatan untuk memaparkan makalah studi/penelitian tentang pemanfaatan IoT (Internet of Thing) untuk Kota Cerdas, Kebencanaan dan Perubahan Iklim. Universitas Hasanuddin, diwakili oleh Dr. Eng. Abdul Rachman Rasyid, mempresentasikan Smart Planning dalam membangun Smart Cities dengan kasus Kota Makassar. Setelah sesi pemaparan materi, mahasiswa program SSP bersama peserta workshop yang lain berkesempatan untuk menunjukkan proyek dan penelitian masing-masing dalam sesi presentasi poster. Sesi ini tak kalah pentingnya, karena merupakan ajang berbagi ilmu dan pengalaman antar mahasiswa dari berbagai negara.</p>\r\n<p>&nbsp;</p>\r\n<p>Akhirnya, seluruh rangkaian program kegiatan SSP ditutup dengan kunjungan lapangan terakhir ke Disaster Management Center, sebuah pusat studi pembelajaran tentang bencana di Kota Matsudo, Perfektur Chiba. Menariknya, pembelajaran dilakukan dengan langsung mengalami sendiri simulasi masing-masing bencana, seperti badai, gempa bumi, dan kebakaran. Sebuah pengalaman yang sungguh sangat berkesan karena memberikan sudut pandang yang berbeda tentang bencana itu sendiri seperti diutarakan oleh peserta program.</p>\r\n<p>&nbsp;</p>\r\n<p>Program singkat dan padat selama 7 hari ini mungkin tidak dapat memberikan gambaran menyeluruh tentang Jepang. Namun bagi peserta yang baru pertama kali menginjakkan kaki di Jepang, ini adalah 7 hari paling berkesan dalam hidup masing-masing. Melihat, mendengar, merasakan Jepang dengan seluruh aspeknya &ndash;budaya menghormati aturan, tata krama, kecanggihan teknologi dan tentunya kuliner &ndash; membekas dalam hati setiap peserta, dan sesuai dengan tujuan diselenggarakannya program ini, kesan tersebut menjadi &ldquo;doa, agar diizinkan untuk dapat mengunjungi negara indah ini pada kesempatan yang lain&rdquo; seperti yang disampaikan oleh Indayani salah seorang perserta program.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Alumni Departemen Teknik Perencanaan Wilayah dan Kota (PWK) Fakultas Teknik Universitas Hasanuddin Kembali Sukses Mewakili Indonesia Dalam Sakura Science Plan di Jepang.</p>', 'uploaded_gambar_berita/1607315719.jpg', '2020-12-07 03:24:44'),
(8, 'Departemen Teknik Perencanaan Wilayah dan Kota, Fakultas Teknik, Universitas Hasanuddin untuk Pertama Kalinya Melaksanakan Seminar Hasil Secara Daring', '<p>Seminar Hasil di Teknik Perencanaan Wilayah dan Kota (PWK) UNHAS terlihat berbeda dari tahun sebelumnya. Dimana pelaksanaannya dilakukan secara jarak jauh online (daring). Hal tersebut disebabkan karena adanya pandemi Covid-19 yang mengharuskan semua orang bekerja, belajar, dan beribadah dari rumah.</p>\r\n<p>&nbsp;</p>\r\n<p>Pada Periode IV Tahun Ajaran 2019/2020, Departemen Teknik PWK telah melaksanakan seminar hasil untuk 13 mahasiswa dari tiga angkatan yaitu angkatan 2013, 2015 dan 2016 yang berlangsung pada bulan April-Mei 2020.</p>\r\n<p>&nbsp;</p>\r\n<p>Seminar hasil merupakan salah satu rangkaian pendidikan yang harus ditempuh untuk mendapatkan gelar sarjana pada jenjang pendidikan Strata 1, sehingga merupakan hal yang wajib dilakukan setiap tahunnya oleh departemen.&nbsp; Syarat sebelum pelaksanaan seminar ini, sama dengan periode-periode sebelumnya yaitu jumlah SKS yang harus memenuhi standar sebanyak 144 SKS, serta perlunya kelengkapan dokumen yang harus dipersiapkan mahasiswa.</p>\r\n<p>&nbsp;</p>\r\n<p>Keistimewaan pada periode ini dimana kelengkapan dokumen, asistensi produk tugas akhir, serta pengajuan tanda bukti berupa tanda tangan harus dilakukan secara daring yang menjadi salah satu upaya pemutusan rantai penyebaran Covid-19.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Ujian Seminar Mahasiswa Sri Hasnianti Rahman (19/05)</p>\r\n<p>&nbsp;</p>\r\n<p>Pelaksanaan seminar secara daring ini menggunakan aplikasi zoom yang merupakan aplikasi video conference dan meeting dengan partisipan maksimal 100 orang untuk group meeting. Seminar ini menampilkan 13 penelitian dan/atau perencanaan dari lima laboratorium yaitu Laboratory of Urban Planning and Design, Infrastucuture and Transportation Planning, Housing and Settlements, Waterfront Planning and Development, serta Regional, Tourism and Disaster Mitigation.</p>\r\n<p>&nbsp;</p>\r\n<p>Salah satu persyaratan pelaksanaan seminar ini yaitu kehadiran peserta yang berasal dari kalangan mahasiswa minimal 10 orang serta minimal tiga dari empat dosen pembimbing dan penguji, sehingga seminar ini diharapkan menjadi ajang berbagi ilmu serta menjadi awal munculnya karya-karya kreatif dan inovatif bidang ilmu teknik PWK yang dapat menjadi solusi bagi perencanaan pembangunan nasional.</p>', 'uploaded_gambar_berita/1607315729.png', '2020-12-07 03:26:34'),
(9, 'Calon Wisudawan Departemen Teknik Perencanaan Wilayah dan Kota Fakultas Teknik Universitas Hasanuddin Periode IV Ikuti Yudisium dari Rumah', '<p>Departemen Perencanaan Wilayah dan Kota (PWK) Universitas Hasanuddin (Unhas) menggelar yudisium Periode IV Tahun Ajaran 2019/2020 pada 12 Juni 2020 pukul 10.30 WITA. Berbeda dengan tahun sebelumnya, yudisium periode ini dilaksanakan secara jarak jauh online (daring) akibat adanya pandemi Covid-19 yang mengharuskan setiap orang bekerja, belajar, dan beribadah dari rumah.</p>\r\n<p>&nbsp;</p>\r\n<p>Yudisium Periode IV dilaksanakan via aplikasi zoom yang diikuti oleh 13 mahasiswa calon wisudawan, lima mahasiswa aktif serta dua alumni. Yudisium dibuka oleh Kepala Departemen sekaligus Ketua Prodi S1- PWK, Dr. Ir. Mimi Arifin, M.Si.</p>\r\n<p>&nbsp;</p>\r\n<p>Rangkaian acara kedua dalam yudisium ini yaitu pembacaan predikat kelulusan calon wisudawan yang dibacakan oleh Dr. Eng. Abdul Rachman Rasyid, ST., M.Si selaku Sekretaris Departemen PWK Unhas. Dimana hasil pembacaan tersebut, menyatakan bahwa Regita Chahyani Abdul Gani, angkatan 2016, merupakan wisudawan terbaik Periode IV, Departemen PWK, Fakultas Teknik, Universitas Hasanuddin dengan IPK 3,82 dan predikat kelulusan Cumlaude.</p>\r\n<p>&nbsp;</p>\r\n<p>Yudisium Periode IV Tahun Ajaran 2019/2020 (12/06)</p>\r\n<p>&nbsp;</p>\r\n<p>Kepala Studio Akhir, Dr-techn. Yashinta Kumala Dewi, ST., MIP mengatakan bahwa terlihat transformasi yang sangat besar untuk harapan yang para sarjana baru akan emban dalam dunia profesionalisme perencanaan.</p>\r\n<p>&nbsp;</p>\r\n<p>Disamping kegiatan pembacaaan predikat kelulusan, yudisium ini juga menjadi ajang pembelajaran yang didalamnya memuat nilai kehidupan di masa depan. &ldquo;Para sarjana baru hendaknya mengikuti filosofi ilmu padi yaitu semakin berisi semakin merunduk&rdquo; ungkap Prof. Dr. Ir. Slamet Trisutomo, MS, sedangkan menurut Ir. H. M. Fathien Azmy, M.Si, para sarjana baru hendaknya tidak mengecilkan segala sumbangsi dari para dosen, staff serta orang-orang yang berperan penting dalam hidup para wisudawan.</p>\r\n<p>&nbsp;</p>\r\n<p>Selain dosen, mahasiswa, serta alumni, turut hadir pula orang tua salah satu sarjana baru yang menyampaikan ungkapan syukur untuk segala dedikasi yang diberikan Bapak/Ibu dosen PWK kepada para sajana baru.</p>\r\n<p>&nbsp;</p>\r\n<p>Yudisium diakhiri dengan pesan kepala Departemen PWK untuk meninggikan akhlak dan budi yang luhur dalam menjalani kehidupan selanjutnya, serta menghaturkan permohonan maaf jika terdapat kesalahan atau tindakan keliru yang Bapak/Ibu dosen PWK lakukan selama ini.</p>', 'uploaded_gambar_berita/1607315738.png', '2020-12-07 03:27:06'),
(10, 'Workshop Wilayah dan Kota Maritim Ke-3', '<p>Departemen Perencanaan Wilayah dan Kota Fakultas Teknik Universitas Hasanuddin kembali menyelenggarakan workshop dengan tema Wilayah dan Kota Maritim III. Workshop kali ini dilaksanakan secara virtual melalui aplikasi Zoom. Acara ini diisi oleh 12 pemateri yang merupakan lulusan terbaru Departemen Perencanaan Wilayah dan Kota, Fakultas Teknik, Universitas Hasanuddin Periode III dan IV Tahun Ajar 2019/2020.</p>\r\n<p>&nbsp;</p>\r\n<p>Sambutan Dekan FT-UH dalam Kegiatan Workshop Wilayah dan Kota Maritim Ke-3 Secara Daring</p>\r\n<p>&nbsp;</p>\r\n<p>Workshop yang diselengaarakan pada tanggal 2 Juli 2020 ini dibuka secara langsung oleh Dekan Fakultas Teknik Universitas Hasanuddin, Prof. Dr. Ir. A. Muhammad Arsyad Thaha, M.T. Dalam Sambutannya, beliau mengapresiasi kegiatan ini dengan mengatakan Workshop wilayah dan maritim III ini dapat menjadi sarana untuk mempromosikan hasil-hasil tugas akhir mahasiswa perencanaan wilayah dan kota, apalagi acara yang dilaksanakan berskala nasional dan diikuti oleh mahasiswa(i) dari seluruh Indonesia. Beliau berharap acara ini dapat berkelanjutan dan dikembangkan lagi setiap periodenya. Beliau juga mengusulkan untuk melibatkan pihak stakeholder/pengembang/dll dalam kegiatan seperti ini, sehingga tugas akhir mahasiswa dapat menjadi referensi dalam penentuan kebijakan.</p>\r\n<p>&nbsp;</p>\r\n<p>Selaras dengan Prof. Dr. Ir. A. Muhammad Arsyad Thaha, M.T., Ketua Departemen Perencanaan Wilayah dan Kota Ibu Dr. Ir. Hj. Mimi Arifi, M.Si juga mengapresiasi dan berharap Workshop Wilayah dan Kota Maritim ini dapat diselenggarakan setiap tahunnya serta bernilai ibadah bagi semua pihak terkait.</p>\r\n<p>&nbsp;</p>\r\n<p>Lebih lanjut, tujuan diadakan Workshop Wilayah dan Kota Maritim ini sebagai media untuk Mendiseminasikan hasil-hasil skripsi kepada masyarakat luas utamanya para perencana wilayah dan kota. Disamping itu, acara ini merupakan satu bentuk penghargaan terrhadap kinerja para lulusan yang mampu meraih predikat kelulusan dengan nilai yang membanggakan. Berikut adalah IPK dan predikat kelulusan dari ke-12 pemateri seminar sekaligus fresh graduate (lulusan terbaru) Departemen Perencanaan Wilayah dan Kota Fakultas Teknik Universitas Hasanuddin periode ke IV Tahun 2020.</p>\r\n<p>&nbsp;</p>\r\n<p>NO<span style=\"white-space: pre;\"> </span>STAMBUK<span style=\"white-space: pre;\"> </span>NAMA<span style=\"white-space: pre;\"> </span>NILAI<span style=\"white-space: pre;\"> </span>IPK<span style=\"white-space: pre;\"> </span>PREDIKAT KELULUSAN</p>\r\n<p>1<span style=\"white-space: pre;\"> </span>D52113012<span style=\"white-space: pre;\"> </span>Armand Maulana<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Memuaskan</p>\r\n<p>2<span style=\"white-space: pre;\"> </span>D52115013<span style=\"white-space: pre;\"> </span>Aspar<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>3<span style=\"white-space: pre;\"> </span>D52115311<span style=\"white-space: pre;\"> </span>Abdul Wahid Fakhar<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>4<span style=\"white-space: pre;\"> </span>D52116001<span style=\"white-space: pre;\"> </span>Yultina Tiku Tasik<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Cum laude</p>\r\n<p>5<span style=\"white-space: pre;\"> </span>D52116013<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>6<span style=\"white-space: pre;\"> </span>D52116316<span style=\"white-space: pre;\"> </span>Nur Zahrah Afifah<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>7<span style=\"white-space: pre;\"> </span>D52116504<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Cum laude</p>\r\n<p>8<span style=\"white-space: pre;\"> </span>D52116505<span style=\"white-space: pre;\"> </span>Namirah<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Cum laude</p>\r\n<p>9<span style=\"white-space: pre;\"> </span>D52116506<span style=\"white-space: pre;\"> </span>Sri Hasnianti Rahman<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>10<span style=\"white-space: pre;\"> </span>D5211608<span style=\"white-space: pre;\"> </span>Azizah Putri Abdi<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>11<span style=\"white-space: pre;\"> </span>D52116519<span style=\"white-space: pre;\"> </span>Regita Chahyani Abdul Gani<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Cum laude</p>\r\n<p>12<span style=\"white-space: pre;\"> </span>D52116520<span style=\"white-space: pre;\"> </span>Muh. Faathir Nugraditama<span style=\"white-space: pre;\"> </span>A<span style=\"white-space: pre;\"> </span>Sangat memuaskan</p>\r\n<p>&nbsp;</p>\r\n<p>Peraih IPK Terbaik Untuk Periode Ini Adalah Saudari Regita Chahyani Abdul Gani dengan jumlah IPK 3,97 dengan predikat cumlaude</p>\r\n<p>&nbsp;</p>\r\n<p>Workshop ini adalah yg ke-3 kalinya diadakan sejak 2019. Karena besarnya manfaat yg dihasilkannya, kita berharap acara ini akan terus secara rutin diadakan disetiap periode kelulusan sarjana dan berkembang seiring dengan masukan-masukan yang diberikan setiap periodenya.</p>', 'uploaded_gambar_berita/1607315752.png', '2020-12-07 03:27:36'),
(11, 'Mahasiswa Perencanaan Wilayah dan Kota ‘Sapu Bersih’ Juara di Ajang Indonesian Youth Festival (INOVASI 2019)', '<p>Tiga mahasiswa Perencanaan Wilayah dan Kota (PWK) angkatan 2018, kembali membuktikan eksistensinya dalam bidang keilmiahan. Pasalnya, Minggu, 10 November 2019 kemarin, mahasiswa atas nama Reyhan Regisha, Dwi Rezki Fauziah, dan Fathiyah Adelia itu pun berhasil meraih Juara I LKTIN, Juara I Poster, dan predikat Best Presentation di ajang Indonesian Youth Festival (INOVASI 2019), yang diadakan UKM Keilmuan dan Penalaran Ilmiah (KPI) Universitas Hasanuddin (Unhas).</p>\r\n<p>&nbsp;</p>\r\n<p>INOVASI sendiri merupakan agenda rutin dari UKM KPI Unhas. Serangkaian kegiatannya terdiri dari seleksi karya tulis ilmiah (KTI), yang dipresentasikan pada Jumat (08/11). Pun ditambah Lomba Poster Ilmiah, yang dipamerkan bersamaan dengan presentasi KTI tersebut.</p>\r\n<p>&nbsp;</p>\r\n<p>Kegiatan ini diikuti oleh dua kategori: pelajar SMA dan mahasiswa. Oleh mahasiswa sendiri, dibuka secara nasional untuk pengiriman abstak dan full paper, yang kemudian terpilih delapan universitas dari seluruh Indonesia (yang lolos ke tahap presentasi dan wajib membuat poster ilmiah). Sehingga, peserta memperebutkan dua kategori juara: LKTI (ditambah Best Presentation) dan Poster Ilmiah. Dan dalam sejarahnya, baru pertama kali &lsquo;disapu bersih&rsquo; oleh mahasiswa Unhas itu sendiri.</p>\r\n<p>&nbsp;</p>\r\n<p>Adapun juara berikutnya pada kategori LKTI, diambil oleh tim dari Universitas Brawijaya, dan satu dari Unhas juga. Sedangkan pada kategori poster, Juara 1-3 kompak diraih oleh tiga tim dari tuan rumah.</p>\r\n<p>&nbsp;</p>\r\n<p>Ketiga mahasiswa PWK ini mengambil topik nomadic tourism, dalam penerapan dan inovasinya pada Taman Wisata Perairan Kapoposang, di Kabupaten Pangkajene dan Kepulauan. Hal tersebut sesuai dengan tema yang diusung oleh panitia, yakni Strategi dan Inovasi Generasi Muda Melalui Optimalisasi IPTEKS Guna Menyongsong Indonesia Emas 2045. Di mana, dalam mengembangkan potensi pariwisata di Pangkep tadi, mereka menggunakan teknologi mutakhir dan digandrungi wisatawan untuk meningkatkan taraf hidup masyarakat setempat.</p>\r\n<p>&nbsp;</p>\r\n<p>Hal ini pun menjadi motivasi, tidak hanya bagi mahasiswa PWK, tapi juga segenap setiap jurusan, untuk terus berlatih menuangkan ide-ide inovatif melalui karya ilmiah maupun poster. Diharapkan, hasil baik ini dapat menular ke mahasiswa lain, di departemen, jurusan, hingga setiap fakultas di Unhas. Sebab, yang diharapkan dari mahasiswa, bukan semata-mata IPK tinggi, melainkan juga kontribusinya terhadap negeri.</p>', 'uploaded_gambar_berita/1607315761.jpeg', '2020-12-07 03:28:40'),
(12, 'Departemen Teknik Perencanaan Wilayah dan Kota, Fakultas Teknik, Universitas Hasanuddin Melaksanakan Seminar Nasional Virtual dengan Tema: Menuju Kota Cerdas dan Sehat, Tangguh Pandemik.', '<p>Seminar Nasional Virtual dengan Tema: &ldquo;Menuju Kota Cerdas dan Sehat, Tangguh Pandemik&rdquo; yang dilaksanakan pada Kamis, 24 September 2020 melalui aplikasi zoom yang merupakan aplikasi video conference dan meeting menghadirkan lima pembicara narasumber seperti Prof. dr. Budu, Ph.D., Sp.M(K)., M.Med. (Ketua Satgas Covid-19 Universitas Hasanuddin), Prof. Dr-Ing. Muh. Yamin Jinca, M.STr. (Guru Besar Departemen Perencanaan Wilayah dan Kota Universitas Hasanuddin), Prof. Dr. Ir. Ananto Yudono, M.Eng (Guru Besar Departemen Perencanaan Wilayah dan Kota Universitas Hasanuddin), Dr. Iwan Rudiarto (Ketua Asosiasi Sekolah Perencanaan Indonesia) dan Dr.Phil. Hendricus Andy Simamarta, S.T., M.Si., IAP (Ketua Ahli Perencana).</p>\r\n<p>&nbsp;</p>\r\n<p>Seminar dibuka oleh Prof. Dr. Ir. Sumbangan Baja, M.Phil, Wakil Rektor Bidang Perencanaan, Keuangan, dan Infrastruktur Universitas Hasanuddin. Dalam sambutannya, beliau mengatakan dari seminar ini dapat diperoleh gagasan-gagasan dan inovasi-inovasi baru yang dapat dikembangkan kedalam tema-tema riset untuk tahun mendatang. Beliau menambahkan, dari seminar ini dapat lahir gagasan, ide, ataupun inovasi untuk keluar dari kesulitan masa pandemi yang masih terjadi hingga saat ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Seminar dibagi dalam dua sesi diskusi, peserta yang hadir dipaparkan mengenai kondisi perkotaan dimasa pandemi dan juga konsep menuju kota yang cerdas, sehat dan tangguh pandemik Seminar Nasional ini bertujuan sebagai sarana edukasi bagi mahasiswa dan semua elemen tentang Konsep Menuju Kota Cerdas dan Sehat, Tangguh Pandemik secara khusus.</p>\r\n<p>&nbsp;</p>\r\n<p>Peserta yang hadir tidak hanya berasal dari Universitas Hasanuddin saja, tetapi juga dari berbagai dinas pemerintahan, organisasi, konsultan, dan universitas-universitas yang ada di Indonesia. Para peserta memberikan respon positif karena disuguhkan dengan narasumber yang memberikan materinya dengan santai dan menarik. Sebelum ditutup, acara ini dirangkaikan dengan perumusan hasil mengenai Konsep Menuju Kota Cerdas dan Sehat, Tangguh Pandemik.</p>', 'uploaded_gambar_berita/1607315772.png', '2020-12-07 03:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `id` int(255) NOT NULL,
  `nama` text NOT NULL,
  `nip` varchar(100) NOT NULL,
  `jabatan` text NOT NULL,
  `bidang` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`id`, `nama`, `nip`, `jabatan`, `bidang`, `email`, `foto`, `log`) VALUES
(3, 'Prof. Dr. Ir Ananto Yudono, M.Eng', '123891238123917', 'Guru Besar', 'Perencanaan dan Perancangan Kota', 'yudono@unhas.ac.id', 'uploaded_gambar_dosen/1607314044.png', '2020-12-07 04:07:24'),
(4, 'Prof. Dr. Ir Slamet Trisutomo, MS', '910381026510981', 'Guru Besar', 'Kota dan Kawasan Pantai', 'trisutomo@gmail.com', 'uploaded_gambar_dosen/1607314083.jpg', '2020-12-07 04:08:03'),
(5, 'Prof. Dr.-Ing. Ir. Muh. Yamin Jinca, MS.Tr', '9183931241231230', 'Guru Besar', 'Transportasi', 'yamin_jinca@unhas.ac.id', 'uploaded_gambar_dosen/1607314123.jpg', '2020-12-07 04:08:43'),
(6, 'Dr. Ir. Hj. Mimi Arifin, M.Si', '9890130127321012', 'Lektor Kepala', 'Perumahan dan Permukiman', 'mimiarifin@yahoo.com', 'uploaded_gambar_dosen/1607314169.jpg', '2020-12-07 04:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_headline`
--

CREATE TABLE `tb_headline` (
  `id` int(2) NOT NULL,
  `judul` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_headline`
--

INSERT INTO `tb_headline` (`id`, `judul`, `gambar`, `log`) VALUES
(1, 'Departemen Perencanaan Wilayah & Kota (PWK), Univeritas Hasanuddin', 'uploaded_gambar_headline/1607269781.jpg', '2020-12-06 14:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_informasi`
--

CREATE TABLE `tb_informasi` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `konten` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_informasi`
--

INSERT INTO `tb_informasi` (`id`, `judul`, `konten`, `log`) VALUES
(7, 'WORKSHOP RISET PERENCANAAN WILAYAH DAN KOTA MARITIM KE-3', '<p>Webinar PWK UNHAS</p>\r\n<p>&nbsp;</p>\r\n<p>Workshop</p>\r\n<p>Riset &amp; Perencanaan</p>\r\n<p>Wilayah &amp; Kota Maritim Ke-3</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;BEDAH JUDUL, PROSES &amp; HASIL SKRIPSI PWK UNHAS Periode III &amp; IV, 2020&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p>Kamis, 02 Juli 2020</p>\r\n<p>Pukul 09.00 - 11.30 WITA</p>\r\n<p>&nbsp;</p>\r\n<p>Pengantar:</p>\r\n<p>Dr. Ir. Mimi Arifin, M.Si</p>\r\n<p>(Kepala Dep. PWK UNHAS)</p>\r\n<p>&nbsp;</p>\r\n<p>Sambutan:</p>\r\n<p>Dekan Fak. Teknik UNHAS (atau yang mewakili)</p>\r\n<p>&nbsp;</p>\r\n<p>Presenter:</p>\r\n<p>11 Lulusan Terbaru (Fresh Graduate S1-PWK UNHAS</p>\r\n<p>&nbsp;</p>\r\n<p>Registration:</p>\r\n<p>https://bit.ly/DaftarworkshopWKM3</p>', '2020-12-07 04:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id` int(255) NOT NULL,
  `judul` text NOT NULL,
  `konten` text NOT NULL,
  `gambar` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id` int(2) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kontak`
--

INSERT INTO `tb_kontak` (`id`, `alamat`, `email`, `log`) VALUES
(1, 'Jalan Poros Malino KM. 06, Kabupaten Gowa', 'pwkftuh@unhas.ac.id', '2020-12-06 15:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_misi`
--

CREATE TABLE `tb_misi` (
  `id` int(2) NOT NULL,
  `konten` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_misi`
--

INSERT INTO `tb_misi` (`id`, `konten`, `log`) VALUES
(1, '<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Misi mendukung terealisasinya visi pada tahun 2028 dengan perincian sebagai berikut:</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Pendidikan</strong></span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside; font-family: Didot; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Menyelenggarakan proses belajar mengajar secara berkelanjutan di bidang Ipteks PWK secara umum, dan khususnya yang berwawasan BMI.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Terkemuka dan unggul dalam pembelajaran di bidang Ipteks PWK dan menghasilkan kualitas lulusan yang baik sesuai dengan standar mutu Pendidikan Tinggi.</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Penelitian</strong></span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside; font-family: Didot; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Melakukan penelitian yang relevan dan bermanfaat bagi pengembangan Ipteks PWK baik secara umum maupun yang khusus berwawasan BMI.</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Pengabdian Masyarakat</strong></span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside; font-family: Didot; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Melaksanakan pengabdian kepada masyarakat dalam bidang PWK yang berdasarkan hasil2 penelitian dan isu-isu aktual, khususnya yang berwawasan BMI.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Memanfaatkan sumber daya yang dimiliki untuk berpartisipsi aktif menyelesaikan masalah-masalah kemanusiaan dan lingkungan, dalam domain PWK berdasarkan hasil riset, perencanaan, pengalaman, dan ipteks para dosen.</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Manajemen</strong></span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside; font-family: Didot; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Mengembangkan kurikulum berdasarkan VMTS PS yang antisipatif dan adaptif terhadap dinamika perkembangan isu dan kemajuan Ipteks PWK, serta perubahan tuntutan dunia kerja lulusannya.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Memenuhi ratio jumlah dosen dan mahasiswa sert mengembangkan kualifikasi dosen untuk memenuhi kebutuhan SDM dalam penyelenggaraan tridharma PT sesuai VMTS PS.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Memenuhi standar jumlah dan kualifikasi tenaga kependidikan (tendik) untuk memenuhi kebutuhan SDM seperti tenag administrasi, pustakawan, laboran, dan teknisi yang mendukung kegiatan tridharma PT.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Mengembangkan kemitraan sejajar dengan instansi Dalam Negeri (DN) maupun instansi Luar Negeri (LN) seperti perguruan tinggi, lembaga riset, pemerintah, perusahaan swasta dan Lembaga Swadaya Masyarakat (LSM).</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Mengembangkan sarana dan prasarana yang mendukung kegiatan tridharma PT.</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: 10pt;\"><strong style=\"box-sizing: border-box;\">Tata Nilai</strong></span></p>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Menjaga, mengembangkan, dan menerapkan nilai, moral dan etika akademik pada PS S1 PWK berdasarkan kebijakan Universitas Hasanuddin, yaitu:</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside; font-family: Didot; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Integritas, mewakili sifat jujur, berani, bertanggung jawab dan teguh dalam pendirian.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Inovatif, merupakan kombinasi dari kreatif, berorientasi mutu, mandiri dan kepeloporan.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Katalitik, mewakili etika, sopan santun, keluwesan, keterbukaan dalam berkomunikasi dan berkerjasama dengan mitra sejajar.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: 10pt;\">Arif: manifestasi kepatutan, adil dan beradab, holistik dan asimilatif.</span></li>\r\n</ul>', '2020-12-06 15:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sasaran`
--

CREATE TABLE `tb_sasaran` (
  `id` int(2) NOT NULL,
  `konten` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sasaran`
--

INSERT INTO `tb_sasaran` (`id`, `konten`, `log`) VALUES
(1, '<table style=\"border-spacing: 0px; font-family: Didot; background-color: #ffffff;\" border=\"4\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\">&nbsp;</p>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Sasaran</strong></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Strategi Pencapaian</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\" rowspan=\"4\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Mahasiswa</strong></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\">\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2020 dapat dicapai 100% mahasiswa menyelesaikan studi tepat waktu (4 tahun) dan IPK di atas 3,0.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Menerapkan metode pembelajaran Student Centre Learning (SCL),&nbsp;<em style=\"box-sizing: border-box;\">Labo Based Education</em>&nbsp;(LBE), evaluasi studi melalui penasihat akademik dan konseling khususnya bagi mahasiwa yang mengalami masalah dalam proses belajar mengajar dilakukan perhatian khusus sesuai peraturan akademik (lihat lampiran peraturan akademik unhas Bab VI Pasal 22 dan 23 tahun 2010).</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2020 dapat dicapai 80% lulusan dengan waktu tunggu 3 bulan untuk mendapatkan pekerjaan pertama.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Memberdayakan alumni dalam hal informasi lapangan kerja dan pemagangan.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2020 menghasilkan lulusan yang memiliki kompetensi akademik dan profesional, menguasai dasar-dasar keilmuan dan praktek serta berdaya saing di bidang pengembangan wilayah dan kota, termasuk perencanaan dan perancangan wilayah dan kota.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Menyiapkan kurikulum dan RPS, yang menggunakan metode&nbsp;<em style=\"box-sizing: border-box;\">Student Centre Learning</em>&nbsp;(SCL) dan&nbsp;<em style=\"box-sizing: border-box;\">Labo Based Education</em>&nbsp;(LBE) yang substansinya mendukung kompetensi di atas.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2018 menghasilkan mahasiswa dan lulusan yang memiliki nilai integritas, inovatif, katalitik, dan kearifan dalam proses belajar mengajar maupun berkarier.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Mempersiapkan prasarana dan sarana serta program dan kegiatan yang mendukung hubungan timbal balik antara dosen dan mahasiwa dalam proses belajar mengajar, penelitian dan pengabdian masyarakat.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\" rowspan=\"3\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Dosen</strong></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\">\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2023 tercapai peningkatan kualifikasi dosen, 5 guru besar, 15 Doktor, yang kompetensinya sesuai dengan kebutuhan kurikulum PWK.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Menyusun roadmap prodi tentang peningkatan kualifikasi dosen dan rekrutmen dosen baru dengan kualifikasi doktor atau yang potensial untuk lanjut ke S3 sesuai kebutuhan kurikulum.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2023 dapat dicapai 100% dosen mempunyai kompetensi dan kapasitas dalam penelitian, dalam arti setiap dosen melakukan penelitian minimal 1 setiap tahun dan paper hasil penelitiannya diterbitkan pada jurnal yang bereputasi sebagai peneliti utama.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Memotivasi dosen untuk melakukan penelitian melalui pelatihan-pelatihan bidang penelitian maupun publikasi ilmiah dan keikutsertaan dosen pada pertemuan-pertemuan ilmiah baik tingkat nasional maupun internasional, menghimbau para peneiti utama untuk senantiasa mengikutsertakan dosen muda pada kegiatan penelitian, merampungkan roadmap penelitian prodi yang dapat memudahkan dosen dalam menentukan objek penelitian atau kasus yang akan diteliti. Kegiatan labo menjadi wadah bagi para dosen untuk mengembangkan kapasitas dalam kegiatan penelitian.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2023 dapat dicapai 100% dosen mempunyai kompetensi dan kapasitas dalam melakswanakan kegiatan pengabdian kepada masyarakat (PkM) minimal 1 kegiatan dalam setahun yang berbasis pada hasil riset, perencanaan, dan/atau pengalaman dan/atau IPTEKS yang dimiliki.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Memotivasi dosen untuk melakukan kegiatan abdimas melalui pelatihan-pelatihan bidang abdimas, menindaklanjuti hasil penelitian dan/atau perencanaan yang telah dilakukan oleh masing-masing dosen dalam bentuk kegiatan abdimas, membuka peluang kepada setiap dosen unutk ikut terlibat dalam kegiatan abdimas melalui kerjasama-kerjasama dengan institusi-institusi lain termasuk pemerintah. Kegiatan labo menjadi wadah bagi para dosen untuk mengembangkan kapasitas dalam kegiatan abdimas.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\" rowspan=\"2\">\r\n<p style=\"box-sizing: border-box; font-size: 1em; line-height: 25.6px; font-family: Didot, serif;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Tenaga Kependidikan</strong></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\">\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2020 seluruh tenaga kependidikan akademik, administrasi dan keuangan terampil dalam menyusun/mengolah Database SIM-Unhas (termasuk bidang Akademik, Administrasi dan keuangan, kemahasiswaan) dan Portal Akademik-UH.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Mengikutkan tenaga kependidikan dalam pelatihan-pelatihan sesuai dengan deskripsi kerjanya, dan membangun sistem monev kinerja tenaga akademik yang efektif.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Tahun 2020 seluruh tenaga kependidikan non akademik, administrasi dan keuangan mampu melaksanakan tugas sesuai deskripsi kerjanya.</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"box-sizing: border-box; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&nbsp;</span>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Mengikutkan tenaga kependidikan dalam pelatihan-pelatihan sesuai dengan deskripsi kerjanya, dan membangun sistem monev kinerja tenaga akademik yang efektif.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2020-12-06 15:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah_singkat`
--

CREATE TABLE `tb_sejarah_singkat` (
  `id` int(2) NOT NULL,
  `konten` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sejarah_singkat`
--

INSERT INTO `tb_sejarah_singkat` (`id`, `konten`, `log`) VALUES
(1, '<p class=\"MsoListParagraphCxSpFirst\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 12pt 0in 10pt 0.25in; text-align: justify; text-indent: 40.5pt;\"><span style=\"box-sizing: border-box; font-family: \'trebuchet ms\', geneva; font-size: 12pt;\"><span lang=\"IN\" style=\"box-sizing: border-box;\">Program Studi&nbsp;</span>(Prodi)&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">Pe</span>rencanaan<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;Wilayah dan Kota (PWK) Fakultas Teknik Unhas terbentuk sejak tahun 2004 di bawah Jurusan Arsitektur. Dengan segala dukungan sumberdaya yang ada,&nbsp;</span>saat ini&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">Prodi PWK berhasil mendapatkan p</span>redikat<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;Akreditasi &ldquo;</span>A<span lang=\"IN\" style=\"box-sizing: border-box;\">&rdquo; dari B</span>AN-PT<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;berdasarkan SK&nbsp;</span>No. 139<span lang=\"IN\" style=\"box-sizing: border-box;\">/</span>SK/<span lang=\"IN\" style=\"box-sizing: border-box;\">BAN-PT/A</span>kred<span lang=\"IN\" style=\"box-sizing: border-box;\">/S1/I</span>V<span lang=\"IN\" style=\"box-sizing: border-box;\">/201</span>5&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;tanggal&nbsp;</span>6 April<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;201</span>5<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;sampai&nbsp;</span>6 April&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">20</span>20<span lang=\"IN\" style=\"box-sizing: border-box;\">. Dari mekanisme pelaksanaan perbagai program dan kegiatan Tri Dharma Perguruan Tinggi akhirnya Prodi PWK bersama Prodi Arsitektur (di bawah Jurusan Arsitektur) telah mendapatkan sertifikat ISO 9001:2008 khusus dalam bidang manajemen pendidikan. Prestasi tersebut diraih berkat dukungan dan komitmen dari seluruh&nbsp;</span>c<span lang=\"IN\" style=\"box-sizing: border-box;\">ivitas-akademika Prodi PWK.</span></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 12pt 0in 10pt 0.25in; text-align: justify; text-indent: 40.5pt;\"><span lang=\"IN\" style=\"box-sizing: border-box; font-family: \'trebuchet ms\', geneva; font-size: 12pt;\"><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">Beberapa permasalahan strategis yang perlu mendapat solusi prioritas di prodi PWK antara lain: walaupun rata-rata IPS mahasiswa tergolong tinggi (&gt;3,0) namun kurikulum Prodi PWK belum sepenuhnya menjawab tuntutan&nbsp;</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">outcomes lulusan Prodi sesuai KKNI</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">, sehingga perlu&nbsp;</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">evaluasi&nbsp;</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">termasuk untuk men</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">ingkatkan&nbsp;</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">akreditasi prodi</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">&nbsp;pada tingkat AUN</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">; metode pembelajaran&nbsp;</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">belum terumuskan</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">berdasarkan capaian pembelajaran mata kuliah yang ditunjang berbagai&nbsp;</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">pustaka</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">&nbsp;ilmiah</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">,&nbsp;</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">walaupun telah tersedia buku ajar namun belum tersusun modul-</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">modul ajar</span><span style=\"box-sizing: border-box; text-indent: 40.5pt;\">&nbsp;tiap mata kuliah</span><span lang=\"IN\" style=\"box-sizing: border-box; text-indent: 40.5pt;\">; masih rendahnya penguasaan Ipteks mahasiswa seperti terlihat pada rata-rata TOEFL tercapainya profil&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">lulusan</span>&nbsp;yang berdaya saing<span lang=\"IN\" style=\"box-sizing: border-box;\">; masih belum terpadunya tema-tema riset&nbsp;</span>labo&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">dengan&nbsp;<em style=\"box-sizing: border-box;\">roadmap</em>&nbsp;penelitian sehingga kurang&nbsp;</span>menghasilkan riset unggulan<span lang=\"IN\" style=\"box-sizing: border-box;\">; belum optimalnya pengaplikasian hasil riset/perencanan melalui kegiatan PkM yang melibatkan stakeholders; belum optimalnya publikasi&nbsp;</span>internasional bereputasi oleh&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">tenaga pendidik maupun mahasiswa; belum&nbsp;</span>optimalnya&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">database&nbsp;</span>akademik/SDM&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">yang dapat memudahkan informasi prodi PWK</span>. Permasalahan-permasalahan tersebut perlu dirumuskan sehingga ke depan dapat tentukan berbagai strategi yang efisien dan efektif dalam penyelesaiannya, melalui optimalisasi pemberdayaan berbagai sumberdaya prodi, baik dosen, pegawai, mahasiswa, prasarana, dan sarana yang ada.</span></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 12pt 0in 10pt 0.25in; text-align: justify; text-indent: 40.5pt;\"><span style=\"box-sizing: border-box; font-family: \'trebuchet ms\', geneva; font-size: 12pt;\"><span lang=\"IN\" style=\"box-sizing: border-box;\">Akreditasi&nbsp;</span>a<span lang=\"IN\" style=\"box-sizing: border-box;\">wal&nbsp;</span>Prodi PWK pada tahun 2009 diperoleh&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">dari BAN-PT dengan&nbsp;</span>predikat&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">Akreditasi &ldquo;B&rdquo;</span><span lang=\"IN\" style=\"box-sizing: border-box;\">di</span>&nbsp;bawah kepemimpinan Ketua Prodi&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">Prof. Ir Bambang Heryanto, MSc PhD hingga Th 2011</span>. Pada masa tersebut prodi PWK menerapkan k<span lang=\"IN\" style=\"box-sizing: border-box;\">urikulum berbasis S</span>tudent Center&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">L</span>earning. Selanjutnya pada tahun 2010 Prodi PWK mengembangkan pendekatan pembelajaran&nbsp;<span lang=\"IN\" style=\"box-sizing: border-box;\">Labo-</span>B<span lang=\"IN\" style=\"box-sizing: border-box;\">ase</span>&nbsp;Education<span lang=\"IN\" style=\"box-sizing: border-box;\">&nbsp;(LBE)&nbsp;</span>sesuai dengan strategi pengembangan Fakultas Teknik Unhas tahun 2010. Sejak tahun 2011, Prodi PWK menerapkan Kurikulum berbasis kompetensi (KBK) melalui pendekatan pembelajaran Labo Based Education (LBE). Karena itu kurikulum Tahun 2011 tersebut disebut Kurikulum KBK-LBE 2011.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 12pt 0in 10pt 0.25in; text-align: justify; text-indent: 40.5pt;\"><span style=\"box-sizing: border-box; font-family: \'trebuchet ms\', geneva; font-size: 12pt;\">Pada tahun 2012, Prodi PWK dipimpin oleh Dr. Ir. Arifuddin, M.T. Pada masa ini mekanisme pengelolaan kegiatan tri dharma perguruan tinggi Prodi PWK semakin dikembangkan seiring dengan berbagai kebijakan baik kebijakan baru di tingkat kementerian (Dikti) seperti penerapan dana BOPTN untuk pengembangan Prodi, maupun kebijakan pada tingkat universitas. Pengembangan prodi terutama terlihat dengan dimulainya proses perpindahan manajemen prodi dari Kampus Tamalanrea ke Kampus Teknik Gowa. Pengembangan pembelajaran dalam periode ini ditandai dengan dilaksanakannya evaluasi minor kurikulum prodi pada Tahun 2012 dengan substansi utama pembahasan tentang silabus matakuliah yang diikuti dengan penyusunan GBRP. Pada Tahun 2013 kembali dilakukan peninjauan kurikulum dengan materi pembahasan tentang kejelasan substansi khusus pada Mata Kuliah Core (Studio 1 sampai Studio 6, serta LBE riset/perencanaan).</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 12pt 0in 10pt 0.25in; text-align: justify; text-indent: 40.5pt;\"><span style=\"box-sizing: border-box; font-family: \'trebuchet ms\', geneva; font-size: 12pt;\">Sejak tahun 2013 hingga saat ini telah dilaksanakan berbagai program kegiatan pengembangan kapasistas prodi yang didanai dari dana BOPTN, dengan beberapa kegiatan yang dilaksanakan di antaranya adalah: penyusunan Buku Ajar 15 MK, penyusunan Roadmap Prodi dan Riset Unggulan Prodi PWK, Peningkatan publikasi internasional, dan revisi kurikulum berbasis standar KKNI. Salah satu predikat terhormat yang diperoleh prodi pada tahun 2014 adalah dengan diperolehnya peningkatan akreditasi Prodi PWK menjadi &ldquo;A&rdquo;. Hal tersebut merupakan hasil kerja keras yang dilakukan oleh seluruh civitas akademika Prodi PWK. Selanjutnya pada tahun ini (Tahun 2015) diprogramkan lagi kegiatan evaluasi kurikulum melalui program peningkatan kapasitas program studi yang didanai dari dana BOPTN 2015. Kurikulum yang disusun pada tahun 2016 disebut Kurikulum Pendidikan Tinggi (KPT-2016) yang akan diberlakukan pada Tahun 2016. Evaluasi kurikulum kali ini tergolong evaluasi total, sehingga hasil penyusunan kurikulum dari kurikulum KBK-LBE 2011 menuju Kurikulum KPT-2016 akan mengalami beberapa perubahan dan dengan demikian akan dilakukan mekanisme penyetaraan pada masa pemberlakukannya pada tahun ajaran 2016.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 12pt 0in 10pt 0.25in; text-align: justify; text-indent: 40.5pt;\"><span style=\"box-sizing: border-box; font-family: \'trebuchet ms\', geneva; font-size: 12pt;\">Kurikulum baru KPT-2016 merupakan kurikulum baru yang diharapkan dapat memenuhi beberapa substansi penting dan populer seperti yang dikembangkan pada beberapa perguruan tinggi di Indonesia, terutama sekolah-sekolah perencanaan. Substansi tersebut terutama tentang penyesuaian kurikulum dengan Kerangka Kualifikasi Nasional Indonesia (KKNI) berdasarkan Perpres No. 8 Tahun 2012, berbagai substansi yang termuat dalam&nbsp; UU No. 12 Tahun 2012 Tentang Pendidikan Tinggi, serta berbagai substansi yang damanatkan dalam Peraturan Menteri Pendidikan dan Kebudayaan RI No. 49 Tahun 2014 Tentang Standat Nasional Perguruan Tinggi (SNPT), terutama menyangkut kejelasan kesesuaian matakuliah Prodi dengan bahan kajian yang dikembangkan, sesuai dengan capaian pembelajaran lulusan yang diharapkan. Karena itu, maka mekanisme evaluasi atau penyusunan kurikulum KPT-2016 relatif lebih kompleks, terutama dengan diperlukannya pelibatan beberapa unsur dalam proses penyusunannya termasuk melalui informasi dari pasar dan berbagai stakeholders Prodi PWK, informasi dari Assosiasi Sekolah Perencanaan Indonesia (ASPI), informasi dari seluruh dosen pengampu, pegawai dan mahasiswa Prodi PWK. Setelah informasi tersebut teridentifikasi, selanjutnya dilakukan kesepakatan untuk menentukan profil lulusan Prodi PWK atau harapan tentang perkiraan fungsi unggulan yang akan diemban alumni ketika lulus sesuai dengan visi dan misi prodi. Setelah profil lulusan ditentukan, kemudian dilakukan penentuan rumusan Capaian Pembelajaran lulusan (Outcomes) dan penentuan Bahan Kajian Prodi. Terutama dari kedua unsur terakhir tersebut, selanjutnya melalui kebersamaan dosen pengampu secara partisipatif, dapat dirumuskan pengembangan jenis mata kuliah serta bobot mata kuliah dalam bentuk struktur mata kuliah. Akhirnya berdasarkan struktur mata kuliah tersebut selanjutnya dapat disusun kurikulum baru KPT-2016 yang sedianya akan diberlakukan pada tahun 2016.</span></p>', '2020-12-06 15:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id` int(255) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` text NOT NULL,
  `jabatan` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id`, `nip`, `nama`, `jabatan`, `email`, `foto`, `log`) VALUES
(3, '198005152009101001', 'Haerul Muayyar, S.Sos', 'Staf Administrasi', 'haerul@yahoo.com', 'uploaded_gambar_staff/1607314308.png', '2020-12-07 04:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tujuan`
--

CREATE TABLE `tb_tujuan` (
  `id` int(2) NOT NULL,
  `konten` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tujuan`
--

INSERT INTO `tb_tujuan` (`id`, `konten`, `log`) VALUES
(1, '<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Tujuan Umum:&nbsp;</strong>Untuk menghasilkan cendekiawan profesional yang antisipatif dan akomodatif terhadap dinamika perkembangan isu dan Ipteks PWK, perubahan tuntutan dunia kerjanya, serta menghasilkan karya ilmiah dan perencanaan di bidang PWK.</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box;\">Tujuan Khusus:</strong></span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style-position: inside; font-family: Didot; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Untuk menghasilkan cendekiawan yang profesional dalam pengembangan dan penerapan Ipteks PWK khususnya yang berwawasan BMI.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Untuk menghasilkan cendekiawan yang profesional dalam kompetensi pendukung karier utamanya sebagai ahli perencana bidang PWK,&nbsp; serta keahlian Iptek khusus yang menjadi bidang kajian labo-labo di lingkungan Departemen PWK: perencanaan wilayah, pariwisata dan mitigasi bencana; perencanaan dan perancangan kota; perencanaan kota tepian air; perencanaan perumahan dan permukiman; serta perencanaan infrastruktur dan transportasi.&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 10px 0px; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Untuk membangun kompetensi lain bagi lulusan yang gayut dan sangat diperlukan dalam karier di bidang PWK seperti surveyor, analis, ahli GIS dan data spasial, animator, dan programmer berbasis computer.</span></li>\r\n</ul>', '2020-12-06 15:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(255) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `nim`, `nama_lengkap`, `password`, `log`) VALUES
(4, 'D041171531', 'Min Idznullah Said', '$2y$10$hXdjZ/StVRcNGHaCHveQi.alSUKsfiP0lCkAFy421RGj3k5vvTM4.', '2020-12-07 04:29:32'),
(5, 'D041171304', 'Ilham Ramli', '$2y$10$PqqHOY3vqIHN6h708PmCce2nqhDUrfIk/yq9ke9iXaHVr2DZSq3Cq', '2020-12-07 04:29:47'),
(6, 'D041171007', 'Suciati', '$2y$10$yvsX7EZdSxo2A/rNYSpoYeQWHtyR6HwAYLrd2MV7nEwBHfe7F33Tm', '2020-12-07 04:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visi`
--

CREATE TABLE `tb_visi` (
  `id` int(2) NOT NULL,
  `konten` text NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_visi`
--

INSERT INTO `tb_visi` (`id`, `konten`, `log`) VALUES
(1, '<p class=\"MsoListParagraph\" style=\"box-sizing: border-box; line-height: 24px; font-family: Didot, serif; background-color: #ffffff; margin: 0in 0in 10pt 0.25in; text-align: justify; text-indent: -0.25in;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">Dengan mengacu pada rumusan visi Universitas, Fakultas FT-Unhas di atas maka visi PS S1 PWK FT-Unhas dirumuskan:</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 25.6px; font-family: Didot, serif; background-color: #ffffff; text-align: center;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 10pt; font-family: arial, helvetica, sans-serif;\">&ldquo;<strong style=\"box-sizing: border-box;\">Menjadi Program Studi Sarjana Perencanaan Wilayah dan Kota terkemuka&nbsp;</strong><strong style=\"box-sizing: border-box;\">di Asia&nbsp;</strong><strong style=\"box-sizing: border-box;\">yang berwawasan Benua Maritim Indonesia (BMI)</strong><strong style=\"box-sizing: border-box;\">&nbsp;Tahun 2028</strong>&rdquo;</span></em></p>', '2020-12-06 15:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_headline`
--
ALTER TABLE `tb_headline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_misi`
--
ALTER TABLE `tb_misi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sasaran`
--
ALTER TABLE `tb_sasaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sejarah_singkat`
--
ALTER TABLE `tb_sejarah_singkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `tb_visi`
--
ALTER TABLE `tb_visi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_headline`
--
ALTER TABLE `tb_headline`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_misi`
--
ALTER TABLE `tb_misi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sasaran`
--
ALTER TABLE `tb_sasaran`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sejarah_singkat`
--
ALTER TABLE `tb_sejarah_singkat`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_visi`
--
ALTER TABLE `tb_visi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
