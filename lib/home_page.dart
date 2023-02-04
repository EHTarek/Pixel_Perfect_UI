import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ird_test/const/color.dart';
import 'package:ird_test/const/style.dart';
import 'package:ird_test/model/model_class.dart';

class HomePage extends StatelessWidget {
  final list = Model.getModelData();
  final listAllTask = Model.getAllTaskModelData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBGColor,
        body: Stack(children: [
          Column(
            children: [
              Container(
                height: 342,
                width: double.infinity,
                child: Stack(children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(18.0),
                        bottomRight: Radius.circular(18.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          primaryDarkteal,
                          secondaryDarkteal,
                          secondaryDarkteal,
                          primaryDarkteal,
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Hi, Habib 👋",
                            style: myStyle(18, Colors.white, FontWeight.w600),
                          ),
                          subtitle: Text(
                            "Let's explore your notes",
                            style: myStyle(12, Colors.white70, FontWeight.w400),
                          ),
                          trailing: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CircleAvatar(
                              child: Image.asset("images/profile.png"),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, top: 25, bottom: 32),
                              padding: EdgeInsets.all(16),
                              height: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xff12472b),
                                        Color(0xff0a473f),
                                      ])),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Welcome to TickTick Task",
                                    style: myStyle(
                                        14, Colors.white, FontWeight.w600),
                                  ),
                                  Text(
                                    "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                                    style: myStyle(
                                        12, Colors.white60, FontWeight.w400),
                                  ),
                                  Container(
                                    height: 31,
                                    width: 106,
                                    decoration: BoxDecoration(
                                        color: Color(0xff24966D),
                                        borderRadius: BorderRadius.circular(70),
                                        border:
                                            Border.all(color: Colors.white60)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Watch Video",
                                          style: myStyle(12, primaryWhite,
                                              FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 3,
                              bottom: 17,
                              child: SvgPicture.asset(
                                "images/banner.svg",
                                height: 96,
                                width: 96,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reminder Task",
                                style:
                                    myStyle(14, Colors.white, FontWeight.w600),
                              ),
                              Text(
                                "See All",
                                style: myStyle(
                                    12, Colors.white70, FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 60, left: 15, right: 15, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Tasks",
                      style: myStyle(14, primaryBlack, FontWeight.w600),
                    ),
                    Text(
                      "See All",
                      style: myStyle(12, primaryBlack, FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "${listAllTask[index].image}",
                              height: 28.33,
                              width: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${listAllTask[index].title}",
                                  style: myStyle(
                                      12, primaryBlack, FontWeight.w500),
                                ),
                                Text(
                                  "Save Date: ${listAllTask[index].date}",
                                  style: myStyle(
                                      10, primaryBlack, FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                    itemCount: list.length,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 290,
              left: 15,
              right: 0,
              child: Container(
                height: 90,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: double.infinity,
                        width: 139,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset.fromDirection(2, 2),
                                  blurRadius: 3.0),
                            ],
                            color: primaryWhite),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "${list[index].image}",
                                height: 28.33,
                                width: 35,
                              ),
                              Text(
                                "${list[index].title}",
                                style:
                                    myStyle(12, primaryBlack, FontWeight.w500),
                              ),
                              Text(
                                "Save Date: ${list[index].date}",
                                style:
                                    myStyle(10, primaryBlack, FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: list.length),
              )),
        ]),
      ),
    );
  }
}
