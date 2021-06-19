import 'package:co_helper/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FilterChip extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool selected;

  FilterChip({
    required this.label,
    this.onPressed,
    this.selected = false,
  });

  @override
  _FilterChipState createState() => _FilterChipState();
}

class _FilterChipState extends State<FilterChip> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        chipTheme: ChipThemeData(
          backgroundColor:
              widget.selected ? Theme.of(context).primaryColor : Colors.white,
          disabledColor: Colors.grey,
          selectedColor: AppColors.primaryColor,
          secondarySelectedColor: Colors.teal,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          labelStyle: TextStyle(
            color: widget.selected ? Colors.white : Colors.black87,
          ),
          secondaryLabelStyle: TextStyle(),
          brightness: Theme.of(context).brightness,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: widget.selected ? BorderSide(
              color: Colors.black12,
            ) : BorderSide.none,
          ),
        ),
      ),
      // padding: const EdgeInsets.all(8.0),
      child: FilterChip(
        label: widget.label,
        //  Text(
        //   widget.label,
        //   style: TextStyle(
        //     color: widget.selected ? Colors.white : Colors.black87,
        //   ),
        // ),

        selected: widget.selected,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(30),
        //   side: BorderSide(
        //     color: widget.selected ? null : Colors.black12,
        //   ),
        // ),
        onPressed: widget.onPressed,

        // backgroundColor:
        //     widget.selected ? Theme.of(context).primaryColor : Colors.white,
      ),
    );
  }
}
