import 'package:flutter/material.dart';
import 'package:paymeback/ui/detailsconfirmationPage/confirmation_view_model.dart';
import 'package:stacked/stacked.dart';

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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                color: Colors.blue[900],
                child: Container(
                  height: MediaQuery.of(context).size.height * 30 / 100,
                  child: Column(
                    children: [
                      Text(model.title1),
                      Text(model.title2),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0.0,
              right: 0.0,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 20 / 100,
                  child: Column(
                    children: [
                      Text(model.title3),
                    ],
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
