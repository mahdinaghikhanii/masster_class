import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_class/pages/home/list_model.dart';
import 'package:svg_flutter/svg.dart';

class BannerWidgets extends StatelessWidget {
  const BannerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 34),
      width: MediaQuery.of(context).size.width,
      height: 349,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeListColor.length,
          itemBuilder: ((context, index) {
            return _horizantalListItem(homeListColor[index]);
          })),
    );
  }
}

Widget _horizantalListItem(HomeListModelBanner homeListModel) {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 14, left: 14),
        width: 246,
        height: 349,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.23, -0.97),
            end: const Alignment(-0.23, 0.97),
            colors: [homeListModel.firstColor, homeListModel.secoundColor],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              height: 39,
              margin: const EdgeInsets.only(left: 11, top: 15),
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: homeListModel.firstColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F898989),
                    blurRadius: 15,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeListModel.stateClass,
                    style: GoogleFonts.getFont('Roboto').copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 26),
              child: Text(
                homeListModel.title,
                style: GoogleFonts.getFont('Roboto').copyWith(
                  color: const Color(0xFFECECEC),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          right: 14,
          bottom: 0,
          child: SvgPicture.asset(
            "assets/yello_circe.svg",
            colorFilter:
                ColorFilter.mode(homeListModel.circleColro, BlendMode.srcIn),
          )),
      Positioned(
        right: 8,
        bottom: 0,
        child: Image.asset(
          homeListModel.image,
          width: 209,
          height: 250,
        ),
      )
    ],
  );
}
