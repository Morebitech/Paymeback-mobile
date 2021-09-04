import 'package:flutter/material.dart';
import 'package:paymeback/ui/wearsmute/tabs/all_customers_tab.dart';
import 'package:paymeback/ui/wearsmute/tabs/creditors_tab.dart';
import 'package:paymeback/ui/wearsmute/tabs/debtors_tab.dart';
import 'package:paymeback/ui/wearsmute/wearsmute_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Wearsmute extends StatelessWidget {
  const Wearsmute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WearsmuteViewModel>.reactive(
      viewModelBuilder: () => WearsmuteViewModel(),
      builder: (context, model, child) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(model.labels.elementAt(0)),
            bottom: TabBar(
              indicatorColor: Colors.indigo,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Container(height: 30, child: Text(model.labels.elementAt(1))),
                Container(height: 30, child: Text(model.labels.elementAt(2))),
                Container(height: 30, child: Text(model.labels.elementAt(3))),
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
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              model.updateBottomIndex(index);
            },
            backgroundColor: Colors.blue,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.indigo,
            currentIndex: model.indexBottom,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.home),
                label: model.labels.elementAt(4),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.business),
                label: model.labels.elementAt(5),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.person_outline_outlined),
                label: model.labels.elementAt(6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
