import 'package:flutter/material.dart';
import 'package:paymeback/ui/selectlanguage/language_view_model.dart';
import 'package:stacked/stacked.dart';
import '../../app/app_route.dart' as route;

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LanguageViewModel>.reactive(
      viewModelBuilder: () => LanguageViewModel(),
      builder: (context, model, Child) => Scaffold(
        body: Container(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(
                        context, route.phoneRegistration),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: FittedBox(
                              child: Text(model.languages
                                  .elementAt(index)
                                  .substring(0, 2)),
                            ),
                          ),
                        ),
                        title: Text(
                          model.languages.elementAt(index),
                          // style: Theme.of(context).textTheme.title,
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right_rounded),
                            color: Theme.of(context).errorColor,
                            onPressed: () {} //deleteTx(transactions[index].id),
                            ),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: model.languages.length,
          ),
        ),
      ),
    );
  }
}
