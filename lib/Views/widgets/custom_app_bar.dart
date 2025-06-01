import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ required this.text,required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(
           onPressed: onPressed,
          icon: icon,
        ),

      ],
    );
  }
}


