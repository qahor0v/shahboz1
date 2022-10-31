import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shahboz1/screens/sidebar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Sidebar(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Home1(),
          ],
        ),
      ),
    );
  }
}

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Alignment? alignment;
    double? sizedBx;
    if (height > width) {
      alignment = Alignment.topCenter;
      sizedBx = height * 0.6;
    } else {
      alignment = Alignment.topRight;
      sizedBx = height*0.1;
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height * 2,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                alignment: Alignment.topCenter,
                image: AssetImage(
                  "assets/images/bbackk.jpg",
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.1,
              right: width * 0.1,
              top: height * 0.1,
            ),
            child: Image.asset(
              "assets/images/shahboz2.png",
              alignment: alignment,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  const Color(0xff1995AD).withOpacity(0.4),
                  const Color(0xff1995AD).withOpacity(0.6),
                  const Color(0xff1995AD).withOpacity(01),
                  const Color(0xff1995AD),
                  const Color(0xff1995AD),
                  const Color(0xff1995AD),
                  const Color(0xff1995AD),
                  const Color(0xff1995AD),
                  const Color(0xff1995AD),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: sizedBx,
              ),
              textWidget(width)
            ],
          )
        ],
      ),
    );
  }

  textWidget(double width) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.075,
          margin: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shahboz\nSattorov',
                style: GoogleFonts.zcoolKuaiLe(
                    fontSize: width*0.1,
                    fontWeight: FontWeight.w700,
                    //fontStyle: FontStyle.italic,
                    color: const Color(0xffA1D6E2)),
              ),
              Text(
                'Bolger | Aktyor | Qiziqchi | Muallif',
                style: GoogleFonts.actor(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    color: const Color(0xffF1F1F2)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
