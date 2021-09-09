import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:paymeback/ui/add-customer-from-contactbook/finilization-contactbook/finilization_contactbook_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ContactBookFinilization extends StatelessWidget {
  const ContactBookFinilization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactBookFinilizationViewModel>.reactive(
      viewModelBuilder: () => ContactBookFinilizationViewModel(),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Text(" "),
                    ),
                    title: Text(model.labels.elementAt(1)),
                    subtitle: Text(model.labels.elementAt(2)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.monetization_on),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelText: model.labels.elementAt(1),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: DateTimeField(
                    format: DateFormat("yyyy-MM-dd"),
                    decoration: InputDecoration(
                      hintText: model.labels.elementAt(2),
                      icon: Icon(Icons.calendar_today_outlined),
                    ),
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          helpText: model.labels.elementAt(2),
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  height: 100,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: model.labels.elementAt(3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      model.labels.elementAt(4),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
