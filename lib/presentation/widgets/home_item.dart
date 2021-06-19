import 'package:co_helper/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onClick;

  HomeItem({
    required this.icon,
    required this.title,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: this.onClick,
      borderRadius: BorderRadius.circular(4),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 3,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            children: [
              Icon(
                this.icon,
                color: AppColors.primaryColor,
                size: 38,
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                child: Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
