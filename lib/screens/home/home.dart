import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:lightwork/utils/brand_colors.dart';
import 'package:lightwork/utils/chart.dart';
import 'package:lightwork/utils/profile_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexOfCard = 2;

  final CardSwiperController controller = CardSwiperController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BrandColors.primaryColor1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height / 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Image.asset(
                    'assets/images/noti.png',
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            // profile tile in home page
            profileTile(size),
            SizedBox(
              height: size.height / 20,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  // height: size.height / 3,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(252, 254, 255, 1),
                  ),
                  child: Column(
                    children: [
                      // to maintain space from job card
                      SizedBox(
                        height: size.height / 8,
                      ),
                      SizedBox(
                        height: size.height / 40,
                      ),
                      // home page container 3 heading
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Job Quotation',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: BrandColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            // container 3 sub part
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/clock.png",
                                    color: BrandColors.greyColor2,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Thrus July 11',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: BrandColors.greyColor2,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: BrandColors.greyColor2,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Text(
                                    '9:00 AM - 1:00 PM',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: BrandColors.greyColor2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // container 3 card with swipe animation
                            SizedBox(
                              height: 170,
                              child: CardSwiper(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 16),
                                backCardOffset: const Offset(0, 20),
                                cardsCount: 5,
                                controller: controller,
                                allowedSwipeDirection:
                                    AllowedSwipeDirection.only(
                                        up: true,
                                        right: true,
                                        left: true,
                                        down: true),
                                cardBuilder: (context,
                                    index,
                                    horizontalOffsetPercentage,
                                    verticalOffsetPercentage) {
                                  return Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              252, 254, 255, 1),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  119, 153, 168, 0.5),
                                              blurRadius: 20,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            // card image
                                            Container(
                                              width: size.width / 3.5,
                                              height: size.width / 3.5,
                                              margin: const EdgeInsets.only(
                                                  left: 8, right: 12),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(8),
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/img1.jpg'),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        // card title
                                                        Text(
                                                          'Sink Repair',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Color.fromRGBO(
                                                                    18,
                                                                    19,
                                                                    21,
                                                                    1),
                                                          ),
                                                        ),
                                                        // card contactor name
                                                        Text(
                                                          'Contractor: Name',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromRGBO(
                                                                    36,
                                                                    42,
                                                                    45,
                                                                    1),
                                                          ),
                                                        ),
                                                        // card address part
                                                        Text(
                                                          '10 Regent Street W17S',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromRGBO(
                                                                    123,
                                                                    141,
                                                                    149,
                                                                    1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    // card location icon
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 1,
                                                          color: const Color
                                                              .fromRGBO(
                                                              211, 224, 230, 1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: Image.asset(
                                                        "assets/images/loc2.png",
                                                        width: 20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                // last part of card contains 2 buttons
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 16,
                                                          vertical: 12),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        gradient:
                                                            const LinearGradient(
                                                          colors: [
                                                            Color.fromRGBO(86,
                                                                204, 255, 1),
                                                            Color.fromRGBO(34,
                                                                188, 255, 1),
                                                          ],
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        "View Job",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromRGBO(
                                                              253, 254, 255, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 16,
                                                          vertical: 12),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color: BrandColors
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Message",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: BrandColors
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      // top right part of card
                                      Positioned(
                                        top: -10,
                                        right: 0,
                                        child: Container(
                                          width: 40,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: BrandColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              '5',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: size.height / 50,
                            ),
                            // recent files heading
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Recent Files',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: BrandColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            // recent files list
                            SizedBox(
                              height: size.height / 5,
                              child: Center(
                                child: ListView.builder(
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            252, 254, 255, 1),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                119, 153, 168, 0.3),
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      margin: const EdgeInsets.only(right: 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // main image in recebt files tile
                                          Container(
                                            width: size.width / 4.5,
                                            height: size.width / 4.5,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                              border: Border.all(
                                                color: BrandColors.greyColor2,
                                              ),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/img1.jpg'),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),

                                          Row(
                                            children: [
                                              // icon of file
                                              Image.asset(
                                                'assets/images/docs.png',
                                                width: 20,
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              // name of file
                                              Text(
                                                'Sink Repair...',
                                                style: TextStyle(
                                                  color: BrandColors.greyColor1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height / 50,
                            ),
                            // financial summary heading
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Financial Summary',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'See More',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: BrandColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(252, 254, 255, 1),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(119, 153, 168, 0.3),
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // chat of financial summary
                                  const Chart(),
                                  // last part of container
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 16, bottom: 8),
                                    child: const Text(
                                      '£1550 earned this month',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height / 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // floating job card
                Positioned(
                  top: -20,
                  width: size.width,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(252, 254, 255, 1),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(130, 159, 171, 0.6),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(12),
                      height: size.width / 3.5,
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndexOfCard = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectedIndexOfCard == index
                                    ? BrandColors.primaryColor
                                    : const Color.fromRGBO(252, 254, 255, 1),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(119, 153, 168, 0.15),
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              margin: index == 2
                                  ? const EdgeInsets.only(right: 0)
                                  : const EdgeInsets.only(right: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    index == 0
                                        ? "assets/images/job.png"
                                        : index == 1
                                            ? "assets/images/peding.png"
                                            : "assets/images/search.png",
                                    color: selectedIndexOfCard == index
                                        ? Colors.white
                                        : BrandColors.primaryColor,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    getTitile(index),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: selectedIndexOfCard == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    index == 0
                                        ? '10 jobs'
                                        : index == 1
                                            ? "5 Jobs"
                                            : "",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: selectedIndexOfCard == index
                                          ? Colors.white
                                          : const Color.fromRGBO(
                                              115, 139, 150, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String getTitile(int index) {
  switch (index) {
    case 0:
      return "My Jobs";

    case 1:
      return "Pending Jobs";

    case 2:
      return "Find a Job";

    default:
      return "My Jobs";
  }
}
