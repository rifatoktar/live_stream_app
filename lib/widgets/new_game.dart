import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewGame extends StatelessWidget {
  final String assetLink;
  final String gameName;
  final String legalLimit;
  final String tag1;
  final String tag2;
  const NewGame(
      {super.key,
      required this.assetLink,
      required this.gameName,
      required this.legalLimit,
      required this.tag1,
      required this.tag2});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: Colors.transparent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.all(10),
        height: 218,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(assetLink),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    gameName,
                    style: GoogleFonts.rubik(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xff535157)),
                    child: Center(
                      child: Text(
                        legalLimit,
                        style: GoogleFonts.rubik(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xffE93558)),
                    child: Center(
                      child: Text(
                        'New',
                        style: GoogleFonts.rubik(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 6),
                child: Row(
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 2, left: 5, right: 5),
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff535157)),
                          child: Text(
                            tag1,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 2, left: 5, right: 5),
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff535157)),
                          child: Text(
                            tag2,
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      'See in lives',
                      style: GoogleFonts.rubik(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffE93558)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/icons/arrow-right.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.scaleDown,
                      colorFilter:
                          ColorFilter.mode(Color(0xffE93558), BlendMode.srcIn),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
