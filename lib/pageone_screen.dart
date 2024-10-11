import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageoneScreen extends StatelessWidget {
  const PageoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: Column(
          children: [
            // Bagian ini merupakan Container yang sudah ada
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0XFF143191),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  // Tambahkan tombol kembali di sini
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0XFFFFFFFF)),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fungsi untuk kembali ke halaman sebelumnya
                    },
                  ),
                  // Ruang antara tombol kembali dan teks
                  const SizedBox(width: 8),
                  const Text(
                    "Genetika",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12), // Jarak antara container atas dan konten
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      _buildGeneticsOverview(context),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: 322,
                        child: const Text(
                          "1. Pengertian Genetika\r\n   Genetika adalah cabang biologi yang mempelajari tentang pewarisan sifat dari satu generasi ke generasi berikutnya. Ilmu ini mempelajari bagaimana gen berfungsi dan bagaimana karakteristik organisme diwariskan.\r\n\r\n2. Hukum Mendel\r\nGregor Mendel adalah bapak genetika modern yang menemukan hukum pewarisan sifat melalui percobaan dengan tanaman kacang ercis. \r\nHukum Mendel I (Segregasi): Setiap individu memiliki dua alel untuk setiap sifat, dan alel ini akan dipisahkan (segregasi) selama pembentukan gamet, sehingga setiap gamet hanya menerima satu alel.\r\nHukum Mendel II (Asortasi Independen): Alel-alel dari sifat yang berbeda akan diwariskan secara independen satu sama lain.\r\n\r\n3. DNA dan RNA\r\nDNA (Deoxyribonucleic Acid): Molekul yang mengandung informasi genetik. DNA terdiri dari dua untai yang membentuk heliks ganda, dengan nukleotida yang tersusun atas gula deoksiribosa, fosfat, dan empat basa nitrogen (Adenin, Timin, Sitosin, Guanin).\r\nRNA (Ribonucleic Acid): Molekul yang membantu dalam proses sintesis protein. RNA terdiri dari satu untai, dengan gula ribosa dan basa nitrogen (Adenin, Urasil, Sitosin, Guanin).\r\n\r\n4. Replikasi DNA\r\n   Proses di mana DNA membuat salinan dirinya sendiri sebelum sel membelah. Replikasi DNA bersifat semi-konservatif, di mana setiap untai DNA baru terdiri dari satu untai lama dan satu untai baru.\r\n\r\n5. Transkripsi dan Translasi\r\nTranskripsi: Proses penyalinan kode genetik dari DNA ke RNA di dalam nukleus. RNA hasil transkripsi disebut mRNA (messenger RNA).\r\nTranslasi: Proses di mana mRNA diterjemahkan menjadi urutan asam amino untuk membentuk protein. Translasi terjadi di ribosom dan melibatkan tRNA (transfer RNA) yang membawa asam amino ke ribosom.\r\n\r\n6. Mutasi\r\nMutasi adalah perubahan pada urutan basa dalam DNA. Mutasi dapat terjadi secara spontan atau karena pengaruh lingkungan (mutagen). \r\nAda dua jenis mutasi utama:\r\n    1.  Mutasi Gen: Perubahan dalam urutan nukleotida suatu gen.\r\n    2. Mutasi Kromosom: Perubahan dalam struktur atau jumlah kromosom.\r\n\r\n7. Pewarisan Sifat\r\nSifat-sifat yang diwariskan melalui gen dapat dominan atau resesif. \r\nAlel Dominan: Alel yang dapat menutupi pengaruh alel lain.\r\nAlel Resesif: Alel yang pengaruhnya ditutupi oleh alel dominan.\r\n\r\n8. Penerapan Genetika\r\nPenerapan di Bidang Kedokteran: Genetika digunakan untuk memahami penyakit genetik, terapi gen, dan teknik diagnosis genetik.\r\nPenerapan di Bidang Pertanian: Pemuliaan tanaman dan hewan, serta rekayasa genetika untuk menciptakan varietas unggul.\r",
                          maxLines: 54,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 8,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
        bottomNavigationBar: _buildPracticeSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneticsOverview(BuildContext context) {
    return SizedBox(
      height: 42,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 2,
                      width: 28,
                      child: SvgPicture.asset(
                        "assets/images/img_arrow_1.svg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 74),
                  const Text(
                    "Genetika",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPracticeSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            height: 30,
            margin: const EdgeInsets.only(bottom: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0XFF143191),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 6,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Latihan Soal",
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
