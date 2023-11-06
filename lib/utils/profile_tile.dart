import 'package:flutter/material.dart';
import 'package:lightwork/utils/brand_colors.dart';

Widget profileTile(Size size) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        SizedBox(
          width: size.width / 40,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/person.png'),
            ),
            Positioned(
              right: 5,
              bottom: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: BrandColors.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
            Positioned(
              left: -10,
              top: 0,
              child: Container(
                // width: 15,
                // height: 15,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  'assets/images/edit.png',
                  color: BrandColors.primaryColor,
                  width: 12,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: size.width / 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello James',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/loc1.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Cambridge, United Kingdom',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(70, 70, 70, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
