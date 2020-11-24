import 'package:cooking_share/widgets/tabs_page.dart';
import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget renderProfile() {
      return InkWell(
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            flex: 1,
            child: Icon(Icons.import_contacts_rounded),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Profile Information"),
                Text("Change your account information"),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(Icons.import_contacts_rounded),
          ),
        ]),
      );
    }

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: TabsPage(selectedIndex: 3),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Account Setting"),
                Text(
                    "Update your setting like notification, payment profile edit etc."),
                renderProfile()
              ],
            )
          ],
        ),
      ),
    );
  }
}
