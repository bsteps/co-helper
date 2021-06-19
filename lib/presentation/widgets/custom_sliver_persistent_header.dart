import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:co_helper/presentation/widgets/custom_sliver_delegate.dart';

class CustomSliverPersistentHeader extends StatefulWidget {
  final Widget child;
  final double maxHeight;
  final double minHeight;
  final bool floating;
  final bool snap;
  final bool pinned;

  const CustomSliverPersistentHeader({
    Key? key,
    required this.child,
    required this.maxHeight,
    required this.minHeight,
    this.floating = false,
    this.snap = false,
    this.pinned = false,
  })  : assert(((snap == true && floating == true) || snap == false),
            "if snap is true, floating must also be true"),
        super(key: key);

  @override
  _CustomSliverPersistentHeaderState createState() =>
      _CustomSliverPersistentHeaderState();
}

class _CustomSliverPersistentHeaderState
    extends State<CustomSliverPersistentHeader>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      floating: widget.floating,
      pinned: widget.pinned,
      delegate: CustomSliverDelegate(
        maxHeight: widget.maxHeight,
        minHeight: widget.minHeight,
        vsync: this,
        snapConfiguration: widget.snap
            ? FloatingHeaderSnapConfiguration(
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 200),
              )
            : null,
        child: widget.child,
      ),
    );
  }
}
