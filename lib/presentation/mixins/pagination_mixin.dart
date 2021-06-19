import 'package:flutter/cupertino.dart';

mixin PaginationMixin<T extends StatefulWidget> on State<T> {
  final scrollPaginationController = ScrollController(keepScrollOffset: true);

  void initiatePagination({required VoidCallback onReachedLast}) {
    scrollPaginationController.addListener(() => _isBottom ? onReachedLast() : null);
  }

  void disposePagination() => scrollPaginationController.dispose();

  bool get _isBottom {
    if (!scrollPaginationController.hasClients) return false;
    final maxScroll = scrollPaginationController.position.maxScrollExtent;
    final currentScroll = scrollPaginationController.offset;
    // print("currentScroll: $currentScroll");
    // print("maxScroll: $maxScroll");
    return currentScroll >= (maxScroll * 0.8);
  }
}
