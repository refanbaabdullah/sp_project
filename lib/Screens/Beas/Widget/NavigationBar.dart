import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../HelpBoxDecoration.dart';
import '../SizeContext.dart';

class NavigationBar extends StatelessWidget {
  int selected = 0;

  NavigationBar(this.selected);

  @override
  Widget build(BuildContext context) {
    SizeContext sizeContext = SizeContext(context: context);

    // TODO: implement build
    // throw UnimplementedError();
    return Padding(
      padding: EdgeInsets.only(
          left: sizeContext.width / 8,
          top: 8,
          bottom: 8,
          right: sizeContext.width / 8),
      child: Container(
        decoration:
            HelpBoxDecoration.Material().copyWith(color: Color(0xff004ffe)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {

                },
                child: Container(
                  //home icon:
                  child: Icon(
                    selected == 0 ? Icons.home : Icons.home_outlined,
                    color: Colors.white,
                    size: sizeContext.height / 25,
                  ),
                ),
              ),
              Container(
                  //home icon:
                  child: Icon(
                Icons.flight_outlined,
                color: Colors.white,
                size: sizeContext.height / 25,
              )),
              Container(
                //home icon:
                child: Icon(
                  selected == 2
                      ? Icons.airplane_ticket
                      : Icons.airplane_ticket_outlined,
                  color: Colors.white,
                  size: sizeContext.height / 25,
                ),
              ),
              Container(
                  //home icon:
                  child: Icon(
                Icons.bar_chart,
                color: Colors.white,
                size: sizeContext.height / 25,
              )),
              Container(
                  //home icon:
                  child: Icon(
                selected == 4 ? Icons.location_on : Icons.location_on_outlined,
                color: Colors.white,
                size: sizeContext.height / 25,
              )),
              // NavigationDestination(
              //   //airplane icon:
              //   icon: ,
              //   selectedIcon: ,
              //   label: '',
              // ),
              // NavigationDestination(
              //   //flight ticket icon:
              //   icon: ,
              //   selectedIcon: ,
              //   label: '',
              // ),
              // NavigationDestination(
              //   // chart icon:
              //   icon: ,
              //   selectedIcon: ,
              //   label: '',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
