import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PagefiveScreen extends StatelessWidget {
  const PagefiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: Column(
          children: [
            // Bagian atas dengan tombol kembali
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0XFF143191),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Color(0XFFFFFFFF)),
                    onPressed: () {
                      Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Sistem Reproduksi",
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
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      _buildReproductionInfoSection(context),
                      const SizedBox(height: 10),
                      const Text(
                        "1. Pengertian\nSistem reproduksi adalah sistem organ yang bertanggung jawab untuk menghasilkan keturunan.\n2. Sistem Reproduksi Manusia\nPria:\nOrgan Utama: Testis, epididimis, vas deferens, kelenjar prostat, penis.\nFungsi: Produksi sperma dan hormon testosteron.\nWanita:\nOrgan Utama: Ovarium, tuba falopi, rahim, vagina.\nFungsi: Produksi sel telur dan hormon estrogen serta progesteron.\n3. Proses Reproduksi\nFertilisasi: Pertemuan sperma dan sel telur.\nPerkembangan Embrio: Zigot berkembang dalam rahim.\nKelahiran: Pengeluaran bayi melalui vagina.\n4. Siklus Menstruasi\nProses bulanan pada wanita yang meliputi fase folikuler, ovulasi, dan fase luteal.\n5. Hormon\nPria: Testosteron, berfungsi dalam spermatogenesis.\nWanita: Estrogen dan progesteron, berperan dalam siklus menstruasi dan kehamilan.\n6. Reproduksi Seksual vs. Aseksual\nSeksual: Melibatkan fertilisasi, menghasilkan keturunan bervariasi.\nAseksual: Tidak melibatkan gamet, seperti pembelahan biner.\n7. Kesehatan Reproduksi\nPenting untuk menjaga kesehatan melalui pendidikan seks dan pencegahan penyakit menular seksual.",
                        maxLines: 36,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Menggunakan bottomNavigationBar
            _buildPracticeButtonSection(context), // Bagian tombol latihan
          ],
        ),
      ),
    );
  }

  Widget _buildReproductionInfoSection(BuildContext context) {
    return SizedBox(
      height: 42,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPracticeButtonSection(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
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
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
              ),
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
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
