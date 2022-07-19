import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../globals.dart';

class XDStickyHeader extends StatefulWidget {

  @override
  _XDStickyHeaderState createState() => _XDStickyHeaderState();
}

class _XDStickyHeaderState extends State<XDStickyHeader> {
  int _selectedIndex = 0;
  late final TextEditingController textController = new TextEditingController();

  late List<dynamic> firstBatch;
  late List<dynamic> lastBatch;
  @override
  void initState() {
    firstBatch = Globals.menuItems.take(3).toList();
    lastBatch = Globals.menuItems.skip(3).take(3).toList();
    super.initState();
  }
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
                        children: List.generate(firstBatch.length, (index) =>
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  // color: Colors.black,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(firstBatch[index].toString().toUpperCase(),
                                          style: Get.textTheme.subtitle1,),
                                        if ( _selectedIndex == index)
                                          Container(
                                            width: 60,
                                            height: 5,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
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
                        children: List.generate(lastBatch.length, (index)
                        => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                _selectedIndex = index+3;
                              });
                            },
                            child: Container(
                              width: 100,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(lastBatch[index].toString().toUpperCase(),

                                        style: Get.textTheme.subtitle1),
                                    if ( _selectedIndex == index+3)
                                      Container(
                                        width: 60,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      )
                                  ],
                                ),
                              ),
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