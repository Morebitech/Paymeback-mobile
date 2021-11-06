import 'package:flutter/material.dart';
import 'package:paymeback/ui/startUp-registration/user-name-registration/user_name_registration_viewmodel.dart';
import '../../../app/app_route.dart' as route;
import 'package:stacked/stacked.dart';

// page for get the user name
class UserNameRegistraction extends StatelessWidget {
  const UserNameRegistraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserNameRegistrationViewModel>.reactive(
      viewModelBuilder: () => UserNameRegistrationViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.darken),
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(model.title1),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        labelText: model.title2,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 75 / 100,
                          height: 50,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.indigoAccent[200]),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, route.homeTabs);
                            },
                            icon: Icon(Icons.arrow_right),
                            label: Text(model.title3),
                          ),
                        ),
                      ],
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
