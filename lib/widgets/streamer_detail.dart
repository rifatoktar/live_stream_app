import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StreamerDetail extends StatelessWidget {
  final String streamerPic;
  final String streamerNick;
  final String audienceCount;
  final String hour;
  final String minute;
  final String second;
  final String streamType;
  final String tag1;
  final String tag2;
  final String tag3;
  const StreamerDetail(
      {super.key,
      required this.streamerPic,
      required this.streamerNick,
      required this.audienceCount,
      required this.hour,
      required this.minute,
      required this.second,
      required this.streamType,
      required this.tag1,
      required this.tag2,
      required this.tag3});

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
          height: 80,
          margin: EdgeInsets.only(right: 16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(streamerPic),
                maxRadius: 55,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        streamerNick,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 51,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffE93558)),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 4,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Live',
                              style: GoogleFonts.rubik(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        audienceCount,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        ' • ',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        hour,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        ":",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        minute,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        ":",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        second,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    streamType,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
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
                              tag3,
                              style: GoogleFonts.rubik(
                                  fontSize: 12,
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
          )),
    );
  }
}
