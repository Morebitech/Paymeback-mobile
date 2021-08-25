import 'package:flutter/material.dart';
import 'package:paymeback/ui/finaldetailsPage/final_detail_page_view_model.dart';
import 'package:paymeback/ui/widgets/detail_button.dart';
import 'package:stacked/stacked.dart';

// page for get the user name
class FinalDetailPage extends StatelessWidget {
  const FinalDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FinalViewModel>.reactive(
      viewModelBuilder: () => FinalViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Column(
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
                  Text(model.title1),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_android_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelText: model.title2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_left_outlined)),
                      Container(
                        child: Detailbutton(btnTitle: model.title3),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
