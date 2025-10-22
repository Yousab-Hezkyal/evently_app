import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/resoureses/app_images.dart';
import 'package:evently_app/core/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({super.key});

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n!.forget_pass)),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.resetImage),
            CustomFormField(
              controller: _emailController,
              labelText: context.l10n!.email,
              prefixIcon: Icon(Icons.email),
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(context.l10n!.reset_pass),
            ),
          ],
        ),
      ),
    );
  }
}
