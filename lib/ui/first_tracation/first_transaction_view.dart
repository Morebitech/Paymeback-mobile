import 'package:flutter/material.dart';
import 'package:paymeback/ui/first_tracation/first_transaction_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FirstTransaction extends StatelessWidget {
  const FirstTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FirstTransactionViewModel>.reactive(
      viewModelBuilder: () => FirstTransactionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage(model.image),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        model.name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        model.phoneNumber,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(""),
              Column(
                children: [
                  Image(image: AssetImage(model.lockImage)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(model.text1),
                  Text("you and ${model.name} can view this"),
                  Text(model.text2),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.blueGrey[200],
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("add first transaction of ${model.name}"),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.arrow_downward)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 45 / 100,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            child: Text(model.text3),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 45 / 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange[300]),
                            child: Text(model.text4),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
