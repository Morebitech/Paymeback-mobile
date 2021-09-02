import 'package:flutter/material.dart';
import 'package:paymeback/ui/addcustomers/add_customer_view_model.dart';
import 'package:stacked/stacked.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddCustomerViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Add Customers"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
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
                      onPressed: () {},
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
      viewModelBuilder: () => AddCustomerViewModel(),
    );
  }
}
