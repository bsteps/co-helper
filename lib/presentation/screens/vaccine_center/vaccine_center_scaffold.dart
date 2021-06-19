import 'package:co_helper/constants/app_colors.dart';
import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/logic/cowin_centers/bloc/cowin_centers_bloc.dart';
import 'package:co_helper/logic/location/bloc/location_bloc.dart';
import 'package:co_helper/presentation/routes/routes.gr.dart';
import 'package:co_helper/presentation/widgets/icon_text.dart';
import 'package:co_helper/presentation/widgets/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mdi/mdi.dart';

class VaccineCenterScaffold extends StatefulWidget {
  final Widget child;

  const VaccineCenterScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _VaccineCenterScaffoldState createState() => _VaccineCenterScaffoldState();
}

class _VaccineCenterScaffoldState extends State<VaccineCenterScaffold> {
  @override
  void initState() {
    context.read<CowinCentersBloc>().add(CowinCentersInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CowinCentersBloc, CowinCentersState>(
      listener: (context, state) {
        if (state is CowinCentersSubscribing) {
          ProcessDialog.showLoadingDialog(context);
        } else {
          ProcessDialog.closeLoadingDialog();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            Strings.vaccineCenters,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: PreferredSize(
            child: Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  context.read<LocationBloc>().add(LocationInitEvent());
                  context.navigateTo(SelectLocationScreenRoute());
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<LocationBloc, LocationState>(
                      builder: (context, state) {
                        final state =
                            BlocProvider.of<LocationBloc>(context).currentState;
                        if (state is LocationDistrict) {
                          return IconText(
                            Mdi.mapMarker,
                            "${state.district.value?.districtName ?? ''}, ${state.state.value?.stateName ?? ''}",
                          );
                        }
                        if (state is LocationPincode) {
                          return IconText(Mdi.mapMarker, state.pincode.value);
                        }
                        return IconText(Mdi.mapMarker, 'Not Selected');
                      },
                    ),
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.fromLTRB(18, 0, 4, 3),
                      child: Text(
                        'Change Location',
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            preferredSize: Size(double.infinity, 40),
          ),
          actions: [
            // IconButton(
            //   padding: EdgeInsets.all(16),
            //   icon: Icon(Mdi.mapSearchOutline),
            //   onPressed: () {
                // context.navigateTo(
                //   VaccineCenterMapScreenRoute(
                //     cowinCentersBloc:
                //         BlocProvider.of<CowinCentersBloc>(context),
                //   ),
                // );
            //   },
            // ),
          ],
        ),
        body: widget.child,
      ),
    );
  }
}
