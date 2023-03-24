import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  // const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double PaddingTop = context.mediaQueryPadding.top;
    double PaddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("Home"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - PaddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width ,
        height: Get.height,
        color: Colors.amber,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarKuning = constraints.maxWidth;
          double tinggikuning = constraints.maxHeight;
          return Center( child:
           Stack(
            children: [
              Container(
                width: lebarKuning * 0.8,
                height: tinggikuning * 0.8,
                color: Colors.red,
              )
            ],
          ) 
          );
        }),
      ),
    );
  }
}
