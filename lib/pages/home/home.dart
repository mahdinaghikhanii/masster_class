import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/baner.dart';
import 'widgets/free_online_class_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF29274F),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14, bottom: 15),
                    child: Text(
                      "Online\nMaster Class",
                      style: GoogleFonts.getFont('Roboto').copyWith(
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const BannerWidgets(),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, bottom: 0),
                    child: Text(
                      "Free online class",
                      style: GoogleFonts.getFont('Roboto').copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          height: 01,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, bottom: 20),
                    child: Text(
                      'From over 80 Lectures',
                      style: GoogleFonts.getFont('Roboto').copyWith(
                        color: const Color(0xFF9C9A9A),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const FreeOnlinClassListViewWidgets()
                ],
              ),
            ),
          ),
        ));
  }
}
