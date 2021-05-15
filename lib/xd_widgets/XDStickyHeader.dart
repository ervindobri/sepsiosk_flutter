import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../globals.dart';

class XDStickyHeader extends StatelessWidget {

 late final TextEditingController textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15),
      child: Container(
        width: Get.width*.95,
        height: Get.height*.15,
        child: Stack(
          children: [
            Container(
              width: Get.width*.95,
              height: Get.height*.065,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Globals.primaryColor, Globals.webpageColor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(
                  color: Globals.primaryColor.withOpacity(.3),
                  spreadRadius: 15,
                  blurRadius: 155
                )]
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //menu items
                      Row(
                        children: Globals.menuItems.take(3).map((e) =>
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 100,
                                // color: Colors.black,
                                child: Center(
                                  child: Text(e.toString().toUpperCase(),
                                    style: Get.textTheme.subtitle1,),
                                ),
                              ),
                            )
                        ).toList(),
                      ),
                      Container(
                        width: 100,
                        // color: Colors.black,
                      ),
                      Row(
                        children: Globals.menuItems.skip(3).map((e)
                        => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 100,
                            child: Center(
                              child: Text(e.toString().toUpperCase(),

                                  style: Get.textTheme.subtitle1),
                            ),
                          ),
                        )).toList(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: FaIcon(
                            FontAwesomeIcons.search,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 60,
                    child: Image.asset("images/sepsilogo.png")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}