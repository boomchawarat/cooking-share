import 'package:cooking_share/widgets/tabs_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: TabsPage(selectedIndex: 0),
        body: Column(
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
