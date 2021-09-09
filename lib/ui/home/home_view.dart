import 'package:flutter/material.dart';
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
