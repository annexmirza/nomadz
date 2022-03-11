import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/widgets/bottom_sheet_screen.dart';
import 'package:nomadz/widgets/custom_form_field.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() => {
        Get.bottomSheet(Container(
          padding: EdgeInsets.only(left: 10.sp,right: 10.sp),
                    height: 685.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color(0xffe9e9e9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
    padding: const EdgeInsets.only( left: 10, right: 10),
    child: Container(
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.sp, right: 6.sp),
            child: Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "Add New Card",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.sp, right: 6.sp),
            child: Center(
              child: CustomFormField(
                hintText: "Name on Card",
              ),
            ),
          ),
         
          Padding(
            padding: EdgeInsets.only(left: 6.sp, right: 6.sp),
            child: Center(
              child: CustomFormField(
                hintText: "Card Number",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.sp, right: 6.sp),
            child: Center(
              child: CustomFormField(
                hintText: "Exiration Date",
              ),
            ),
          ),
          
           Padding(
            padding: EdgeInsets.only(left: 6.sp, right: 6.sp),
            child: Center(
              child: CustomFormField(
                hintText: "CVV",
              ),
            ),
          ),
              Row(children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.all<Color>(Colors.black),
               
                value: true, onChanged: (value) {
                
              }),
              CustomText(text: 'Set as default payment method', fontSize: 14.sp,fontWeight: FontWeight.bold,),
              
            ],),
          
          CustomLoginButton(
              title: "Add Card",
              onPress: () {
                Get.back();
              }),
        ],
      ),
    ),
  )
//                     child:Column(
//                       children: [
//                         SizedBox(height:10.h),
//                        Center(child: Container(color: Color(0xff707070),width: 73.w,height:8.h)),
//                        SizedBox(height:23.h),
//                        CustomText(text: 'Add New Card',fontSize: 18.sp,fontWeight: FontWeight.bold,),
//                        SizedBox(height:29.h),
//                        Container(
//                          color: Colors.white,
//                          child: CustomFormField(
//                            hintText: 'Name on Card',
                      
//                            ),
//                        ),
//  Container(
//    width: Get.width,
//                          color: Colors.white,
//                          child:
//                              CustomFormField(
//                                hintText: 'Name on Card',
                                
//                                ),
                               
                           
//                        ),
//                       ],
//                     )
                  
                  ),)
      
      }),backgroundColor: Colors.black,child: Icon(Icons.add),),
      backgroundColor: Color(0Xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        foregroundColor: Colors.black,
        title: Center(child: const Text('Payment methods')),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 28.sp, left: 8.sp, right: 8.sp),
       child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: ' Saved Cards', fontSize: 18.sp,fontWeight: FontWeight.bold,),
            SizedBox(height: 19.h,),
            Image.asset('assets/card_black.png'),
            Row(children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.all<Color>(Colors.black),
               
                value: true, onChanged: (value) {
                
              }),
              CustomText(text: 'Use as default payment method', fontSize: 14.sp,fontWeight: FontWeight.bold,),
              
            ],),
            SizedBox(
              height: 19.h,
            ),
            Image.asset('assets/card_grey.png'),
              Row(children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.all<Color>(Colors.black),
               
                value: false, onChanged: (value) {
                
              }),
              CustomText(text: 'Use as default payment method', fontSize: 14.sp,fontWeight: FontWeight.bold,),
              
            ],),
            
            ])
      ),
    );
  }
}