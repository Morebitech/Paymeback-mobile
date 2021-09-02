import 'package:flutter/material.dart';
import 'package:paymeback/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 80 / 100,
                child: Center(
                  child: Text(model.btnTitle),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigoAccent[200]),
                    onPressed: () {},
                    icon: Icon(Icons.arrow_right),
                    label: Text(model.btnTitle)),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (_) {},
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          currentIndex: 1,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.grading_sharp),
              label: "Marketing",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.person),
              label: "Your Company",
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
