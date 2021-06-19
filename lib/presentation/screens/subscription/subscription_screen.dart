import 'package:co_helper/presentation/screens/subscription/subscription_list.dart';
import 'package:co_helper/presentation/screens/subscription/subscription_scaffold.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubscriptionScaffold(
      child: Builder(builder: (context) {
        return Container(
          constraints: BoxConstraints(),
          child: SubscriptionList(),
        );
      }),
    );
  }
}
