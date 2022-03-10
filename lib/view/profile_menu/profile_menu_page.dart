import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/widgets/custom_text.dart';

class ProfileMenuPage extends StatelessWidget {
  const ProfileMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                  text: "Profile",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        image: DecorationImage(
                            image:
                                NetworkImage("https://picsum.photos/200/300"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10.5.w,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Get.to(() => UserSettingScreen());
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text('RyanHart123',
                              // registrationAuthController.loggedInUser.firstName,
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: "ryanhart@gmail.com",
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 390.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "Selling",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    textandicon(
                      text: "orders",
                      icon: Icons.shopping_cart_checkout_outlined,
                    ),
                    textandicon(
                      text: "Received Offers",
                      icon: Icons.arrow_downward_sharp,
                    ),
                    textandtext(text: "Adventure Listings", lasttext: "(0)"),
                    textandtext(text: "Rental Listings", lasttext: "(0)"),
                    textandtext(text: "Drafts", lasttext: "(0)"),
                    textandicon(text: "Shop Settings", icon: Icons.home_filled),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 440.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "My Account",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    textandicon(text: "Messages", icon: Icons.message),
                    textandicon(
                      text: "Purchases",
                      icon: Icons.shopping_cart_checkout_outlined,
                    ),
                    textandicon(
                      text: "Sent Offers",
                      icon: Icons.arrow_upward_rounded,
                    ),
                    textandicon(
                      text: "Address Book",
                      icon: Icons.location_on,
                    ),
                    textandicon(
                      text: "Payment Methods",
                      icon: Icons.payment,
                    ),
                    textandicon(text: "Settings", icon: Icons.settings),
                    textandicon(text: "Help Center", icon: Icons.help),
                  ],
                ),
              ),
            ),
            Container(
              height: 90.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: textandicon(text: "Logout", icon: Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}

class textandicon extends StatelessWidget {
  String text;
  IconData icon;
  textandicon({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          Icon(
            icon,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class textandtext extends StatelessWidget {
  String text;
  String lasttext;

  textandtext({required this.lasttext, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          CustomText(
            text: lasttext,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
