import 'package:bloco_de_notas/src/features/home/home_page.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _topAnimationController =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late final AnimationController _bottomAnimationController =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late Animation<double> topAnimation;
  late Animation<double> bottomAnimation;

  @override
  void initState() {
    super.initState();

    topAnimation =
        Tween(begin: -300.0, end: 330.0).animate(_topAnimationController);
    bottomAnimation =
        Tween(begin: 1200.0, end: 750.0).animate(_bottomAnimationController);

    _topAnimationController.forward();
    _bottomAnimationController.forward().whenCompleteOrCancel(() {
      Future.delayed(Duration(seconds: 1)).then((value) => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage())));
    });
  }

  @override
  void dispose() {
    _topAnimationController.dispose();
    _bottomAnimationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
              animation: _topAnimationController,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Hero(
                    tag: "image",
                    child: Image.asset(
                      "assets/images/notes_logo.png",
                      width: 100,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Hero(
                        tag: "text",
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "journal",
                            style: TextStyle(
                              fontSize: 72.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: "Montserrat",
                              letterSpacing: -0.05,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "YOUR ACADEMY'S BEST FRIEND",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          letterSpacing: 0.165,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ],
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.translate(
                  offset: Offset(Alignment.topCenter.x, topAnimation.value),
                  child: child,
                );
              },
            ),
            AnimatedBuilder(
                animation: _bottomAnimationController,
                child: Column(
                  children: [
                    Image.asset("assets/images/powered_by.png"),
                    Image.asset("assets/images/raro_academy_logo.png"),
                  ],
                ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.translate(
                    offset:
                        Offset(Alignment.topCenter.x, bottomAnimation.value),
                    child: child,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
