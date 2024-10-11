import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PagethreeScreen extends StatelessWidget {
  const PagethreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: Column(
          children: [
            // Bagian Container untuk header dengan tombol Kembali
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0XFF143191),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  // Tombol Kembali
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Color(0XFFFFFFFF)),
                    onPressed: () {
                      Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
                    },
                  ),
                  const SizedBox(width: 8), // Ruang antara tombol dan teks
                  const Text(
                    "Sistem Peredaran Darah",
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
                      _buildArrowStackSection(context),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 294,
                        child: Text(
                          "Fungsi Utama\nSistem peredaran darah mengangkut oksigen, nutrisi, hormon, dan zat-zat sisa ke seluruh tubuh serta menjaga keseimbangan suhu dan pH.\nKomponen Utama\nJantung: Organ pemompa darah, terdiri dari 4 ruang (2 atrium dan 2 ventrikel).\nPembuluh Darah: Terdiri dari:\nArteri: Membawa darah keluar dari jantung (kaya oksigen).\nVena: Mengembalikan darah ke jantung (kaya karbon dioksida).\nKapiler: Tempat pertukaran zat antara darah dan jaringan.\nJenis Peredaran Darah\nPeredaran darah besar: Jantung ke seluruh tubuh, kembali ke jantung.\nPeredaran darah kecil: Jantung ke paru-paru untuk pertukaran oksigen dan karbon dioksida.\nDarah\nSel Darah Merah: Mengangkut oksigen menggunakan hemoglobin.\nSel Darah Putih: Melawan infeksi.\nTrombosit: Membantu pembekuan darah.\nPlasma: Cairan darah yang membawa nutrisi, hormon, dan zat sisa.\nJantung dan Siklus Kerja\nJantung berdenyut dalam dua fase:\nSistol: Pemompaan darah keluar.\nDiastol: Pengisian darah ke jantung.",
                          maxLines: 30,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: _buildExerciseButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowStackSection(BuildContext context) {
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
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 6,
                          right: 12,
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SizedBox(
                                  height: 2,
                                  width: 28,
                                  child: SvgPicture.asset(
                                    "assets/images/img_arrow_1.svg",
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 74),
                              child: Text(
                                "Genetika",
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
  Widget _buildExerciseButtonSection(BuildContext context) {
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
          )
        ],
      ),
    );
  }
}
