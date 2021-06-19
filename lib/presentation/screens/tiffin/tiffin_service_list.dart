import 'package:co_helper/data/models/Tiffin.dart';
import 'package:co_helper/logic/tiffins/bloc/tiffins_bloc.dart';
import 'package:co_helper/presentation/mixins/pagination_mixin.dart';
import 'package:co_helper/presentation/screens/tiffin/tiffin_service_search.dart';
import 'package:co_helper/presentation/screens/tiffin/tiffin_services_list_item.dart';
import 'package:co_helper/presentation/widgets/custom_sliver_persistent_header.dart';
import 'package:co_helper/presentation/widgets/error_dialog.dart';
import 'package:co_helper/presentation/widgets/no_data.dart';
import 'package:co_helper/utility/physics/no_implicit_scroll_physics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class TiffinServiceList extends StatefulWidget {
  final Axis scrollDirection;

  const TiffinServiceList({
    Key? key,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  _TiffinServiceListState createState() => _TiffinServiceListState();
}

class _TiffinServiceListState extends State<TiffinServiceList>
    with PaginationMixin {
  // final PageStorageKey pageKey =
  //     PageStorageKey<String>('tiffinServiceCustomListPageKey');

  @override
  void initState() {
    super.initState();
    initiatePagination(onReachedLast: () {
      final tiffinBloc = context.read<TiffinsBloc>();

      if (tiffinBloc.state is TiffinLoaded &&
          tiffinBloc.state.isPaginated &&
          !tiffinBloc.state.hasReachedMax) {
        tiffinBloc.add(TiffinsEvent.loadMore());
      }
    });
  }

  @override
  void dispose() {
    disposePagination();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('rebuilded tiffin service list');
    return RefreshIndicator(
      onRefresh: () async {
        context.read<TiffinsBloc>().add(TiffinsEvent.reload());
      },
      child: BlocConsumer<TiffinsBloc, TiffinsState>(
        listener: (context, state) {
          if (state is TiffinError) {
            ErrorDialog.showLoadingDialog(context, state.message);
          }
        },
        builder: (context, state) {
          return state.when(
            initial: (_, __, ___, ____, _____, ______) => Container(),
            loading: (_, __, ___, ____, _____, ______) => Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
            loaded: (_, __, search, ___, ____, _____, currentTiffins) {
              return _widgetTiffinsListView(currentTiffins, search);
            },
            error: (_, __, ____, _____, ______, _______, message, status) =>
                NoDataWidget(text: "No Data"),
            loadingMore: (_, __, search, ____, _____, ______, currentTiffins) {
              return _widgetTiffinsListView(currentTiffins, search, true);
            },
            searchLoading: (_, __, search, ___, ____, tiffins) {
              return _widgetTiffinsListView(tiffins, search, false, true);
            },
          );
        },
      ),
    );
  }

  Widget _widgetTiffinsListView(Iterable<Tiffin> tiffins, String? search,
      [bool isLoading = false, bool searchIsLoading = false]) {
    if (tiffins.isEmpty && (search == null || search == ''))
      return NoDataWidget(text: "No Data Available");

    return Container(
      height: widget.scrollDirection == Axis.horizontal ? 164 : null,
      child: CustomScrollView(
        controller: scrollPaginationController,
        scrollDirection: widget.scrollDirection,
        physics: NoImplicitScrollPhysics(),
        // key: pageKey, `
        slivers: [
          if (widget.scrollDirection == Axis.vertical)
            CustomSliverPersistentHeader(
              floating: true,
              maxHeight: 60,
              minHeight: 60,
              snap: true,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).scaffoldBackgroundColor,
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
                    ],
                    stops: [
                      0.4,
                      1,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: TiffinServiceSearch(),
              ),
            ),
          if (!searchIsLoading)
            SliverList(
              // key: pageKey,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final tiffin = tiffins.elementAt(index);
                  if (widget.scrollDirection == Axis.horizontal) {
                    return Wrap(children: [
                      Container(
                        margin: index == 0
                            ? EdgeInsets.only(right: 16, left: 16)
                            : EdgeInsets.only(right: 16),
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TiffinServicesListItem(tiffin: tiffin),
                      )
                    ]);
                  }
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TiffinServicesListItem(
                      tiffin: tiffin,
                      size: TiffinServicesListItemSize.small,
                      onPressed: () {
                        launch("tel:${tiffin.mobileNumber}");
                      },
                    ),
                  );
                },
                childCount: tiffins.length,
              ),
            ),
          if (isLoading || searchIsLoading)
            CustomSliverPersistentHeader(
              maxHeight: 40,
              minHeight: 40,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
