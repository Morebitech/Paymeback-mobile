import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:paymeback/ui/addcustomers/add_customer_view.dart';
import 'package:stacked/stacked.dart';

import '../home_viewmodel.dart';

class DebtorsTab extends StatelessWidget {
  const DebtorsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => SingleChildScrollView(
        child: model.customersList.isEmpty
            ? AddCustomer()
            : Column(
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.indigo,
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            model.debtorsLabels.elementAt(0),
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            model.debtorsLabels.elementAt(1),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                          color: Colors.black,
                          width: 1 / 2,
                          style: BorderStyle.solid),
                    ),
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: model.debtorsLabels.elementAt(2),
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: MediaQuery.of(context).size.width * 90 / 100,
                    child: ListView.builder(
                      itemBuilder: (ctx, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                foregroundImage: AssetImage(
                                    model.customersList[index].imageUrl),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.customersList[index].name,
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                  Text(
                                      "Due Date: ${DateFormat("dd-MM-yyyy").format(model.customersList[index].dueDate)}"),
                                  Text(
                                      "${model.customersList[index].dayLeft} days left"),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      "${model.customersList[index].amount} Ksh"),
                                  Text("Not paid"),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: model.customersList.length,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text(
                        model.debtorsLabels.elementAt(3),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
