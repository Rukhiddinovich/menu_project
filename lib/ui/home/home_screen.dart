import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:menu_project/ui/home/order_screen/order_screen.dart';
import 'package:menu_project/ui/home/widgets/universal_input.dart';
import 'package:menu_project/utils/colors.dart';
import 'package:menu_project/utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(AppImages.backgroundImages,
          width: width,
          height: height,
          fit: BoxFit.fill,),
          Container(
            color: const Color(0xFF111015).withOpacity(0.9),
            width: double.infinity,
            height: height,
            child: ListView(
              children: [Column(
                children: [
                  SizedBox(height: height * (103 / 812)),
                  const Text(
                    "BURGER BAR",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 52,
                        fontWeight: FontWeight.w500,
                        fontFamily: "ARCENA"
                    ),
                  ),
                  SizedBox(height: height * (28 / 812)),
                  const Text(
                    "Войдите в свой профиль",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  const Text(
                    "Войдите, чтобы продолжить",
                    style: TextStyle(
                        color: AppColors.C_6C7072,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: height * (48 / 812)),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    height: height * (56 / 812),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_22222A),
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[a-zA-z@0-9.]'))
                      ],
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.white),
                      cursorWidth: 2,
                      cursorHeight: 30,
                      cursorColor: AppColors.C_879EA4.withOpacity(0.2),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                        hintText: "Email or Phone Number",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                        border: InputBorder.none,
                        icon: SvgPicture.asset(AppImages.send),
                        // disabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   borderSide: const BorderSide(
                        //     width: 1,
                        //     color: AppColors.white,
                        //   ),
                        // ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   borderSide: const BorderSide(
                        //     width: 1,
                        //     color: AppColors.white,
                        //   ),
                        // ),
                        // errorBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   borderSide: const BorderSide(
                        //     width: 1,
                        //     color: AppColors.white,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * (21 / 812)),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    height: height * (56 / 812),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_22222A),
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[a-zA-z0-9.]'))
                      ],
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.white),
                      cursorWidth: 2,
                      cursorHeight: 30,
                      cursorColor: AppColors.C_879EA4.withOpacity(0.2),
                      obscureText: passwordVisible,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                        border: InputBorder.none,
                        icon: SvgPicture.asset(AppImages.shield),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.C_E1D24A,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                        // disabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   borderSide: const BorderSide(
                        //     width: 1,
                        // color: AppColors.white,
                        // ),
                        // ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   borderSide: const BorderSide(
                        //     width: 1,
                        //     // color: AppColors.white,
                        //   ),
                        // ),
                        // errorBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   borderSide: const BorderSide(
                        //     width: 1,
                        //     // color: AppColors.white,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * (33 / 812)),
                  const Text(
                    "Или продолжите с помощью",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white),
                  ),
                  SizedBox(height: height * (45 / 812)),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 21),
                        width: 153,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.C_22222A),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.facebook,
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(width: width * (12 / 375)),
                            const Text(
                              "Facebook",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 21),
                        width: 153,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.C_22222A),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.google,
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(width: width * (10 / 375)),
                            const Text(
                              "Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * (44 / 812)),
                  const Text(
                    "Забыли пароль?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.C_E1D24A),
                  ),
                  SizedBox(height: height * (32 / 812)),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [AppColors.C_E1D24A, AppColors.C_C69233])),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const OrderScreen();
                              },
                            ),
                          );
                        },
                        child: const Center(
                          child: Text(
                            "Войти",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,),
                          ),
                        )),
                  )
                ],
              )],
            ),
          ),
        ],
      ),
    );
  }
}
