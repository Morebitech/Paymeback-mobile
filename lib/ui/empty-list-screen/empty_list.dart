import 'package:flutter/material.dart';
import 'package:paymeback/ui/empty-list-screen/empty_list_viewmodel.dart';
import '../../../app/app_route.dart' as route;
import 'package:stacked/stacked.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmptyListViewModel>.reactive(
      builder: (context, model, child) => Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Center(child: Image.asset(model.image)),
                  ),
                  Text(model.title),
                  SizedBox(
                    height: 20,
                  ),
                  Text(model.title2),
                  Text(model.title3),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigoAccent[200]),
                      onPressed: () {},
                      child: Text(model.btnTitle),
                    ),
                  ),
                  Container(
                    height: 52,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigoAccent[200]),
                      onPressed: () => Navigator.pushNamed(
                          context, route.addCustomerManually),
                      child: Text(model.btnTitle2),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => EmptyListViewModel(),
    );
  }
}
