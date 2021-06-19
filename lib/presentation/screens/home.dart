import 'package:auto_route/auto_route.dart';
import 'package:co_helper/constants/strings.dart';
import 'package:co_helper/presentation/routes/routes.gr.dart';
import 'package:co_helper/presentation/widgets/home_item.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void afterFirstLayout(BuildContext context) async {
  //   // FirebaseMessagingService(context).getMessage();
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setString(PrefStrings.showNotification, Strings.show);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints(),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Text(
                Strings.appName,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 32),
              HomeItem(
                title: Strings.vaccineCenters,
                icon: Mdi.needle,
                onClick: () {
                  context.router.push(VaccineCenterScreenRoute());
                },
              ),
              SizedBox(height: 12),
              HomeItem(
                title: Strings.tiffinServices,
                icon: Mdi.food,
                onClick: () {
                  context.router.push(TiffinServiceScreenRoute());
                },
              ),
              SizedBox(height: 12),
              HomeItem(
                title: Strings.subscriptions,
                icon: Mdi.bellRingOutline,
                onClick: () {
                  context.router.push(SubscriptionScreenRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
