import 'package:flutter/material.dart';

class DropsTab extends StatefulWidget {
  const DropsTab({super.key});

  @override
  State<DropsTab> createState() => _DropsTabState();
}

class _DropsTabState extends State<DropsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text(
          "Drops Tab",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}