import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/widgets/container_icon.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../constants.dart';

class ExploringScreen extends StatefulWidget {
  @override
  _ExploringScreenState createState() => _ExploringScreenState();
}

class _ExploringScreenState extends State<ExploringScreen>
    with TickerProviderStateMixin {
  late PageController _pageController;
  int currentIndex = 0;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    )..forward();
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: bgColor,
                  height: 59.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.6),
                      filled: true,
                      hintText: 'Search for use gear nearby ,nearby',
                      hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 17.sp),
                      prefixIcon: Icon(
                        Icons.search,
                        color: klightGreyColor,
                      ),
                      suffixIcon: Icon(
                        Icons.add_shopping_cart,
                        color: klightGreyColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide:
                            BorderSide(color: klightGreyColor, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide:
                            BorderSide(color: klightGreyColor, width: 2.0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 330.h,
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      currentIndex = page;
                    });
                  },
                  controller: _pageController,
                  children: <Widget>[
                    makePage1(
                        image: 'assets/explore1.png',
                        title:
                            "  Find Gear You'll Love\nSupport Your Neighbors",
                        content: "Start Renting"),
                    makePage1(
                        reverse: false,
                        image: 'assets/exploring2.png',
                        title: "Book Adventure Trips,\nLessons, Guides & More",
                        content: "Start Hosting"),
                    makePage1(
                        image: 'assets/exploring3.png',
                        title: "Sell Your Gear & Fund\nYour Next Trip",
                        content: "Sell & Earn"),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 8.0.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildIndicator1(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h1.png"),
                            CustomText(
                              text: "Rentals",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h2.png"),
                            SizedBox(
                              height: 9,
                            ),
                            CustomText(
                              text: "User Gear",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h3.png"),
                            CustomText(
                              text: "Guides",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h4.png"),
                            CustomText(
                              text: "local",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "CATEGORIES",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "View all",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                              Icon(Icons.forward)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      child: SingleChildScrollView(
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
                              width: 10,
                            ),
                            RowImageWithtext(
                              imgUrl: 'https://picsum.photos/200/300',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "FEATURED",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // Container(
                    //   height: 800,
                    //   color: Colors.amber,
                    // )
                    SizedBox(
                      height: 15,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: false,
                      child: Row(
                        children: [
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWithtext(
                            imgUrl: 'https://picsum.photos/200/300',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "NEW ARRIVALS",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: false,
                      child: Row(
                        children: [
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "RECENTLY VIEWED",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: false,
                      child: Row(
                        children: [
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "FISHNG",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: false,
                      child: Row(
                        children: [
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "HUNTING",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: false,
                      child: Row(
                        children: [
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                          ColoumImageWith3text(
                              imgUrl: 'https://picsum.photos/200/300'),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names

  Widget makePage1({image, title, content, reverse = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.fitWidth),
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
          SizedBox(
            height: 140.h,
          ),
          Text(title,
              style:
                  GoogleFonts.montserrat(color: Colors.white, fontSize: 20.sp)),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: Container(
              height: 50,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          reverse
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator1(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator1() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator1(true));
      } else {
        indicators.add(_indicator1(false));
      }
    }

    return indicators;
  }
}

class RowImageWithtext extends StatelessWidget {
  String imgUrl;
  RowImageWithtext({required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.amber,
          child: Container(
            height: 300.h,
            width: 500.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,

                // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.fill)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomText(
          text: "skd",
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}

class ContainerText extends StatelessWidget {
  String title;
  ContainerText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 110.h,
      decoration: BoxDecoration(
        color: kgreenColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: CustomText(
          text: title,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ColoumImageWith3text extends StatelessWidget {
  String imgUrl;
  String? firsttext = "";
  ColoumImageWith3text({required this.imgUrl, this.firsttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 60.r,
            backgroundColor: Colors.amber,
            child: Container(
              height: 400.h,
              width: 500.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Rozi 152 Sonwbo ",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: "Nonadz",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: " 70\$",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: "",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

class ColoumImageWithtext extends StatelessWidget {
  String imgUrl;
  String? firsttext = "";
  ColoumImageWithtext({required this.imgUrl, this.firsttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 60.r,
            backgroundColor: Colors.amber,
            child: Container(
              height: 400.h,
              width: 500.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Rozi 152 Sonwbo ",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: "Nonadz",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
