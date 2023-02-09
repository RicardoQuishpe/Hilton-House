import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // services
  static const String uiux = 'assets/services/restaurant.jpg';
  static const String blog = 'assets/services/spa.jpg';
  static const String appDev = 'assets/services/piscinas.jpg';
  static const String rapid = 'assets/services/habitaciones.jpg';
  static const String openSource = 'assets/services/gym.jpg';
    static const String openSourceBlack = 'assets/services/gym.jpg';


  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/yu.takasaki.15/",
    "https://www.instagram.com/meica05/",
    "https://twitter.com/meica05?s=20",
  ];

}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
