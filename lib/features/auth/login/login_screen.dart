import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/resoureses/app_images.dart';
import 'package:evently_app/core/route/router_name.dart';
import 'package:evently_app/core/utils/validators/validators.dart';
import 'package:evently_app/core/widgets/custom_text_button.dart';
import 'package:evently_app/core/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool securePass = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: REdgeInsets.only(top: 47, bottom: 24),
                  child: Image.asset(AppImages.eventlyLogo),
                ),
                CustomFormField(
                  controller: _emailController,
                  labelText: context.l10n!.email,
                  validator: (input) =>
                      Validators.validateEmail(input, context),
                  prefixIcon: Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomFormField(
                  controller: _passwordController,
                  validator: (input) =>
                      Validators.validatePassword(input, context),
                  labelText: context.l10n!.password,
                  isScure: securePass,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        securePass = !securePass;
                      });
                    },
                    icon: Icon(
                      securePass ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomTextButton(
                    text: context.l10n!.forget_pass,
                    onTap: () {
                      context.push(RouterName.forgetPass);
                    },
                  ),
                ),
                Container(
                  padding: REdgeInsets.symmetric(vertical: 24),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _login();
                    },
                    child: Text(context.l10n!.login),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n!.no_have_account,
                      style: context.textTheme.bodyMedium,
                    ),
                    CustomTextButton(
                      text: context.l10n!.create_account,
                      onTap: () {
                        context.go(RouterName.register);
                      },
                    ),
                  ],
                ),
                Container(
                  padding: REdgeInsets.symmetric(vertical: 24),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: context.primaryColor,
                          indent: 26.w,
                          endIndent: 16.w,
                          thickness: 1.h,
                        ),
                      ),
                      Text(
                        context.l10n!.or,
                        style: GoogleFonts.inter(
                          color: context.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: context.primaryColor,
                          indent: 16.w,
                          endIndent: 26.w,
                          thickness: 1.h,
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.googleLogo),
                      SizedBox(width: 10.w),
                      Text(context.l10n!.login_with_google),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login() {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      context.go("");
    }
  }
}
