import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:co_helper/constants/app_colors.dart';
import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:co_helper/data/models/CowinState.dart';
import 'package:co_helper/data/repositories/cowin_districts_repository/cowin_districts_repository_contract.dart';
import 'package:co_helper/data/repositories/cowin_states_repository/cowin_states_repository_contract.dart';
import 'package:co_helper/logic/cowin_districts/bloc/cowin_districts_bloc.dart';
import 'package:co_helper/logic/cowin_states/bloc/cowin_states_bloc.dart';
import 'package:co_helper/logic/location/bloc/location_bloc.dart';
import 'package:co_helper/presentation/routes/routes.gr.dart';
import 'package:co_helper/presentation/widgets/loading_dialog.dart';
import 'package:co_helper/presentation/widgets/select_location_cutom_chip.dart';

class SelectLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
      listener: (context, state) {
        if ((state is LocationDistrict &&
                state.status == FormzStatus.submissionSuccess) ||
            (state is LocationPincode &&
                state.status == FormzStatus.submissionSuccess)) {
          ProcessDialog.closeLoadingDialog();
          context.router.popUntilRoot();
          context.router.push(VaccineCenterScreenRoute());
        }
        if ((state is LocationDistrict &&
                state.status == FormzStatus.invalid) ||
            (state is LocationPincode && state.status == FormzStatus.invalid)) {
          ProcessDialog.closeLoadingDialog();
        }
        if ((state is LocationDistrict && state.status == FormzStatus.valid) ||
            (state is LocationPincode && state.status == FormzStatus.valid)) {
          FocusScope.of(context).requestFocus(new FocusNode());
          ProcessDialog.closeLoadingDialog();
        }
        if ((state is LocationDistrict &&
                state.status == FormzStatus.submissionInProgress) ||
            (state is LocationPincode &&
                state.status == FormzStatus.submissionInProgress)) {
          ProcessDialog.showLoadingDialog(context);
        }
      },
      child: WillPopScope(
        onWillPop: () async => !ProcessDialog.isLoading,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(
              Strings.selectLocation,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: Container(
            constraints: BoxConstraints(),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    children: [
                      Row(
                        children: [
                          BlocBuilder<LocationBloc, LocationState>(
                              builder: (context, state) {
                            return CustomChip(
                              selected: state is LocationPincode,
                              title: Strings.searchByPIN,
                              onClick: () {
                                context
                                    .read<LocationBloc>()
                                    .add(LocationPincodeSelectedEvent());
                              },
                            );
                          }),
                          SizedBox(width: 12),
                          BlocBuilder<LocationBloc, LocationState>(
                            builder: (context, state) {
                              return CustomChip(
                                selected: state is LocationDistrict,
                                title: Strings.searchByDistrict,
                                onClick: () {
                                  context
                                      .read<LocationBloc>()
                                      .add(LocationDistrictSelectedEvent());
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CowinStatesBloc>(
                            create: (context) => CowinStatesBloc(
                              repository: RepositoryProvider.of<
                                  CowinStatesRepositoryContract>(context),
                            ),
                          ),
                          BlocProvider<CowinDistrictsBloc>(
                            create: (context) => CowinDistrictsBloc(
                              repository: RepositoryProvider.of<
                                  CowinDistrictsRepositoryContract>(context),
                            ),
                          ),
                        ],
                        child: Column(
                          children: [
                            SelectStateWidget(),
                            SelectDistrictWidget(),
                          ],
                        ),
                      ),
                      PincodeWidget(),
                    ],
                  ),
                ),
                ButtonWidget(
                  text: 'SUBSCRIBE',
                  onPressed: () => context
                      .read<LocationBloc>()
                      .add(LocationSubscribeEvent()),
                ),
                ButtonWidget(
                  text: 'SELECT',
                  onPressed: () =>
                      context.read<LocationBloc>().add(LocationSelectedEvent()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.primaryColor,
        textColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        minWidth: double.infinity,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class PincodeWidget extends StatelessWidget {
  const PincodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        if (!(state is LocationPincode)) {
          return Container();
        }
        return Column(
          children: [
            SizedBox(height: 12),
            TextFormField(
              maxLength: 6,
              initialValue: state.pincode.value,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: Strings.pin,
                labelStyle: TextStyle(),
                hintStyle: TextStyle(),
                filled: true,
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                errorText: state.pincode.invalid ? state.pincode.error : null,
                contentPadding: EdgeInsets.all(12.0),
              ),
              onChanged: (pincode) {
                context
                    .read<LocationBloc>()
                    .add(LocationPincodeChangeEvent(pincode: pincode));
              },
            ),
          ],
        );
      },
    );
  }
}

class SelectDistrictWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<LocationBloc>().state;
    final cowinDistrictsState = context.watch<CowinDistrictsBloc>().state;
    if (!(state is LocationDistrict)) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        DropdownSearch<String>(
          mode: Mode.MENU,
          showSelectedItem: true,
          enabled: cowinDistrictsState is CowinDistrictsLoaded,
          items: cowinDistrictsState is CowinDistrictsLoaded
              ? cowinDistrictsState.districts
                  .map((district) => district.districtName)
                  .toList()
              : null,
          label: Strings.district,
          loadingBuilder: (context, _) {
            return Container(child: CircularProgressIndicator());
          },
          // validator: ,
          // errorBuilder: (context) {

          // },
          // showSearchBox: true,
          // popupItemDisabled: (String s) => s.startsWith('I'),
          onChanged: (cowinDistrictName) {
            if (cowinDistrictsState is CowinDistrictsLoaded) {
              final CowinDistrict? cowinDistrict = cowinDistrictsState.districts
                  .firstWhere(
                      (district) => district.districtName == cowinDistrictName);
              if (cowinDistrict != null) {
                context.read<LocationBloc>().add(
                      LocationDistrictChangeEvent(
                          district: cowinDistrict.copyWith()),
                    );
              }
            }
          },
          searchBoxStyle: TextStyle(
            backgroundColor: Colors.white,
          ),
          selectedItem: state.district.value?.districtName,
        ),
        if (state is LocationDistrict &&
            state.status == FormzStatus.invalid &&
            state.district.error != null)
          Text(
            state.district.error ?? '',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
      ],
    );
  }
}

