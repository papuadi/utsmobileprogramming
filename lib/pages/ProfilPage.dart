import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  Widget dataKategori(String img, String text1, int x) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 15, 0, 15),
      padding: EdgeInsets.only(left: 5, top: 20),
      width: 120,
      height: 100,
      decoration: BoxDecoration(
        color: Color(x),
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
              Text(
                text1,
                style: GoogleFonts.arvo(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("Assets/img_profile.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Rahmatullah Papuadi",
                style: GoogleFonts.arvo(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "Mahasiswa",
                style: GoogleFonts.arvo(
                    fontSize: 15,
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 70),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(children: [
              Text(
                "24 Collection",
                style: GoogleFonts.arvo(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "12 History",
                style: GoogleFonts.arvo(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
            ])),
        Row(
          children: [
            dataKategori(
                "Assets/chair_light_orange_bg.png", "Best Chair", 0xffFFC6C6),
            dataKategori("Assets/lamp_white_bg.png", "Best Lamp", 0xffFFFFFF),
          ],
        ),
        Row(
          children: [
            dataKategori("Assets/chair_white_bg.png", "Best Chair", 0xffFFFFFF),
            dataKategori(
                "Assets/plant_light_blue_bg.png", "Plant Choice", 0xffA4BDFF),
          ],
        )
      ],
    );
  }
}
