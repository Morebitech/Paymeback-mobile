import 'package:flutter/material.dart';
import 'package:paymeback/constant/popup_menu.dart';
import 'package:paymeback/ui/home/tabs/all_customers_tab.dart';
import 'package:paymeback/ui/home/tabs/creditors_tab.dart';
import 'package:paymeback/ui/home/tabs/debtors_tab.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(model.labels.elementAt(0)),
            actions: [
              PopupMenu(),
            ],
            bottom: TabBar(
              indicatorColor: Colors.indigo,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Container(
                  height: 30,
                  child: Text(model.labels.elementAt(1)),
                ),
                Container(
                  height: 30,
                  child: Text(model.labels.elementAt(2)),
                ),
                Container(
                  height: 30,
                  child: Text(model.labels.elementAt(3)),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AllCustomersTab(),
              CreditorsTab(),
              DebtorsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
