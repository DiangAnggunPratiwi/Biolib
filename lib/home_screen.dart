import 'package:biolib/pagefive_screen.dart';
import 'package:biolib/pagefour_screen.dart';
import 'package:biolib/pageone_screen.dart';
import 'package:biolib/pagesix_screen.dart';
import 'package:biolib/pagethree_screen.dart';
import 'package:biolib/pagetwo_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  // Daftar data untuk gambar dan teks
  final List<Map<String, String>> itemData = [
    {'image': 'assets/images/img_image.png', 'title': 'Genetika'},
    {
      'image': 'assets/images/img_image_54x44.png',
      'title': 'Sel dan Stuktur Sel'
    },
    {
      'image': 'assets/images/img_image_1.png',
      'title': 'Sistem Peredaran Darah'
    },
    {
      'image': 'assets/images/img_image_2.png',
      'title': 'Ekosistem dan Lingkungan'
    },
    {'image': 'assets/images/img_image_3.png', 'title': 'Sistem Reproduksi'},
    {'image': 'assets/images/img_image_4.png', 'title': 'Evolusi'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF143191),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Welcome,",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              _buildSearchSection(context),
              SizedBox(height: 30),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0XFFE8E8E8),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [_buildHomeList(context)],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 2),
            child: SizedBox(
              width: 248,
              child: TextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: searchController,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.search,
                      color: Color(0xff757575),
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: IconButton(
                      onPressed: () {
                        searchController.clear();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Color(0xff757575),
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0XFFFFFFFF),
                ),
                onChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16);
        },
        itemCount: itemData.length, // Menggunakan jumlah item dari itemData
        itemBuilder: (context, index) {
          // Mengirim data gambar dan judul serta fungsi navigasi sesuai indeks ke widget
          return HomelistItemWidget(
            image: itemData[index]['image']!,
            title: itemData[index]['title']!,
            onTap: () {
              // Navigasi ke halaman yang sesuai berdasarkan indeks
              Widget detailPage;
              switch (index) {
                case 0:
                  detailPage = PageoneScreen();
                  break;
                case 1:
                  detailPage = PagetwoScreen();
                  break;
                case 2:
                  detailPage = PagethreeScreen();
                  break;
                case 3:
                  detailPage = PagefourScreen();
                  break;
                case 4:
                  detailPage = PagefiveScreen();
                  break;
                case 5:
                  detailPage = PagesixScreen();
                  break;
                default:
                  detailPage = HomeScreen(); // Default ke halaman pertama
              }

              // Navigasi ke halaman detail yang sesuai
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => detailPage),
              );
            },
          );
        },
      ),
    );
  }
}

class HomelistItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap; // Tambahkan parameter untuk fungsi navigasi

  const HomelistItemWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap, // Inisialisasi parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Tambahkan fungsi navigasi di sini
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0X4C000000),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Image.asset(
                image, // Mengambil gambar dari parameter
                height: 54,
                width: 44,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        title, // Mengambil judul dari parameter
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: BoxDecoration(
                          color: Color(0XFF143191),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Lihat",
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 8,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
