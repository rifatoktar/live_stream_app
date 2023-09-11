import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DonatAndUnfollowSection extends StatelessWidget {
  const DonatAndUnfollowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Theme.of(context).cardColor, width: 2),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                SvgPicture.asset(
                  "assets/icons/donate.svg",
                  height: 15,
                  width: 15,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor, BlendMode.srcIn),
                ),
                SizedBox(width: 5,),
                Text('Donate', style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 15, fontWeight: FontWeight.w400),)
              ],
            )),
          VerticalDivider(
            width: 24,
            thickness: 2,
            indent: 8,
            endIndent: 8,
            color: Theme.of(context).cardColor,
          ),
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
                Icon(Icons.close, color: Color(0xffE93558), size: 15,),
                SizedBox(width: 5,),
                Text('Unfollow', style: GoogleFonts.rubik(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xffE93558)),)
              ],
            )),
      ]),
    );
  }
}
