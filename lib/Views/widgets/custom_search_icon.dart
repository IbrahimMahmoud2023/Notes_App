import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      height: 45,
      width: 45,
      child: Center(child: IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 25))),
    );
  }
}
