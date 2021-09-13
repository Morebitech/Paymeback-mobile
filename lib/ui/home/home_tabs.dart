import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeTabs extends StatelessWidget {
  //const HomeTabs({Key? key}) : super(key: key);

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
          body: PageStorage(
            bucket: bucket,
            child: model.screens[model.indexBottom],
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
                icon: Icon(Icons.poll_outlined),
                label: model.labels.elementAt(5),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.person_outline_outlined),
                label: model.labels.elementAt(6),
              ),
            ],
          )),
    );
  }
}
