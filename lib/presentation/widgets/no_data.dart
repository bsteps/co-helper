import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  final String text;
  
  const NoDataWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Center(
            child: Text(text),
          ),
        )
      ],
    );
  }
}