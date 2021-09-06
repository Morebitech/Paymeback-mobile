import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../home_viewmodel.dart';

class AllCustomersTab extends StatelessWidget {
  const AllCustomersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Text(
                model.allCustomersLabels.elementAt(0),
                style: TextStyle(
                  fontSize: 20,
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
                  hintText: model.allCustomersLabels.elementAt(1),
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.width * 100 / 100,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          foregroundImage:
                              AssetImage(model.creditors[index].imageUrl),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.creditors[index].name,
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                            Text(
                                "Due Date: ${DateFormat("dd-MM-yyyy").format(model.creditors[index].dueDate)}"),
                            Text("${model.creditors[index].dayLeft} days left"),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("${model.creditors[index].amount} Ksh"),
                            Text("Not paid"),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: model.creditors.length,
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
                  model.allCustomersLabels.elementAt(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
