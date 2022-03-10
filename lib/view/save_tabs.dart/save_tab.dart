import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/regisrtation_pages/on_bording_screen.dart';
import 'package:nomadz/view/home_exploring_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../../widgets/container_icon.dart';
import '../../widgets/custon_logib_button.dart';

class SaveTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomText(
          text: "Saved",
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: ContainerIcon(
              imageUrl: "assets/saveicon.png",
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: "YOU HAVEN'T SAVED",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: "ANY GEAR",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text:
                  "Add items to your Saved list in order to receive\nuseful updates, such as price drops and free\nshipping.",
              fontSize: 13.sp,
              fontWeight: FontWeight.w200,
              color: klightGreyColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: CustomLoginButton(title: " Recently Viewed"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: CustomLoginButton(title: "Start Searching"),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                text: "CATEGORIES",
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
                SizedBox(
                  width: 10.w,
                ),
                RowImageWithtext(
                  imgUrl: 'https://picsum.photos/200/300',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 95.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(
                      2.0,
                      4.0,
                    ), // shadow direction: bottom right
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Support Local Sellers",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            text: "Browse listings from sellers near you.",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ],
                      ),
                    ),
                    ContainerIcon(imageUrl: "assets/location1.png")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
