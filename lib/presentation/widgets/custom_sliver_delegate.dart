import 'package:co_helper/presentation/widgets/floating_header.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:flutter/rendering.dart';

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  CustomSliverDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
    this.snapConfiguration,
    this.vsync,
  })  : showOnScreenConfiguration = snapConfiguration != null
            ? PersistentHeaderShowOnScreenConfiguration(
                minShowOnScreenExtent: double.infinity)
            : null,
        assert(
          ((snapConfiguration != null && vsync != null) ||
              snapConfiguration == null),
          'vsync cannot be null when snapConfiguration or showOnScreenConfiguration is not null, and floating is true',
        );

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  final FloatingHeaderSnapConfiguration? snapConfiguration;

  @override
  final TickerProvider? vsync;

  @override
  final PersistentHeaderShowOnScreenConfiguration? showOnScreenConfiguration;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(
      child: snapConfiguration != null
          ? FloatingHeader(
              child: child,
            )
          : child,
    );
  }

  @override
  bool shouldRebuild(CustomSliverDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        snapConfiguration != oldDelegate.snapConfiguration ||
        vsync != oldDelegate.vsync ||
        child != oldDelegate.child;
  }
}
