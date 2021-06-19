import 'package:co_helper/presentation/screens/tiffin/tiffin_service_list.dart';
import 'package:co_helper/presentation/screens/tiffin/tiffin_service_scaffold.dart';
import 'package:flutter/material.dart';

class TiffinServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TiffinServiceScaffold(
      child: Builder(builder: (context) {
        return Container(
          constraints: BoxConstraints(),
          child: TiffinServiceList(
            scrollDirection: Axis.vertical,
          ),
        );
      }),
    );
  }
}
