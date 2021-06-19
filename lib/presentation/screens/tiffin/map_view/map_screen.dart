import 'package:auto_route/auto_route.dart';
import 'package:co_helper/logic/tiffins/bloc/tiffins_bloc.dart';
import 'package:co_helper/presentation/screens/tiffin/tiffin_service_list.dart';
import 'package:co_helper/presentation/screens/tiffin/tiffin_service_search.dart';
import 'package:co_helper/presentation/widgets/error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TiffinServiceMapScreen extends StatelessWidget {
  final TiffinsBloc tiffinsBloc;

  const TiffinServiceMapScreen({Key? key, required this.tiffinsBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: tiffinsBloc,
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<TiffinsBloc>().add(TiffinsEvent.reload());
                },
                child: Stack(
                  children: [
                    // Container(
                    //   color: Colors.yellow[100],
                    //   height: MediaQuery.of(context).size.height,
                    //   width: MediaQuery.of(context).size.width,
                    // ),
                    BlocConsumer<TiffinsBloc, TiffinsState>(
                      listener: (context, state) {
                        if (state is TiffinError) {
                          ErrorDialog.showLoadingDialog(context, state.message);
                        }
                      },
                      builder: (context, state) {
                        final Set<Marker> markers = state is TiffinLoaded
                            ? state.currentTiffins
                                .where((tiffin) => tiffin.location != null)
                                .map((tiffin) {
                                return Marker(
                                  markerId: MarkerId(tiffin.id.toString()),
                                  position: LatLng(
                                    tiffin.lat!,
                                    tiffin.lng!,
                                  ),
                                );
                              }).toSet()
                            : {};
                        return GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: LatLng(22.310696, 73.192635),
                            zoom: 11,
                          ),
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
                            child: TiffinServiceSearch(),
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
          child: TiffinServiceList(
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
