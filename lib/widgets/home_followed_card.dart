import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/stream_page.dart';

class HomeFollowCard extends StatelessWidget {
  final String imageLink;
  final String profilePicture;
  final String userNick;
  final String gameName;
  final String tag1;
  final String tag2;
  final String tag3;
  final String audienceCount;
  const HomeFollowCard(
      {super.key,
      required this.imageLink,
      required this.profilePicture,
      required this.userNick,
      required this.gameName,
      required this.tag1,
      required this.tag2,
      required this.tag3,
      required this.audienceCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StreamPage()),
            );
          },
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft),
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageLink))),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 5,
                          backgroundColor: Color(0xffE93558),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Live',
                          style: GoogleFonts.rubik(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffE93558)),
                        )
                      ],
                    ),
                    Spacer(),
                    Text(audienceCount,
                        style: GoogleFonts.rubik(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white))
                  ]),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(right: 16),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: Container(
                  height: 70,
                  width: 220,
                  margin: EdgeInsets.symmetric(horizontal: 16),
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
                                      tag3,
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
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft),
                  child: Row(
                    children: [
                      Icon(
                        Icons.close,
                        size: 15,
                        color: Color(0xffE93558),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Unfollow',
                        style: GoogleFonts.rubik(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE93558)),
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
