import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:test_app/components/card/home_card_item.dart';
import 'package:test_app/screens/my_drawer.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/utils/homeScreenItemList.dart';

class Home extends StatelessWidget {
  static const String id = Constants.HOME_SCRREN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        actions: [Icon(Icons.more_vert)],
      ),
      drawer: MyDrawer(),
      body: getBody(context),
    );
  }
}

Widget getBody(BuildContext context) {
  if (kIsWeb) {
    return bodyForWeb(context);
  } else if (Platform.isAndroid) {
    return bodyForAndroid(context);
  } else {
    return Container();
  }
}

// envoked on Android device
/*
Widget bodyForAndroidX(BuildContext context) {
  final HomeScreenItemList homeScreenItem = HomeScreenItemList();

  return SingleChildScrollView(
    child: Column(
      children: homeScreenItem.getHomeScreenItem
          .map(
            (item) => HomeCardItem(
              title: item,
              color: Color(0xff00ff),
              onTap: () {
                Navigator.pushNamed(context, item);
              },
            ),
          )
          .toList(),
    ),
  );
}
*/
Widget bodyForAndroid(BuildContext context) {
  final HomeScreenItemList homeScreenItem = HomeScreenItemList();

  return ListView.builder(
    itemCount: homeScreenItem.getHomeScreenItem.length,
    itemBuilder: (context, index) => HomeCardItem(
      title: homeScreenItem.getHomeScreenItem[index],
      color: Color.fromRGBO(255, index * 10, index * 20, 1),
      onTap: () {
        Navigator.pushNamed(
          context,
          homeScreenItem.getHomeScreenItem[index],
        );
      },
    ),
  );
}

// envoked on Web browser
Widget bodyForWeb(BuildContext context) {
  final HomeScreenItemList homeScreenItem = HomeScreenItemList();

  return GridView.builder(
    itemCount: homeScreenItem.getHomeScreenItem.length,
    itemBuilder: (context, index) => HomeCardItem(
      title: homeScreenItem.getHomeScreenItem[index],
      color: Color.fromRGBO(255, index * 10, index * 20, 1),
      onTap: () {
        Navigator.pushNamed(
          context,
          homeScreenItem.getHomeScreenItem[index],
        );
      },
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
  );
}
