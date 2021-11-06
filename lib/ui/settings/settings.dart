import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:paymeback/constant/theme_changer.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  Widget divider() {
    return Divider(
      color: Colors.black,
      height: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 70 / 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              title: Text("Dark Mode"),
              trailing: GFToggle(
                onChanged: (_) => ThemeBuilder.of(context)!.changeTheme(),
                value: false,
              ),
            ),
            ListTile(
              title: Text("Security"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            divider(),
            ListTile(
              title: Text("Terms and conditions"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            divider(),
            ListTile(
              title: Text("Helps"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            divider(),
            ListTile(
              title: Text("About us"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            divider(),
          ],
        ),
      ),
    );
  }
}
