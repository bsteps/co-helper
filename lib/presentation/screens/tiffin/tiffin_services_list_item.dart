import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import 'package:co_helper/constants/app_colors.dart';
import 'package:co_helper/data/models/Tiffin.dart';
import 'package:co_helper/presentation/widgets/icon_text.dart';

enum TiffinServicesListItemSize {
  small,
  large,
}

class TiffinServicesListItem extends StatelessWidget {
  final Tiffin tiffin;
  final TiffinServicesListItemSize size;
  final void Function()? onPressed;

  const TiffinServicesListItem({
    Key? key,
    required this.tiffin,
    this.size = TiffinServicesListItemSize.large,
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
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    tiffin.name,
                    maxLines: size == TiffinServicesListItemSize.small ? 1 : null,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if(tiffin.mobileNumber.isNotEmpty) IconButton(
                  onPressed: onPressed,
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Mdi.phone,
                    size: 28,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Row(
              children: tiffin.typesOfFood.map(
                (food) => Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: AppColors.primaryColor.withOpacity(0.06),
                    padding: const EdgeInsets.all(0),
                    label: Text(
                      food,
                      maxLines: size == TiffinServicesListItemSize.small ? 1 : null,
                    ),
                  ),
                ),
              ).toList(),
            ),
            SizedBox(height: 6),
            IconText(
              Mdi.food,
              tiffin.cuisines.join(", "),
              isOneLine: size == TiffinServicesListItemSize.small,
            ),
            SizedBox(height: 6),
            IconText(
              Mdi.mapMarker,
              tiffin.areaOfDelivery,
              isOneLine: size == TiffinServicesListItemSize.small,
            ),
          ],
        ),
      ),
    );
  }
}
