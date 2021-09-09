import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:paymeback/ui/add-customer-from-contactbook/contact-book/add_customer_from_contactbook_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AddContactFromContactBook extends StatelessWidget {
  const AddContactFromContactBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddCustomerFromContactBookViewModel>.reactive(
      viewModelBuilder: () => AddCustomerFromContactBookViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            model.labels.elementAt(0),
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: FlutterToggleTab(
                    // width in percent, to set full width just set to 100
                    width: 90,
                    borderRadius: 30,
                    height: 50,
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    labels: model.toggleBarLabels,
                    selectedLabelIndex: (index) {
                      model.updateIdext(index);
                    },
                    selectedIndex: model.index,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                            color: Colors.black,
                            width: 1 / 2,
                            style: BorderStyle.solid),
                      ),
                      width: MediaQuery.of(context).size.width * 70 / 100,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: model.labels.elementAt(1),
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(model.labels.elementAt(2)),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: MediaQuery.of(context).size.height * 55 / 100,
                  width: double.infinity,
                  color: Colors.blueGrey[400],
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Contact cont = model.contacts[index];
                      return ListTile(
                        title: Text(cont.displayName.toString()),
                        subtitle: Text("${cont.phones}"),
                      );
                    },
                    itemCount: model.contacts.length,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(model.labels.elementAt(3)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
