import 'package:evently_app/core/resoureses/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Column(
        children: [
          Image.asset(AppImages.resetImage),
          Container(
            padding: REdgeInsets.symmetric(vertical: 24.h),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Reset Password"),
            ),
          ),
        ],
      ),
    );
  }
}
