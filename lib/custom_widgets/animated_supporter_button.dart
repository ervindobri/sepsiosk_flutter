import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';

enum ScoreWidgetStatus { HIDDEN, BECOMING_VISIBLE, VISIBLE, BECOMING_INVISIBLE }

class AnimatedSupporterButton extends StatefulWidget {
  const AnimatedSupporterButton({
    Key? key,
  }) : super(key: key);

  @override
  _AnimatedSupporterButtonState createState() =>
      _AnimatedSupporterButtonState();
}

class _AnimatedSupporterButtonState extends State<AnimatedSupporterButton>
    with TickerProviderStateMixin {
  int _counter = 0;
  final duration = new Duration(milliseconds: 400);
  double _sparklesAngle = 0.0;
  ScoreWidgetStatus _scoreWidgetStatus = ScoreWidgetStatus.HIDDEN;
  final oneSecond = new Duration(seconds: 1);
  late Random random;
  Timer? holdTimer;
  Timer? scoreOutETA;
  late AnimationController scoreInAnimationController;
  late AnimationController scoreOutAnimationController;
  late Animation<double> scoreOutPositionAnimation, sparklesAnimation;
  late AnimationController scoreSizeAnimationController;
  late AnimationController sparklesAnimationController;

  double extraSize = 0.0;

  initState() {
    super.initState();
    print("init!");
    random = new Random();
    scoreInAnimationController = new AnimationController(
        duration: new Duration(milliseconds: 50), vsync: this);
    scoreInAnimationController.addListener(() {
      setState(() {}); // Calls render function
    });

    scoreOutAnimationController =
        new AnimationController(vsync: this, duration: duration);
    scoreOutPositionAnimation = new Tween(begin: 25.0, end: 10.0).animate(
        new CurvedAnimation(
            parent: scoreOutAnimationController, curve: Curves.easeOut));
    scoreOutPositionAnimation.addListener(() {
      setState(() {});
    });
    scoreOutAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _scoreWidgetStatus = ScoreWidgetStatus.HIDDEN;
      }
    });

    scoreSizeAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 150));
    scoreSizeAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        scoreSizeAnimationController.reverse();
      }
    });
    scoreSizeAnimationController.addListener(() {
      setState(() {});
    });

    sparklesAnimationController =
        new AnimationController(vsync: this, duration: duration);
    sparklesAnimation = new CurvedAnimation(
        parent: sparklesAnimationController, curve: Curves.easeIn);
    sparklesAnimation.addListener(() {
      setState(() {});
    });
  }

  dispose() {
    super.dispose();
    scoreInAnimationController.dispose();
    scoreOutAnimationController.dispose();
  }

  void increment(Timer? t) {
    scoreSizeAnimationController.forward(from: 0.0);
    sparklesAnimationController.forward(from: 0.0);
    setState(() {
      _counter++;
      _sparklesAngle = random.nextDouble() * (2 * pi);
    });
  }

  void onTapDown() async {
    // User pressed the button. This can be a tap or a hold.
    if (scoreOutETA != null) {
      scoreOutETA?.cancel(); // We do not want the score to vanish!
    }
    if (_scoreWidgetStatus == ScoreWidgetStatus.BECOMING_INVISIBLE) {
      // We tapped down while the widget was flying up. Need to cancel that animation.
      scoreOutAnimationController.stop(canceled: true);
      _scoreWidgetStatus = ScoreWidgetStatus.VISIBLE;
      print("score out!");
    } else if (_scoreWidgetStatus == ScoreWidgetStatus.HIDDEN) {
      _scoreWidgetStatus = ScoreWidgetStatus.BECOMING_VISIBLE;
      scoreInAnimationController.forward(from: 0.0);
      print("score in!");
    }
    increment(null); // Take care of tap
    holdTimer = new Timer.periodic(duration, increment); // Takes care of hold
    await Future.delayed(Duration(milliseconds: 300), () {});
  }

  void onTapUp() {
    // print("TAP UP!");
    scoreOutETA = new Timer(duration, () {
      scoreOutAnimationController.forward(from: 0.0);
      _scoreWidgetStatus = ScoreWidgetStatus.BECOMING_INVISIBLE;
    });
    holdTimer!.cancel();
  }

  Widget createSparkles() {
    var stackChildren = <Widget>[];
    var firstAngle = _sparklesAngle;
    var sparkleRadius = (sparklesAnimationController.value * 70);
    var sparklesOpacity = (1 - sparklesAnimation.value);
    for (int i = 0; i < 5; ++i) {
      var currentAngle = (firstAngle + ((2 * pi) / 5) * (i));
      var sparklesWidget = new Positioned(
        child: new Transform.rotate(
            angle: currentAngle - pi / 2,
            child: new Opacity(
                opacity: sparklesOpacity,
                child: new Image.asset(
                  "images/football.png",
                  width: 20.0,
                  height: 20.0,
                ))),
        left: (sparkleRadius * cos(currentAngle)) + 125,
        top: (sparkleRadius * sin(currentAngle)) + 125,
      );
      stackChildren.add(sparklesWidget);
    }
    return Positioned(
      bottom: -50,
      left: 100,
      child: Container(
        width: 250,
        height: 250,
        // color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: stackChildren,
        ),
      ),
    );
  }

  Widget getScoreButton() {
    var scorePosition = 0.0;
    var scoreOpacity = 0.0;
    var extraSize = 0.0;
    switch (_scoreWidgetStatus) {
      case ScoreWidgetStatus.HIDDEN:
        break;
      case ScoreWidgetStatus.BECOMING_VISIBLE:
        break;
      case ScoreWidgetStatus.VISIBLE:
        scorePosition = scoreInAnimationController.value * 10;
        scoreOpacity = scoreInAnimationController.value;
        extraSize = scoreSizeAnimationController.value * 3;
        break;
      case ScoreWidgetStatus.BECOMING_INVISIBLE:
        scorePosition = scoreOutPositionAnimation.value;
        scoreOpacity = 1.0 - scoreOutAnimationController.value;
        break;
    }
    var widget = Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: new Opacity(
          opacity: scoreOpacity,
          child: new Container(
              height: 50.0 + extraSize,
              width: 50.0 + extraSize,
              decoration: new ShapeDecoration(
                  shape: new CircleBorder(side: BorderSide.none),
                  color: Globals.primaryColor),
              child: new Center(
                  child: new Text(
                "+" + _counter.toString(),
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              )))),
    );
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    extraSize = scoreSizeAnimationController.value * 10;
    return Positioned(
      bottom: -50,
      left: Get.width / 1.5 - 500,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 250,
          width: 500,
          // color: Colors.green,
          child: Center(
            child: Stack(
              // alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 25,
                  left: 500 / 2 - 150,
                  child: Container(
                    height: 250,
                    width: 400,
                    // color: Colors.lightGreen,
                    child: Stack(
                      // alignment: Alignment.bottomCenter,
                      children: [
                        createSparkles(),
                        Positioned(
                          bottom: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Globals.primaryColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  shadowColor: MaterialStateProperty.all(
                                      Globals.primaryColor.withOpacity(.2)),
                                ),
                                onPressed: () async {
                                  //todo: animation
                                  print("CSAKAZOSKA");
                                  onTapDown();
                                  onTapUp();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    height: 50.0,
                                    width: 250.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "#CSAKAZOSK".toUpperCase(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.fistRaised,
                                            color: Colors.white,
                                            size: 24 + extraSize,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              getScoreButton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
