import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText(this.icon, this.text, { this.isOneLine = false });
  final IconData icon;
  final String text;
  final bool isOneLine;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.black54,
          size: 20,
        ),
        SizedBox(
          width: 2,
        ),
        Expanded(
          child: Text(
            text,
            maxLines: isOneLine ? 1 : null,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
