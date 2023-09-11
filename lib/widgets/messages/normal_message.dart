import 'package:flutter/material.dart';

class NormalMessage extends StatelessWidget {
  final String userMessage;
  const NormalMessage({super.key, required this.userMessage});

  @override
  Widget build(BuildContext context) {
    const String userNick = 'Reillly';
    final String userInitial = userNick[0]..toUpperCase();

    return ListTile(
      onTap: () {},
      onLongPress: () {},
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.background,
        maxRadius: 15,
        child: Text(
          userInitial,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
      title: Row(
        children: [
          Text(
            userNick,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          Text(
            ' : ',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          Text(
            userMessage,
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
