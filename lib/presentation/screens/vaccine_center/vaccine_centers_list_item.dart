import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import 'package:co_helper/constants/app_colors.dart';
import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/data/models/CowinCenter.dart';
import 'package:co_helper/presentation/widgets/icon_text.dart';

enum VaccineCentersListItemSize {
  small,
  large,
}

class VaccineCentersListItem extends StatelessWidget {
  final CowinCenter center;
  final VaccineCentersListItemSize size;
  final void Function()? onPressed;

  const VaccineCentersListItem({
    Key? key,
    required this.center,
    this.size = VaccineCentersListItemSize.large,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.3),
      margin: EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              center.name,
              maxLines: size == VaccineCentersListItemSize.small ? 1 : null,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  backgroundColor: AppColors.primaryColor.withOpacity(0.06),
                  padding: EdgeInsets.all(0),
                  label: Text(
                    center.feeType.toUpperCase(),
              maxLines: size == VaccineCentersListItemSize.small ? 1 : null,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            IconText(
              Mdi.clock,
              "${center.from} - ${center.to}",
                            isOneLine: size == VaccineCentersListItemSize.small,
            ),
            SizedBox(height: 6),
            IconText(
              Mdi.mapMarker,
              "${center.address}, ${center.blockName}, ${center.districtName}, ${center.stateName}, ${center.pincode}",
              isOneLine: size == VaccineCentersListItemSize.small,
            ),
            SizedBox(height: 6),
            OutlinedButton.icon(
              onPressed: onPressed,
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.fromLTRB(8, 4, 12, 4),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.5),
                  ),
                ),
              ),
              icon: Icon(Mdi.bell),
              label: Text(
                Strings.subscribe,
                              maxLines: size == VaccineCentersListItemSize.small ? 1 : null,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ), 
      ),
    );
  }
}
