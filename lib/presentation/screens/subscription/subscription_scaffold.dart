import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/logic/subscriptions/bloc/subscriptions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubscriptionScaffold extends StatelessWidget {
  final Widget child;

  const SubscriptionScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscriptionsBloc(
        repository: RepositoryProvider.of(context),
        isPaginated: true,
      )..add(SubscriptionsEvent.load()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text(
                Strings.subscriptions,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            body: child,
          );
        },
      ),
    );
  }
}
