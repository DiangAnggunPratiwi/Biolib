import 'package:flutter/material.dart';

class PagetwoScreen extends StatelessWidget {
  const PagetwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: Column(
          children: [
            // Tambahkan Container dengan IconButton Kembali di sini
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
                    icon: const Icon(Icons.arrow_back, color: Color(0XFFFFFFFF)),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fungsi untuk kembali ke halaman sebelumnya
                    },
                  ),
                  // Ruang antara tombol kembali dan teks
                  const SizedBox(width: 8),
                  const Text(
                    "Sel dan Struktur Sel",
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
                  padding: const EdgeInsets.only(left: 14, top: 14, right: 14),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 302,
                        child: const Text(
                          "Pengertian Sel\nSel adalah unit dasar kehidupan, terdiri dari sel prokariotik (tanpa inti) dan sel eukariotik (memiliki inti).\n2. Teori Sel\nSemua makhluk hidup tersusun atas sel.\nSel adalah unit fungsional dasar makhluk hidup.\nSel berasal dari sel sebelumnya melalui pembelahan.\n3. Struktur Sel Eukariotik\nMembran Sel: Mengatur keluar-masuknya zat.\nInti Sel (Nukleus): Mengontrol aktivitas sel dan menyimpan DNA.\nSitoplasma: Tempat reaksi metabolisme.\nRE Kasar: Sintesis protein.\nRE Halus: Sintesis lipid.\nRibosom: Membuat protein.\nMitokondria: Menghasilkan energi (ATP).\nBadan Golgi: Mengemas dan mendistribusikan protein.\nLisosom: Mencerna materi sisa.\nVakuola: Penyimpanan (besar di sel tumbuhan).\nKloroplas: Tempat fotosintesis (pada tumbuhan).\nDinding Sel: Melindungi sel tumbuhan.\n4. Perbedaan Sel Tumbuhan dan Hewan\nTumbuhan: Ada dinding sel, kloroplas, dan vakuola besar.\nHewan: Tidak ada dinding sel dan kloroplas, vakuola kecil.\n5. Sel Prokariotik\nTidak memiliki membran inti, terdiri dari membran plasma, dinding sel, DNA nukleoid, ribosom, dan flagela/pili untuk bergerak.\n6. Fungsi Utama Sel\nProduksi Energi\nSintesis Protein\nPembelahan Sel\nTransportasi Zat",
                          maxLines: 34,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 48)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6)
          ],
        ),
        bottomNavigationBar: _buildPracticeQuestionsSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPracticeQuestionsSection(BuildContext context) {
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
