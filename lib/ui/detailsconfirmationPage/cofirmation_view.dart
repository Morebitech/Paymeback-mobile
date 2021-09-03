import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:paymeback/ui/detailsconfirmationPage/confirmation_view_model.dart';
import 'package:stacked/stacked.dart';
import '../../app/app_route.dart' as route;

FocusNode focusNode = FocusNode();

class DetailConfirmation extends StatelessWidget {
  const DetailConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailConfirmationModel>.reactive(
      viewModelBuilder: () => DetailConfirmationModel(),
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
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
            Positioned(
              bottom: 0,
              left: 0.0,
              right: 0.0,
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  color: Colors.blue[900],
                  child: Container(
                    height: MediaQuery.of(context).size.height * 40 / 100,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          model.title1,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          model.title2,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0.0,
              right: 0.0,
              child: Container(
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 30 / 100,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          VerificationCode(
                            textStyle: TextStyle(
                                fontSize: 20.0, color: Colors.red[900]),
                            underlineColor: Colors.amber,
                            keyboardType: TextInputType.number,
                            length: 4,
                            clearAll: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.grey,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    model.title5,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            onCompleted: (_) {
                              Navigator.popAndPushNamed(
                                  context, route.finalDetailPage);
                            },
                            onEditing: (_) {},
                          ),
                          Text(model.title3,
                              style: TextStyle(
                                fontSize: 20.0,
                              )),
                          Text(model.title4,
                              style: TextStyle(
                                fontSize: 20.0,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
