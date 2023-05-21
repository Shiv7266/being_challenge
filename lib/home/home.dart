import 'package:being_challenge/utils/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color buttonColor = Colors.blue;
  Color textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0x001e1e1e),
          body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(buttonColor)),
                onPressed: () {
                  showModalBottomSheet(
                      elevation: 0,
                      backgroundColor: const Color(0x001e1e1e),
                      context: context,
                      isScrollControlled: true,
                      builder: (b) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.95,
                          child: Column(
                            children: [
                              vs20,
                              Container(
                                height: 4.11,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.5),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              vs6,
                              Container(
                                height: 99,
                                width: double.maxFinite,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(32),
                                        topRight: Radius.circular(32)),
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            "assets/images/image1.png"))),
                                child: Container(
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Row(children: [
                                      const Expanded(
                                        child: Text(
                                          "When I do feel like I’m getting into a good flow after trying...",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "ClashGrotesk",
                                              fontSize: 18,
                                              letterSpacing: 0.2,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      hs10,
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 0.1)),
                                            shape: BoxShape.circle,
                                            color: const Color.fromRGBO(
                                                34, 79, 191, 1)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: SvgPicture.asset(
                                              "assets/svg/Vector (3).svg"),
                                        ),
                                      ),
                                      hs10,
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 0.1)),
                                            shape: BoxShape.circle,
                                            gradient:
                                                const RadialGradient(colors: [
                                              Color.fromRGBO(
                                                  255, 255, 255, 0.06),
                                              Color.fromRGBO(
                                                  255, 255, 255, 0.01),
                                            ])),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: SvgPicture.asset(
                                              "assets/svg/share.svg"),
                                        ),
                                      )
                                    ]),
                                  ),
                                ),
                              ),
                              Expanded(child: CustomTabBar())
                            ],
                          ),
                        );
                      });
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(color: textColor),
                )),
          )),
    );
  }
}
