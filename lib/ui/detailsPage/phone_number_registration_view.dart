import 'package:flutter/material.dart';
import 'package:paymeback/ui/detailsPage/phone_number_registration_view_model.dart';
import '../../app/app_route.dart' as route;
import 'package:stacked/stacked.dart';

class PhoneNumberRegistration extends StatelessWidget {
  const PhoneNumberRegistration({Key? key}) : super(key: key);

  Widget space({double size = 10, double wt = 20}) {
    return SizedBox(
      width: wt,
      height: size,
    );
  }

  Widget card(String imagePath) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(imagePath),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneNumberRegistrationModel>.reactive(
      viewModelBuilder: () => PhoneNumberRegistrationModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 60 / 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken),
                    image: AssetImage(
                      model.backGroundImagePath,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Image.asset(model.imagePath),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(model.title1),
                    ),
                    space(size: 15),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        labelText: model.titlephone,
                      ),
                    ),
                    space(size: 15),
                    Text(model.title2),
                    space(size: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        card(model.googleImagePath),
                        space(),
                        card(model.facebookImagePath),
                        space(),
                        card(model.cloudImagePath),
                      ],
                    ),
                    space(size: 15),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigoAccent[200]),
                          onPressed: () {
                            Navigator.popAndPushNamed(
                                context, route.detailConfirmation);
                          },
                          icon: Icon(Icons.arrow_right),
                          label: Text("Next")),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
