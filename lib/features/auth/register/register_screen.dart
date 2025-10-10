import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/resoureses/app_images.dart';
import 'package:evently_app/core/route/router_name.dart';
import 'package:evently_app/core/utils/validators/validators.dart';
import 'package:evently_app/core/widgets/custom_text_button.dart';
import 'package:evently_app/core/widgets/cutom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool securePass = true;
  bool secureRePass = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _rePasswordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rePasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
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
                CutomFormField(
                  controller: _nameController,
                  label: "Name",
                  validator: (input) => Validators.validateUsername(input),
                  prefixIcon: Icon(Icons.person),
                ),
                CutomFormField(
                  controller: _emailController,
                  label: "Email",
                  validator: (input) => Validators.validateEmail(input),
                  prefixIcon: Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                ),
                CutomFormField(
                  controller: _passwordController,
                  validator: (input) => Validators.validatePassword(input),
                  label: "Password",
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
                CutomFormField(
                  controller: _rePasswordController,
                  validator: (input) => Validators.validateRePassword(
                    input,
                    _passwordController.text,
                  ),
                  label: "RePassword",
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
                Container(
                  padding: REdgeInsets.only(bottom: 24),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _login();
                    },
                    child: Text("Create Account"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account ?  ",
                      style: context.textTheme.bodyMedium,
                    ),
                    CustomTextButton(
                      text: "Login",
                      onTap: () {
                        context.go(RouterName.login);
                      },
                    ),
                  ],
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
    }
  }
}
