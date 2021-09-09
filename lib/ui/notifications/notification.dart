import 'package:flutter/material.dart';
import 'package:paymeback/ui/notifications/notification_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      viewModelBuilder: () => NotificationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            model.appbarTitle,
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: Column(),
      ),
    );
  }
}
