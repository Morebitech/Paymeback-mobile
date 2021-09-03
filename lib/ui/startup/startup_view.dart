import 'package:flutter/material.dart';
import 'package:paymeback/ui/startup/startup_view_model.dart';
import 'package:stacked/stacked.dart';
import '../../app/app_route.dart' as route;

class StartupView extends StatelessWidget {
  Widget text(String title) {
    return Text(title, style: TextStyle(color: Colors.white, fontSize: 20));
  }

  Widget space({double size = 10}) {
    return SizedBox(
      height: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, route.language),
          child: Container(
            width: double.infinity,
            height: double.infinity,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(model.imagePath),
                space(size: 15),
                text("${model.title1}"),
                space(),
                text("${model.title2}"),
                space(),
                text("${model.title3}"),
                space(),
                text("${model.title4}"),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
