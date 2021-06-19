
import 'package:co_helper/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  final VoidCallback? onClick;
  const FilterButtonWidget({
    Key? key,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: MaterialButton(
        onPressed: onClick,
        color: AppColors.primaryColor,
        textColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        minWidth: double.infinity,
        child: Text(
          'FILTER',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}