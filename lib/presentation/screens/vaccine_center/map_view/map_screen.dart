import 'package:auto_route/auto_route.dart';
import 'package:co_helper/logic/cowin_centers/bloc/cowin_centers_bloc.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_center_list.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_center_search.dart';
import 'package:co_helper/presentation/screens/vaccine_center/vaccine_centers_list_item.dart';
import 'package:co_helper/presentation/widgets/error_dialog.dart';
import 'package:co_helper/presentation/widgets/no_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VaccineCenterMapScreen extends StatelessWidget {
  final CowinCentersBloc cowinCentersBloc;

  const VaccineCenterMapScreen({Key? key, required this.cowinCentersBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cowinCentersBloc,
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<CowinCentersBloc>()
                      .add(CowinCentersReloadEvent());
                },
                child: Stack(
                  children: [
                    BlocConsumer<CowinCentersBloc, CowinCentersState>(
                      listener: (context, state) {
                        if (state is CowinCentersError) {
                          ErrorDialog.showLoadingDialog(context, state.message);
                        }
                      },
                      builder: (context, state) {
                        final Set<Marker> markers = state is CowinCentersLoaded
                            ? state.centers.map((center) {
                                return Marker(
                                  markerId:
                                      MarkerId(center.centerId.toString()),
                                  position: LatLng(
                                    center.lat.toDouble(),
                                    center.long.toDouble(),
                                  ),
                                );
                              }).toSet()
                            : {};
                        return GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target:
                                  LatLng(37.42796133580664, -122.085749655962),
                              zoom: 10),
                          // onMapCreated: _onMapCreated,
                          myLocationEnabled: true,
                          compassEnabled: false,
                          // padding: EdgeInsets.only(
                          //     top: MediaQuery.of(context).padding.top),
                          markers: markers,
                          myLocationButtonEnabled: true,
                          mapType: MapType.normal,
                          zoomControlsEnabled: false,
                        );
                      },
                    ),
                    // Container(
                    //   constraints: BoxConstraints(),
                    //   child: ListView(
                    //     physics: AlwaysScrollableScrollPhysics(),
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, right: 16),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              context.popRoute();
                            },
                            padding: const EdgeInsets.all(2),
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          // IconButton(
                          //     icon: Icon(
                          //       Icons.arrow_back,
                          //       color: Colors.black,
                          //     ),
                          //     onPressed: () {
                          //       Navigator.pop(context);
                          //     }),
                          Flexible(
                            child: VaccineCenterSearch(),
                          ),
                        ],
                      ),
                    ),
                    centerList(context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  centerList(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          constraints: BoxConstraints(),
          alignment: Alignment.bottomCenter,
          child: VaccineCenterList(
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }

  Widget centerListItem(BuildContext context) {
    return BlocBuilder<CowinCentersBloc, CowinCentersState>(
      builder: (context, state) {
        if (state is CowinCentersLoading) {
          return Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          );
        }

        if (state is CowinCentersError) {
          // TODO: handle error.
          return Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(state.message),
                Text(state.status.toString()),
              ],
            ),
          );
        }

        if (state is CowinCentersLoaded && state.centers.length != 0) {
          return Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.currentList.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 12),
              itemBuilder: (BuildContext context, int index) {
                return Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: VaccineCentersListItem(
                        size: VaccineCentersListItemSize.small,
                        center: state.currentList[index],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        }

        return NoDataWidget(text: "No Center Available.");
      },
    );
  }
}