class SelectStateWidget extends StatefulWidget {
  const SelectStateWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SelectStateWidgetState createState() => _SelectStateWidgetState();
}

class _SelectStateWidgetState extends State<SelectStateWidget> {
  @override
  void initState() {
    super.initState();
    context.read<CowinStatesBloc>().add(CowinStatesInitEvent());

    final LocationState locationState = context.read<LocationBloc>().state;
    if (locationState is LocationDistrict &&
        locationState.state.value?.stateId != null) {
      context
          .read<CowinDistrictsBloc>()
          .add(CowinDistrictsReloadEvent(locationState.state.value!.stateId));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LocationBloc>().state;
    final cowinStatesState = context.watch<CowinStatesBloc>().state;

    if (!(state is LocationDistrict)) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        DropdownSearch<String>(
          mode: Mode.MENU,
          showSelectedItem: true,
          items: cowinStatesState is CowinStatesLoaded
              ? cowinStatesState.states.map((state) => state.stateName).toList()
              : [],
          label: Strings.state,
          // showSearchBox: true,
          // popupItemDisabled: (String s) => s.startsWith('I'),
          onChanged: (cowinStateName) {
            if (cowinStatesState is CowinStatesLoaded) {
              final CowinState? cowinState = cowinStatesState.states
                  .firstWhere((state) => state.stateName == cowinStateName);
              if (cowinState != null) {
                context.read<LocationBloc>().add(
                    LocationStateChangeEvent(state: cowinState.copyWith()));
                context
                    .read<CowinDistrictsBloc>()
                    .add(CowinDistrictsReloadEvent(cowinState.stateId));
              }
            }
          },
          searchBoxStyle: TextStyle(
            backgroundColor: Colors.white,
          ),
          selectedItem: state.state.value?.stateName,
        ),
        if (state is LocationDistrict &&
            state.status == FormzStatus.invalid &&
            state.state.error != null)
          Text(
            state.state.error ?? '',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
      ],
    );
  }
}
