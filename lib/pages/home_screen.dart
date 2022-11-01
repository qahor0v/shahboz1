import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shahboz1/constants/urls.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
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
      sizedBx = height * 0.1;
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
              left: width * 0.2,
              right: width * 0.2,
              top: height * 0.2,
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
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: sizedBx,
              ),
              textWidget(width),
              forDesktop(height, width)
            ],
          )
        ],
      ),
    );
  }


  Widget forDesktop(height, width) {
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.1,
        bottom: height * 0.1,
        left: width * 0.01,
        right: width * 0.01,
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialScreen(548000, FontAwesomeIcons.youtube, youtube, width),
            socialScreen(160000, FontAwesomeIcons.instagram, instagram, width),
            socialScreen(2280, FontAwesomeIcons.telegram, telegram, width),
            socialScreen(242000, FontAwesomeIcons.tiktok, tiktok, width),
            // socialScreen(170000, FontAwesomeIcons.instagram, "", width),
          ],
        ),
      ),
    );
  }

  Widget socialScreen(int followers, icon, String url, width) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          onPressed: () {
            _launchUrl(url);
          },
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(
              width: width * 0.15,
              // height: MediaQuery.of(context).size.height * 0.075,
              padding: EdgeInsets.only(
                left: width * 0.01,
                right: width * 0.01,
                top: width * 0.01,
                bottom: width * 0.01,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffBCBABE).withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      icon,
                      size: width * 0.1,
                      color: Color(0xffBCBABE),
                    ),
                    Text(
                      "${followers ~/ 1000}K",
                      style: GoogleFonts.forum(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          color: const Color(0xffF1F1F2)),
                    ),
                    Text(
                      "OBUNACHI",
                      style: GoogleFonts.odorMeanChey(
                          fontSize: width * 0.02,
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          color: const Color(0xffBCBABE)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  textWidget(double width) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.075,
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: const Color(0xffBCBABE).withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shahboz\nSattorov',
                  style: GoogleFonts.zcoolKuaiLe(
                      fontSize: width * 0.1,
                      fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic,
                      color: const Color(0xffA1D6E2)),
                ),
                Text(
                  'Bolger | Aktyor | Stand Up Comic | Muallif',
                  style: GoogleFonts.actor(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                      color: const Color(0xffF1F1F2)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
