import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestedCard extends StatelessWidget {
  final String audienceCount;
  final String tag1;
  final String tag2;
  final String profilePicture;
  final String userNick;
  final String gameName;
  final String streamPic;
  const SuggestedCard(
      {super.key,
      required this.audienceCount,
      required this.tag1,
      required this.tag2,
      required this.profilePicture,
      required this.userNick,
      required this.gameName, required this.streamPic});

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
      child: SizedBox(
        height: 240,
        width: 240,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                width: 240,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(streamPic),
                        fit: BoxFit.cover)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        maxRadius: 7,
                        backgroundColor: Color(0xffE93558),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Live',
                        style: GoogleFonts.rubik(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE93558)),
                      ),
                      Spacer(),
                      Text(
                        audienceCount,
                        style: GoogleFonts.rubik(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profilePicture),
                      maxRadius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userNick,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          gameName,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flex(
                              direction: Axis.horizontal,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 2, left: 5, right: 5),
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff535157)),
                                  child: Text(
                                    tag1,
                                    style: GoogleFonts.rubik(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 2, left: 5, right: 5),
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff535157)),
                                  child: Text(
                                    tag2,
                                    style: GoogleFonts.rubik(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
