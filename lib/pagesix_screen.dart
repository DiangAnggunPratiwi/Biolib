import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PagesixScreen extends StatelessWidget {
  const PagesixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: Column(
          children: [
            // Bagian Container untuk tombol kembali dan judul
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
                    icon: Icon(Icons.arrow_back, color: Color(0XFFFFFFFF)),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fungsi untuk kembali ke halaman sebelumnya
                    },
                  ),
                  // Ruang antara tombol kembali dan teks
                  const SizedBox(width: 8),
                  const Text(
                    "Evolusi", // Judul halaman
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
                      _buildEvolutionStack(context),
                      SizedBox(height: 14),
                      Text(
                        "1. Pengertian Evolusi\nEvolusi adalah proses perubahan bertahap dalam spesies sepanjang waktu, yang menyebabkan pembentukan spesies baru dari nenek moyang yang sama.\n\n"
                        "2. Teori Evolusi\nTeori Lamarck: Mengusulkan bahwa spesies berubah karena kebutuhan dan penggunaan organ; karakter yang diperoleh diwariskan ke generasi berikutnya.\n"
                        "Teori Darwin: Mengajukan konsep seleksi alam, di mana individu dengan sifat yang lebih baik dalam beradaptasi dengan lingkungan memiliki peluang lebih besar untuk bertahan hidup dan bereproduksi.\n\n"
                        "3. Seleksi Alam\nProses di mana individu yang lebih baik beradaptasi dengan lingkungannya akan memiliki peluang lebih besar untuk bertahan hidup dan memiliki keturunan. Ini menghasilkan perubahan genetik dalam populasi dari generasi ke generasi.\n\n"
                        "4. Bukti Evolusi\nFosil: Menunjukkan adanya spesies yang sudah punah dan perubahan bentuk dari nenek moyang ke keturunan.\n"
                        "Anatomi Komparatif: Persamaan dan perbedaan struktur tubuh antarspesies, seperti homologi dan analogi.\n"
                        "Embriologi: Persamaan dalam tahap perkembangan embrio antarspesies menunjukkan hubungan evolusi.\n"
                        "Genetika: Studi DNA menunjukkan kesamaan genetik antara spesies yang berbeda, mengindikasikan hubungan evolusi.\n\n"
                        "5. Spesiasi\nProses di mana populasi suatu spesies terpisah dan berkembang menjadi spesies baru, sering disebabkan oleh isolasi geografis, perbedaan lingkungan, atau perilaku reproduksi.\n\n"
                        "6. Adaptasi\nProses di mana organisme menyesuaikan diri dengan lingkungan mereka untuk meningkatkan peluang bertahan hidup dan reproduksi. Adaptasi dapat berupa morfologi, fisiologi, atau perilaku.\n\n"
                        "7. Evolusi Manusia\nManusia modern (Homo sapiens) berevolusi dari nenek moyang primata melalui serangkaian perubahan fisik dan perilaku yang memungkinkan adaptasi terhadap lingkungan yang beragam.",
                        maxLines: 39,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 38)
                    ],
                  ),
                ),
              ),
            ),
            _buildExerciseColumn(context), // Memanggil bottomNavigationBar
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEvolutionStack(BuildContext context) {
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
  Widget _buildExerciseColumn(BuildContext context) {
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
              onPressed: () {
                // Aksi ketika tombol latihan soal ditekan
                // Tambahkan logika navigasi atau aksi lainnya di sini
              },
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
