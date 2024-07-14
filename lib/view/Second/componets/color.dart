
import 'package:flutter/material.dart';

class buildcoloer extends StatelessWidget {
  final Color color;
  final isSelected;
  const buildcoloer({super.key, required this.color, this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4,right: 10),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color:isSelected? Color(0xff356C95):Colors.transparent,)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
        ),
      ),
    );
  }
}

