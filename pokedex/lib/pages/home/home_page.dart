import 'package:flutter/material.dart';
import 'package:pokedex/pages/list/list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2C3151),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: const [
                    Text(
                      "Welcome To",
                      style: TextStyle(color: Color(0xff8F94AD)),
                    )
                  ],
                ),
              ),
              insertMargin(20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Text(
                      "Pokedex",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xffefc12a),
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
              insertMargin(100),
              getImageHome(300.0, double.infinity),
              insertMargin(100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: getCreateAccountButton(context)),
              ),
              insertMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Color(0xff8F94AD)),
                  ),
                  insertMargin(0, 5),
                  const Text(
                    "Login",
                    style: TextStyle(color: Color(0xffefc12a)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

Widget getImageHome(double imageHeight, double imageWidth) {
  return Image.asset(
    "images/pokedex_home.png",
    height: imageHeight,
    width: imageWidth,
  );
}

Widget getCreateAccountButton(BuildContext myContext) {
  return ElevatedButton(
    onPressed: () {
      navigateToListPage(myContext);
    },
    style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffefc12a),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
    child: const Text(
      "Create Account",
      style: TextStyle(
          color: Color(0xff2C3151), fontSize: 18, fontWeight: FontWeight.w900),
    ),
  );
}

Widget insertMargin([double heightBox = 0, double widthBox = 0]) {
  return SizedBox(
    height: heightBox,
    width: widthBox,
  );
}

void navigateToListPage(BuildContext myContext) {
  Navigator.push(myContext, MaterialPageRoute(builder: (context) => ListPage(list: [])));
}
