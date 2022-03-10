import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/regisrtation_pages/on_bording_screen.dart';
import 'package:nomadz/view/home_exploring_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../../widgets/container_icon.dart';
import '../../widgets/custon_logib_button.dart';

class SaveListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomText(
          text: "Save Lifting".toUpperCase(),
          fontSize: 25.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: klightGreyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  CustomText(
                    text: "filters",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  Spacer(),
                  Icon(Icons.download_for_offline_rounded),
                  CustomText(
                    text: "Price:Low to high",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerText(title: " Fishing"),
                  SizedBox(
                    width: 20.w,
                  ),
                  ContainerText(
                    title: " Fly fishing",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ContainerText(
                    title: " Hunting",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ContainerText(
                    title: " monto",
                  ),
                  SizedBox(
                    width: 20.w,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 0.h,
          ),
          // ,ResponsiveGridCol(
          //     xs: 6,
          //     md: 3,
          //     child: Container(
          //       height: 100,
          //       alignment: Alignment(0, 0),
          //       color: Colors.orange,
          //       child: Text("xs : 6 \r\nmd : 3"),
          //     ),
          //   ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Expanded(
                child: GridView.custom(
                  shrinkWrap: true,
                  gridDelegate: SliverWovenGridDelegate.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    tileBottomSpace: 120,
                    pattern: [
                      WovenGridTile(1),
                      WovenGridTile(
                        2 / 2,
                        // crossAxisRatio: 0.9,
                        alignment: AlignmentDirectional.bottomEnd,
                      ),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => Wrap(children: [
                      StarCard(
                        companyName: "MONGO",
                        Name: "RED FISHING ROD",
                        imageurl: 'https://picsum.photos/200/300',
                        prize: "\$15",
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

class StarCard extends StatelessWidget {
  String companyName;
  String Name;
  String prize;
  String imageurl;
  StarCard(
      {required this.Name,
      required this.companyName,
      required this.prize,
      required this.imageurl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 299,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190.h,
            width: 170.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 21.0, bottom: 21),
              child: Container(
                height: 140.h,
                width: 150.h,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(0),

                    // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage(
                        image: NetworkImage(imageurl), fit: BoxFit.fill)),
              ),
            ),
          ),
          //https://picsum.photos/200/300")
          SizedBox(
            height: 10,
          ),
          Container(
            height: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                CustomText(
                  text: "(3)",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Icon(
                  Icons.save,
                  color: Colors.red,
                )
              ],
            ),
          ),

          Spacer(),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: companyName,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: klightGreyColor,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: Name,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: "\$15",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
