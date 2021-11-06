import 'package:flutter/material.dart';
import '../../app/app_route.dart' as route;

enum FilterOption {
  Setting,
  Notification,
  Transaction,
  ContactUs,
}

class PopupMenu extends StatelessWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton(
        icon: Icon(Icons.more_vert),
        onSelected: (FilterOption selectedValue) {
          if (selectedValue == FilterOption.Notification)
            Navigator.pushNamed(context, route.notification);
          else if (selectedValue == FilterOption.Transaction)
            Navigator.pushNamed(context, route.transaction);
          else if (selectedValue == FilterOption.Setting)
            Navigator.pushNamed(context, route.setting);
          else
            Navigator.pushNamed(context, route.contactUs);
        },
        itemBuilder: (_) => [
          PopupMenuItem(
            child: Text("Notification"),
            value: FilterOption.Notification,
          ),
          PopupMenuItem(
            child: Text("Transactions"),
            value: FilterOption.Transaction,
          ),
          PopupMenuItem(
            child: Text("Settings"),
            value: FilterOption.Setting,
          ),
          PopupMenuItem(
            child: Text("Contact Us"),
            value: FilterOption.ContactUs,
          ),
        ],
      ),
    );
  }
}
