import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/logic/tiffins/bloc/tiffins_bloc.dart';
import 'package:co_helper/presentation/widgets/custom_multi_list_clip_selector.dart';
import 'package:co_helper/presentation/widgets/filter_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdi/mdi.dart';
import 'package:co_helper/utility/extensions/map_apis.dart';
import 'package:auto_route/auto_route.dart';

class TiffinServiceSearch extends StatefulWidget {
  @override
  _TiffinServiceSearchState createState() => _TiffinServiceSearchState();
}

class _TiffinServiceSearchState extends State<TiffinServiceSearch> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    final state = context.read<TiffinsBloc>().state;
    _controller.text = state.search ?? '';
  }
  
  @override
  void dispose() {
    _controller.dispose();  
    _focusNode.dispose();  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(4),
            child: BlocListener<TiffinsBloc, TiffinsState>(
              listenWhen: (prevState, nextState) => prevState.search != nextState.search,
              listener: (context, state) {
                if(state.search == null || state.search == '') {
                  _controller.text = state.search ?? '';
                }
              },
              child: TextFormField(
                controller: _controller,
                focusNode: _focusNode,
                onChanged: (value) {
                  final state = context.read<TiffinsBloc>().state;
                  if(value != state.search)
                    context.read<TiffinsBloc>().add(TiffinsEvent.search(value));
                },
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: Strings.search,
                  labelText: Strings.search,
                  labelStyle: TextStyle(),
                  hintStyle: TextStyle(),
                  filled: true,
                  prefixIcon: IconButton(
                    icon: Icon(Mdi.magnify),
                    onPressed: () {
                      // FocusScope.of(context).unfocus();
                    },
                  ),
                  // suffixIcon: Icon(Mdi.filterVariant),
                  counterText: "",
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(12.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Material(
          elevation: 2,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              filterBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Mdi.filterVariant),
            ),
          ),
        )
      ],
    );
  }

  filterBottomSheet(BuildContext context) {
    return showModalBottomSheet<Widget>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext bottomSheetContext) {
        return BlocProvider.value(
          value: BlocProvider.of<TiffinsBloc>(context),
          child: Wrap(
            children: [
              Container(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 3,
                  width: 50,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Filter",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BlocBuilder<TiffinsBloc, TiffinsState>(
                        builder: (context, state) {
                      return CustomMultiListClipSelector(
                        data: {
                          "Food Type": [
                            ClipData(
                                title: "Veg",
                                onSelected: (_) {
                                  context
                                      .read<TiffinsBloc>()
                                      .add(TiffinsEvent.filter(
                                        key: "types_of_food",
                                        value: "Veg",
                                      ));
                                },
                                selected: state.filters != null &&
                                    state.filters!
                                        .hasKeyValue("types_of_food", "Veg")),
                            ClipData(
                                title: "Non-Veg",
                                onSelected: (_) {
                                  context
                                      .read<TiffinsBloc>()
                                      .add(TiffinsEvent.filter(
                                        key: "types_of_food",
                                        value: "Non-Veg",
                                      ));
                                },
                                selected: state.filters != null &&
                                    state.filters!.hasKeyValue(
                                        "types_of_food", "Non-Veg")),
                            ClipData(
                                title: "Jain",
                                onSelected: (_) {
                                  context
                                      .read<TiffinsBloc>()
                                      .add(TiffinsEvent.filter(
                                        key: "types_of_food",
                                        value: "Jain",
                                      ));
                                },
                                selected: state.filters != null &&
                                    state.filters!
                                        .hasKeyValue("types_of_food", "Jain")),
                          ],
                          "Cuisines": [
                            ClipData(
                              title: "Gujarati",
                              onSelected: (_) {
                                context
                                    .read<TiffinsBloc>()
                                    .add(TiffinsEvent.filter(
                                      key: "cuisines",
                                      value: "Gujarati",
                                    ));
                              },
                              selected: state.filters != null &&
                                  state.filters!
                                      .hasKeyValue("cuisines", "Gujarati"),
                            ),
                            ClipData(
                              title: "Maharashtrian",
                              onSelected: (_) {
                                context
                                    .read<TiffinsBloc>()
                                    .add(TiffinsEvent.filter(
                                      key: "cuisines",
                                      value: "Maharashtrian",
                                    ));
                              },
                              selected: state.filters != null &&
                                  state.filters!
                                      .hasKeyValue("cuisines", "Maharashtrian"),
                            ),
                            ClipData(
                              title: "North-Indian",
                              onSelected: (_) {
                                context
                                    .read<TiffinsBloc>()
                                    .add(TiffinsEvent.filter(
                                      key: "cuisines",
                                      value: "North-Indian",
                                    ));
                              },
                              selected: state.filters != null &&
                                  state.filters!
                                      .hasKeyValue("cuisines", "North-Indian"),
                            ),
                            ClipData(
                              title: "South Indian",
                              onSelected: (_) {
                                context
                                    .read<TiffinsBloc>()
                                    .add(TiffinsEvent.filter(
                                      key: "cuisines",
                                      value: "South Indian",
                                    ));
                              },
                              selected: state.filters != null &&
                                  state.filters!
                                      .hasKeyValue("cuisines", "South Indian"),
                            ),
                            ClipData(
                              title: "Fruits and Salads",
                              onSelected: (_) {
                                context
                                    .read<TiffinsBloc>()
                                    .add(TiffinsEvent.filter(
                                      key: "cuisines",
                                      value: "Fruits and Salads",
                                    ));
                              },
                              selected: state.filters != null &&
                                  state.filters!.hasKeyValue(
                                      "cuisines", "Fruits and Salads"),
                            ),
                          ]
                        },
                      );
                    }),
                    FilterButtonWidget(
                      onClick: () {
                        context
                            .read<TiffinsBloc>()
                            .add(TiffinsEvent.filterSelected());
                        bottomSheetContext.popRoute();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
