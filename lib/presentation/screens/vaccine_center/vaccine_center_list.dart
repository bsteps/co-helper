import 'package:co_helper/logic/cowin_centers/bloc/cowin_centers_bloc.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_center_search.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_centers_list_item.dart';
import 'package:co_helper/presentation/widgets/custom_sliver_persistent_header.dart';
import 'package:co_helper/presentation/widgets/error_dialog.dart';
import 'package:co_helper/presentation/widgets/no_data.dart';
import 'package:co_helper/utility/physics/no_implicit_scroll_physics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VaccineCenterList extends StatelessWidget {
  final Axis scrollDirection;
  // final PageStorageKey pageKey;

  const VaccineCenterList({
    Key? key,
    required this.scrollDirection,
    // this.pageKey =
    //     const PageStorageKey<String>('vaccineCenterCustomListPageKey'),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<CowinCentersBloc>().add(CowinCentersReloadEvent());
      },
      child: BlocConsumer<CowinCentersBloc, CowinCentersState>(
        listener: (context, state) {
          if (state is CowinCentersError) {
            ErrorDialog.showLoadingDialog(context, state.message);
          }
        },
        builder: (context, state) {
          if (state is CowinCentersLoading) {
            return Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            );
          }

          if (state is CowinCentersError) {
            // TODO: handle error.
            return NoDataWidget(text: "No Data");
          }

          if ((state is CowinCentersLoaded ||
                  state is CowinCentersSearchLoading) &&
              state.centers.length != 0) {
            return Container(
              height: scrollDirection == Axis.horizontal ? 200 : null,
              child: CustomScrollView(
                scrollDirection: scrollDirection,
                physics: NoImplicitScrollPhysics(),
                // key: pageKey,
                slivers: [
                  if (scrollDirection == Axis.vertical)
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
                              Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(0),
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
                        child: VaccineCenterSearch(),
                      ),
                    ),
                  if (state is CowinCentersLoaded ||
                      state is CowinCentersSubscribing)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (scrollDirection == Axis.horizontal) {
                            return Wrap(
                              children: [
                                Container(
                                  margin: index == 0
                                      ? EdgeInsets.only(right: 16, left: 16)
                                      : EdgeInsets.only(right: 16),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: VaccineCentersListItem(
                                    size: VaccineCentersListItemSize.small,
                                    center: (state as CowinCentersLoaded)
                                        .currentList[index],
                                  ),
                                ),
                              ],
                            );
                          }
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: VaccineCentersListItem(
                              center: (state as CowinCentersLoaded)
                                  .currentList[index],
                              onPressed: () {
                                context.read<CowinCentersBloc>().add(
                                      CowinCentersSubscribeEvent(
                                        cowinCenter: state.currentList[index],
                                      ),
                                    );
                              },
                            ),
                          );
                        },
                        childCount:
                            (state as CowinCentersLoaded).currentList.length,
                      ),
                    ),
                ],
              ),
            );
          }

          return NoDataWidget(text: "No Center Available.");
        },
      ),
    );
  }
}
