import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:streamy/widgets/header.dart';

import '../widgets/home_followed_card.dart';
import '../widgets/new_game.dart';
import '../widgets/suggested_card.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final Shader linearGradient = LinearGradient(
    colors: const <Color>[Color(0xffE93558), Color(0xff7026ED)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 200.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(
          'StreaMy',
          style: GoogleFonts.rubik(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            foreground: Paint()..shader = linearGradient,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.centerLeft),
            child: Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff131313)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Studio',
                      style: GoogleFonts.rubik(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    "assets/icons/arrow-right.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.scaleDown,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 24,
                width: 24,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).canvasColor, BlendMode.srcIn),
              ))
        ],
      ),
      body: SlidingUpPanel(
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        slideDirection: SlideDirection.DOWN,
        color: Theme.of(context).cardColor,
        minHeight: 78,
        maxHeight: MediaQuery.sizeOf(context).height * .82,
        body: _body(),
        isDraggable: true,
        panel: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              child: Row(
                children: [
                  Text(
                    'lives you followed',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: SvgPicture.asset(
                      "assets/icons/sort.svg",
                      height: 24,
                      width: 24,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).canvasColor, BlendMode.srcIn),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            HomeFollowCard(
              imageLink: 'assets/images/gta5.jpg',
              profilePicture: 'assets/images/man1.png',
              userNick: 'Funni',
              gameName: 'Grand Theft Auto 5',
              tag1: 'Action',
              tag2: 'Violence',
              tag3: 'English',
              audienceCount: '12.320',
            ),
            SizedBox(
              height: 16,
            ),
            HomeFollowCard(
              imageLink: 'assets/images/starfield.png',
              profilePicture: 'assets/images/woman1.png',
              userNick: 'Crebuny',
              gameName: 'Starfield',
              tag1: 'Action',
              tag2: 'Violence',
              tag3: 'English',
              audienceCount: '10.120',
            ),
            SizedBox(
              height: 16,
            ),
            HomeFollowCard(
              imageLink: 'assets/images/woman-chat.jpg',
              profilePicture: 'assets/images/woman2.png',
              userNick: 'Favory',
              gameName: 'Just Chatting',
              tag1: 'English',
              tag2: 'IRL',
              tag3: 'Chat',
              audienceCount: '12.320',
            ),
            SizedBox(
              height: 16,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: Text(
                  'See more lives you followed',
                  style: GoogleFonts.rubik(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffE93558)),
                )),
            SizedBox(
              height: 16,
            ),
            Container(
                height: 5,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).canvasColor,
                )),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _body() {
  return SingleChildScrollView(
      child: Column(
    children: [
      SizedBox(
        height: 110,
      ),
      Header(header: 'Games'),
      SizedBox(
        height: 20,
      ),
      NewGame(
        assetLink: 'assets/images/starfield.png',
        gameName: 'Starfield',
        legalLimit: '18+',
        tag1: 'Action',
        tag2: 'Adventure',
      ),
      SizedBox(
        height: 30,
      ),
      Header(header: 'Suggested lives'),
      SizedBox(
        height: 30,
      ),
      Container(
        height: 240,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: const [
            SuggestedCard(
              audienceCount: '12.320',
              tag1: 'Action',
              tag2: 'Violence',
              profilePicture: 'assets/images/man1.png',
              userNick: 'Funni',
              gameName: 'Grand Theft Auto 5',
              streamPic: 'assets/images/gta5.jpg',
            ),
            SizedBox(
              width: 8,
            ),
            SuggestedCard(
              audienceCount: '12.320',
              tag1: 'Action',
              tag2: 'Adventure',
              profilePicture: 'assets/images/woman1.png',
              userNick: 'Crebuny',
              gameName: 'Starfield',
              streamPic: 'assets/images/starfield.png',
            ),
          ],
        ),
      ),
    ],
  ));
}
