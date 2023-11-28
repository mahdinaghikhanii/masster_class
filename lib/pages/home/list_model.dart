import 'package:flutter/material.dart';

class HomeListModelBanner {
  final Color firstColor;
  final Color secoundColor;
  final Color circleColro;
  final String stateClass;
  final String title;
  final String image;
  HomeListModelBanner(
      {required this.firstColor,
      required this.secoundColor,
      required this.circleColro,
      required this.stateClass,
      required this.title,
      required this.image});
}

List<HomeListModelBanner> homeListColor = [
  HomeListModelBanner(
      firstColor: const Color(0xFF9288E4),
      secoundColor: const Color(0xFF534EA7),
      circleColro: const Color(0xFFE4B249),
      stateClass: "Recomended",
      title: "UI/UX DESIGNER\nBEGINNER",
      image: "assets/home_img1.png"),
  HomeListModelBanner(
      firstColor: const Color(0xFFF4C465),
      secoundColor: const Color(0xFFC63956),
      circleColro: Colors.blue,
      stateClass: "NEW CLASS",
      title: "GRAPHIC DESIGN\nMASTER",
      image: "assets/home_img2.png")
];

class HomeListFreeOnlinClass {
  final Color backgrondColor;
  final String text;
  final String time;
  final String backGrondImage;

  HomeListFreeOnlinClass(
      {required this.backgrondColor,
      required this.text,
      required this.time,
      required this.backGrondImage});
}

List<HomeListFreeOnlinClass> freeOnlineClass = [
  HomeListFreeOnlinClass(
      backgrondColor: const Color(0xFFFFB4B4),
      text: "Flutter Developer",
      time: "8 Hours",
      backGrondImage: "assets/flutter.png"),
  HomeListFreeOnlinClass(
      backgrondColor: const Color(0xFF9288E4),
      text: "Full Stack Javascript",
      time: "6 Hours",
      backGrondImage: "assets/full_stack.png")
];
