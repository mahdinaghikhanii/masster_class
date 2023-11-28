import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../list_model.dart';

class FreeOnlinClassListViewWidgets extends StatelessWidget {
  const FreeOnlinClassListViewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: freeOnlineClass.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  color: Colors.transparent,
                  margin:
                      const EdgeInsets.only(bottom: 00, left: 14, right: 14),
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 22, bottom: 20, left: 14, right: 28),
                  width: MediaQuery.of(context).size.width,
                  height: 92,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF3E3A6D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 13,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01,
                                left: MediaQuery.of(context).size.width * 0.37),
                            child: Text(
                              freeOnlineClass[index].text,
                              style: GoogleFonts.getFont('Roboto').copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  height: 01,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.37),
                        child: Text(
                          freeOnlineClass[index].time,
                          style: GoogleFonts.getFont('Roboto').copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8C8C8C),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.37),
                        width: 300,
                        height: 30,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return SvgPicture.asset("assets/star.svg");
                            }),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.015,
                    left: MediaQuery.of(context).size.width * 0.082,
                    child: Container(
                      width: 115,
                      height: 83,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color(0xFFFFB4B4),
                      ),
                    )),
                Positioned(
                    top: -20,
                    left: MediaQuery.of(context).size.width * 0.068,
                    child: Image.asset(freeOnlineClass[index].backGrondImage)),
                Positioned(
                    right: 15,
                    top: MediaQuery.of(context).size.height * 0.064,
                    child: Container(
                      alignment: Alignment.center,
                      width: 29,
                      height: 29,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFEB53A2),
                        shape: OvalBorder(),
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 17,
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
