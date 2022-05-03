import 'package:flutter/material.dart';

class IndexNavigatorItem {
  final String title;
  final IconData imgUri;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imgUri, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem('整租', Icons.home, (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('合租', Icons.people_alt, (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('找房', Icons.location_on_sharp, (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('去出租', Icons.auto_awesome_mosaic, (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  })
];
