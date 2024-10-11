import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PagefourScreen extends StatelessWidget {
  const PagefourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: Column(
          children: [
            // Bagian ini merupakan Container untuk tombol kembali
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0XFF143191),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  // Tombol kembali
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0XFFFFFFFF)),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fungsi untuk kembali ke halaman sebelumnya
                    },
                  ),
                  // Ruang antara tombol kembali dan teks
                  const SizedBox(width: 8),
                  const Text(
                    "Ekosistem dan Lingkungan",
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
                  padding: EdgeInsets.only(
                    left: 14,
                    top: 14,
                    right: 14,
                  ),
                  child: Column(
                    children: [
                      _buildEcosystemOverview(context),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 302,
                        child: Text(
                          "1. Pengertian Ekosistem\nEkosistem adalah sistem yang terdiri dari interaksi antara makhluk hidup (biotik) dan lingkungan fisik (abiotik) di suatu area tertentu. Ekosistem dapat berskala kecil (kolam) hingga besar (hutan, laut).\n2. Komponen Ekosistem\nKomponen Biotik: Semua makhluk hidup, seperti tumbuhan, hewan, jamur, dan mikroorganisme. Mereka berperan sebagai produsen, konsumen, dan pengurai.\nProdusen: Organisme yang memproduksi makanan (contoh: tumbuhan melalui fotosintesis).\nKonsumen: Organisme yang mengonsumsi produsen (herbivora, karnivora, omnivora).\nPengurai: Organisme yang menguraikan bahan organik menjadi zat yang dapat digunakan kembali oleh produsen (contoh: bakteri, jamur).\nKomponen Abiotik: Faktor-faktor non-hidup yang memengaruhi ekosistem, seperti cahaya, suhu, air, tanah, dan nutrisi.\n3. Proses Dalam Ekosistem\nSiklus Nutrisi: Proses perpindahan dan pengolahan nutrisi di antara komponen biotik dan abiotik. Contoh: siklus karbon, nitrogen, dan air.\nJaring-jaring Makanan: Hubungan makan-memakan antarorganisme yang menggambarkan alur energi dan bahan makanan di ekosistem.\n4. Jenis Ekosistem\nEkosistem Darat: Seperti hutan, padang rumput, gurun.\nEkosistem Perairan: Seperti laut, sungai, dan danau.\nEkosistem Buatan: Seperti taman, kebun, dan pertanian.\n5. Interaksi Organisme dalam Ekosistem\nPredasi: Hubungan antara pemangsa dan mangsa.\nKompetisi: Persaingan antarorganisme untuk mendapatkan sumber daya.\nSimbiosis: Hubungan yang saling menguntungkan antara dua spesies (contoh: mutualisme, komensalisme, parasitisme).\n6. Lingkungan dan Dampaknya\nLingkungan mencakup semua faktor yang mempengaruhi ekosistem, termasuk faktor fisik, biologis, dan manusia. Aktivitas manusia seperti deforestasi, pencemaran, dan perubahan iklim dapat mengganggu keseimbangan ekosistem.",
                          maxLines: 42,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 6)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 6)
          ],
        ),
        bottomNavigationBar: _buildPracticeSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEcosystemOverview(BuildContext context) {
    return SizedBox(
      height: 42,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 6,
                          right: 12,
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: SizedBox(
                                  height: 2,
                                  width: 28,
                                  child: SvgPicture.asset(
                                    "assets/images/img_arrow_1.svg",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 74),
                              child: Text(
                                "Ekosistem",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            ],
          )
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
            margin: EdgeInsets.only(bottom: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Color(0XFF143191),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 6,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Latihan Soal",
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
