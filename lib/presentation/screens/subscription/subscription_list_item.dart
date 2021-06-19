import 'package:co_helper/constants/app_colors.dart';
import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/data/models/Subscription.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class SubscriptionListItem extends StatelessWidget {
  final Subscription subscription;
  final void Function()? onPressed;

  const SubscriptionListItem({
    Key? key,
    required this.subscription,
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
            Row(
              children: [
                Expanded(
                  child: Text(
                    subscription.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: AppColors.primaryColor.withOpacity(0.06),
                    padding: const EdgeInsets.all(0),
                    label: Text(
                      subscription.type.toUpperCase(),
                    ),
                  ),
                )
              ],
            ),
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
              icon: Icon(Mdi.bellOff),
              label: Text(
                Strings.unsubscribe,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
