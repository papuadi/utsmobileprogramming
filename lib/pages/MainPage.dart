import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/pages/LoginPage.dart';
import 'package:uts/pages/ProfilPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget dataKategori(String img, String text1) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 5, top: 20),
      width: 120,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(img))),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(text1),
              Spacer(),
              Icon(
                Icons.arrow_forward,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget dataBarang(String img, String namabarang, String harga) {
    return Container(
      margin: EdgeInsets.only(left: 25, bottom: 25),
      padding: EdgeInsets.only(top: 130),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.black.withOpacity(0.25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namabarang,
              style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Color.fromARGB(255, 252, 251, 251),
                  fontWeight: FontWeight.normal),
            ),
            Text(
              harga,
              style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Color.fromARGB(255, 253, 252, 252),
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff92A3F9),
        title: Text("Discover"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size(0, 70),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "What are you looking for?",
                        hintStyle: GoogleFonts.arvo(fontSize: 15)),
                  ),
                ),
              )
            ])),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Category',
              maxLines: 1,
              style: GoogleFonts.arvo(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                dataKategori("Assets/plant_white_bg.png", "Plant"),
                dataKategori("Assets/lamp_white_bg.png", "Lamp"),
                dataKategori("Assets/chair_white_bg.png", "Chair"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Hot Items',
              maxLines: 1,
              style: GoogleFonts.arvo(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  dataBarang("Assets/favorite_img_4.jpg", "Cactus", "\$99"),
                  dataBarang(
                      "Assets/favorite_img_5.jpg", "Beach Beautiful", "\$15"),
                ],
              ),
              Row(
                children: [
                  dataBarang(
                      "Assets/favorite_img_6.jpg", "Architectural", "\$150"),
                  dataBarang(
                      "Assets/favorite_img_1.jpg", "Elegant Lamp", "\$20"),
                ],
              ),
              Row(
                children: [
                  dataBarang(
                      "Assets/favorite_img_2.jpg", "Traditional Chair", "\$40"),
                  dataBarang(
                      "Assets/favorite_img_3.jpeg", "Wooden Chair", "\$35"),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
