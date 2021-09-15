import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  SnakeNavigationBar.color(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.00)
        ),
        backgroundColor: Colors.black,
        snakeViewColor: Colors.white,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Dashboard',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),
              label: 'Search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),
              label: 'Search',
              backgroundColor: Colors.white)

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   label: 'Home',
          //   backgroundColor: Colors.white,
          // )

        ],
        onTap:(index) {

        },
      ),

      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        actions: [
          Image.asset(
            'assets/images/profile.png',
          )
        ],
        leading: Image.asset(
          'assets/images/menu.png',
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/locationDrop.png',
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "California, USA",
              style: TextStyle(
                  fontFamily: 'MontserratRegular',
                  color: Colors.black,
                  fontSize: 18),
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/downarrow.png',
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Nicola Six,",
                  style: TextStyle(
                    fontFamily: 'MontserratRegular',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We made fresh and healty food for you",
                  style: TextStyle(
                      fontFamily: 'MontserratRegular',
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 10,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.00)),
              child: Image.asset(
                'assets/images/banner.png',
                width: Get.width,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Categories",
              style: TextStyle(
                  fontFamily: 'MontserratRegular',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          // elevation: 10,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.00)),
                          child: Image.asset(
                            controller.categories[index],
                            fit: BoxFit.scaleDown,
                          )),
                    );
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: controller.foodList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.00)),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("${controller.foodList[index].title}",
                                      style: TextStyle(
                                        fontFamily: 'MontserratRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "${controller.foodList[index].descriptin}",
                                      style: TextStyle(
                                        fontFamily: 'MontserratRegular',
                                        fontWeight: FontWeight.w800,
                                        color: Colors.grey[700],
                                        fontSize: 18,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("\$ ${controller.foodList[index].price}",
                                      style: TextStyle(
                                        fontFamily: 'MontserratRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                      )),
                                ],
                              ),
                              flex: 3,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "${controller.foodList[index].Image}",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                              flex: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
