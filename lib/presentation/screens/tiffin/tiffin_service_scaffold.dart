import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/logic/tiffins/bloc/tiffins_bloc.dart';
import 'package:co_helper/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdi/mdi.dart';
import 'package:auto_route/auto_route.dart';

class TiffinServiceScaffold extends StatelessWidget {
  final Widget child;

  const TiffinServiceScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TiffinsBloc(
        repository: RepositoryProvider.of(context),
        isPaginated: true,
      )..add(TiffinsEvent.load()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text(
                Strings.tiffinServices,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              actions: [
                // IconButton(
                //   padding: EdgeInsets.all(16),
                //   icon: Icon(Mdi.mapSearchOutline),
                //   onPressed: () {
                    // context.pushRoute(TiffinServiceMapScreenRoute(
                    //   tiffinsBloc: BlocProvider.of(context),
                    // ));
                //   },
                // ),
              ],
            ),
            body: child,
          );
        },
      ),
    );
  }
}
