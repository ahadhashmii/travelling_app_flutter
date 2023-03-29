import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelling_app_flutter/screens/home/widgets/item_category.dart';
import 'package:travelling_app_flutter/screens/home/widgets/item_travel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svg/menu.svg', height: 35,),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.JPG'),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  Text('Find your\nexperience', style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  )),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Theme.of(context).primaryColor.withOpacity(.2),
                          spreadRadius: 1,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 15),
                        Icon(CupertinoIcons.search, color: Colors.grey),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: const EdgeInsets.only(top: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ItemCategory(title: 'Experiences', active: true),
                        ItemCategory(title: 'Adventures'),
                        ItemCategory(title: 'Activities'),
                      ],
                    ),
                  ),
                  GridView.count(
                    padding: const EdgeInsets.only(top: 20),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 2/3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      ItemTravel(title: 'Awesome Place 1', img: 'place1.jpg'),
                      ItemTravel(title: 'Awesome Place 2', img: 'place2.jpg'),
                      ItemTravel(title: 'Awesome Place 3', img: 'place3.jpg'),
                      ItemTravel(title: 'Awesome Place 4', img: 'place4.jpg'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
