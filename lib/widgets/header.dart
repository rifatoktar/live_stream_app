import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String header;
  const Header({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Text(header,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        Spacer(),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft),
          child: Text(
            'See all',
            style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xffE93558)),
          ),
        ),
      ]),
    );
  }
}
