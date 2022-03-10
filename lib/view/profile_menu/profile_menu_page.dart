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
                height: 500.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: "Selling",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Order",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.abc,
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
