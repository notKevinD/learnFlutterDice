import "package:flutter/material.dart"; 


class Textstyle extends StatelessWidget {
  const Textstyle({
    required this.text,
    super.key
  });

  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 28.5),);
  }
}
