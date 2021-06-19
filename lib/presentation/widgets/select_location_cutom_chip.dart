import 'package:co_helper/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  final String title;
  final bool selected;
  final VoidCallback? onClick;

  CustomChip({
    this.title = "title",
    this.selected = false,
    this.onClick,
  });

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: widget.onClick,
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.selected ? AppColors.primaryColor : Colors.white,
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.selected ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}
