import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/chat_section.dart';
import '../widgets/donat_and_unfollow_section.dart';
import '../widgets/streamer_detail.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  final String streamer = 'Favory';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).cardColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow-left.svg",
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
                Theme.of(context).canvasColor, BlendMode.srcIn),
          ),
        ),
        title: Text(
          streamer,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 80,
                child: StreamerDetail(
                  streamerPic: 'assets/images/woman2.png',
                  streamerNick: 'Favory',
                  audienceCount: '12.320',
                  hour: '00',
                  minute: '20',
                  second: '15',
                  streamType: 'Just Chatting',
                  tag1: 'English',
                  tag2: 'IRL',
                  tag3: 'Chat',
                )),
            SizedBox(
              height: 20,
            ),
            DonatAndUnfollowSection(),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/woman-chat.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20,),
            ChatSection()
          ],
        ),
      )),
    );
  }
}
