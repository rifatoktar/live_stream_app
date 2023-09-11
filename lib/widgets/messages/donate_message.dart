import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonateMessage extends StatelessWidget {
  final String donatedUser;
  final String donatedPrice;
  const DonateMessage({
    super.key,
    required this.donatedUser,
    required this.donatedPrice,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      onLongPress: () {},
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: CircleAvatar(
          backgroundColor: Color(0xffE93558),
          maxRadius: 15,
          child: SvgPicture.asset(
            "assets/icons/donate.svg",
            height: 20,
            width: 20,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          )),
      title: Row(
        children: [
          Text(
            donatedUser,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          Text(
            ' donated ',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          Text(
            '\$ $donatedPrice',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
