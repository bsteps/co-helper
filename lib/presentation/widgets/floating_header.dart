import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FloatingHeader extends StatefulWidget {
  const FloatingHeader({ Key? key, required this.child }) : super(key: key);

  final Widget child;

  @override
  FloatingHeaderState createState() => FloatingHeaderState();
}

// A wrapper for the widget created by _SliverAppBarDelegate that starts and
// stops the floating app bar's snap-into-view or snap-out-of-view animation.
class FloatingHeaderState extends State<FloatingHeader> {
  ScrollPosition? _position;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_position != null)
      _position!.isScrollingNotifier.removeListener(_isScrollingListener);
    _position = Scrollable.of(context)?.position;
    if (_position != null)
      _position!.isScrollingNotifier.addListener(_isScrollingListener);
  }

  @override
  void dispose() {
    if (_position != null)
      _position!.isScrollingNotifier.removeListener(_isScrollingListener);
    super.dispose();
  }

  RenderSliverFloatingPersistentHeader? _headerRenderer() {
    return context.findAncestorRenderObjectOfType<RenderSliverFloatingPersistentHeader>();
  }

  void _isScrollingListener() {
    if (_position == null)
      return;

    // When a scroll stops, then maybe snap the appbar into view.
    // Similarly, when a scroll starts, then maybe stop the snap animation.
    final RenderSliverFloatingPersistentHeader? header = _headerRenderer();
    if (_position!.isScrollingNotifier.value)
      header?.maybeStopSnapAnimation(_position!.userScrollDirection);
    else
      header?.maybeStartSnapAnimation(_position!.userScrollDirection);
  }

  @override
  Widget build(BuildContext context) => widget.child;
}