import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'messages/donate_message.dart';
import 'messages/normal_message.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    return Column(
      children: [
        Container(
          height: 260,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Theme.of(context).cardColor),
          child: ListView(
            children: const [
              NormalMessage(
                userMessage: 'Your so funny :)',
              ),
              SizedBox(
                height: 5,
              ),
              DonateMessage(
                donatedUser: 'ThEFurry',
                donatedPrice: '50',
              )
            ],
          ),
        ),
        Container(
          height: 55,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              border: Border.all(color: Theme.of(context).cardColor, width: 2)),
          child: Row(children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * .55,
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Your message...',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: SvgPicture.asset(
                  "assets/icons/info.svg",
                  height: 15,
                  width: 15,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor, BlendMode.srcIn),
                )),
            VerticalDivider(
              width: 24,
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Theme.of(context).cardColor,
            ),
            IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: SvgPicture.asset(
                  "assets/icons/send.svg",
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor, BlendMode.srcIn),
                )),
            SizedBox(
              width: 10,
            )
          ]),
        )
      ],
    );
  }
}
