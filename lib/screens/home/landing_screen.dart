import 'package:flutter/material.dart';
import 'package:lightwork/screens/home/add_new.dart';
import 'package:lightwork/screens/home/chats.dart';
import 'package:lightwork/screens/home/events.dart';
import 'package:lightwork/screens/home/home.dart';
import 'package:lightwork/screens/home/jobs.dart';
import 'package:lightwork/utils/brand_colors.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final pages = [
    const HomeScreen(),
    const EventScreen(),
    const AddNewScreen(),
    const JobsScreen(),
    const ChatsScreen(),
  ];
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BrandColors.primaryColor1,
      body: pages[curentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0,
      //   currentIndex: curentIndex,
      //   onTap: (value) {
      //     setState(() {
      //       curentIndex = value;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: size.width / 16,
      //         color: BrandColors.greyColor1,
      //       ),
      //       activeIcon: Icon(
      //         Icons.home,
      //         size: size.width / 16,
      //         color: BrandColors.primaryColor,
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.calendar_month,
      //         size: size.width / 16,
      //         color: BrandColors.greyColor1,
      //       ),
      //       activeIcon: Icon(
      //         Icons.calendar_month,
      //         size: size.width / 16,
      //         color: BrandColors.primaryColor,
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(50),
      //           color: BrandColors.primaryColor,
      //         ),
      //         padding: const EdgeInsets.all(6),
      //         child: Icon(
      //           Icons.add,
      //           size: size.width / 16,
      //           color: Colors.white,
      //         ),
      //       ),
      //       activeIcon: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(50),
      //           color: BrandColors.primaryColor,
      //         ),
      //         padding: const EdgeInsets.all(6),
      //         child: Icon(
      //           Icons.add,
      //           size: size.width / 16,
      //           color: Colors.white,
      //         ),
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.card_membership,
      //         size: size.width / 16,
      //         color: BrandColors.greyColor1,
      //       ),
      //       activeIcon: Icon(
      //         Icons.card_membership,
      //         size: size.width / 16,
      //         color: BrandColors.primaryColor,
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.chat,
      //         size: size.width / 16,
      //         color: BrandColors.greyColor1,
      //       ),
      //       activeIcon: Icon(
      //         Icons.chat,
      //         size: size.width / 16,
      //         color: BrandColors.primaryColor,
      //       ),
      //       label: "",
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: const Color.fromRGBO(255, 255, 255, 1),
        surfaceTintColor: Colors.white,
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 70,
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 13,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  curentIndex = 0;
                  setState(() {});
                },
                child: Image.asset(
                  "assets/images/home.png",
                  color: curentIndex == 0
                      ? BrandColors.primaryColor
                      : BrandColors.greyColor1,
                  width: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  curentIndex = 1;
                  setState(() {});
                },
                child: Image.asset(
                  "assets/images/cal.png",
                  color: curentIndex == 1
                      ? BrandColors.primaryColor
                      : BrandColors.greyColor1,
                  width: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  curentIndex = 2;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: BrandColors.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  curentIndex = 3;
                  setState(() {});
                },
                child: Image.asset(
                  "assets/images/job1.png",
                  color: curentIndex == 3
                      ? BrandColors.primaryColor
                      : BrandColors.greyColor1,
                  width: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  curentIndex = 4;
                  setState(() {});
                },
                child: Image.asset(
                  "assets/images/chat.png",
                  color: curentIndex == 4
                      ? BrandColors.primaryColor
                      : BrandColors.greyColor1,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
