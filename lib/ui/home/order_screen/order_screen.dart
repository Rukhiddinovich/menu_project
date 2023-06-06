import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:menu_project/utils/colors.dart';
import 'package:menu_project/utils/icons.dart';

import '../home_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF151418),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: height*(80/812),width: width*(17/375),),
                Ink(
                  width: width*(44/375),
                  height: height*(44/812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.C_E1D24A,
                            AppColors.C_C69233
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                    child: Center(
                      child: SvgPicture.asset(AppImages.back),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * (60 / 375),
                ),
                Text(
                  "Детали заказа",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.white),
                )
              ],
            ),
            SizedBox(height: height*(25/812)),
            SizedBox(
              width: width*(343/375),
              height: height*(360/812),
              child: ListView(
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16),
                    width: width*(343/375),
                    height: height*(105/812),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_22222A
                    ),
                    child: Row(
                      children: [
                        Image.asset(AppImages.burger,width: width*(88/375),height: height*(68/812)),
                        SizedBox(width: width*(5/375)),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height*(8/812),),
                            Text("Чикен Бургер",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColors.white
                              ),),
                            SizedBox(height: height*(8/812),),
                            Row(
                              children: [
                                Text("Изящный бургер",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.C_6A6A6E
                                  ),),
                                SizedBox(width: width*(50/375),),
                                Container(
                                  width: width*(90/375),
                                  height: height*(34/812),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: AppColors.C_19191D
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width: width*(5/375),),
                                        SvgPicture.asset(AppImages.plus),
                                        SizedBox(width: width*(16/375)),
                                        Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.white),),
                                        SizedBox(width: width*(17/375),),
                                        SvgPicture.asset(AppImages.minus),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: height*(5/812),),
                            Text("₽160",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white
                              ),),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*(21/812),),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16),
                    width: width*(343/375),
                    height: height*(105/812),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_22222A
                    ),
                    child: Row(
                      children: [
                        Image.asset(AppImages.free,width: width*(88/375),height: height*(108/812)),
                        SizedBox(width: width*(5/375)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height*(8/812),),
                            Text("Картошка Фри",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColors.white
                              ),),
                            SizedBox(height: height*(8/812),),
                            Row(
                              children: [
                                Text("Хрустят отлично",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.C_6A6A6E
                                  ),),
                                SizedBox(width: width*(50/375),),
                                Container(
                                  width: width*(90/375),
                                  height: height*(34/812),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: AppColors.C_19191D
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width: width*(5/375),),
                                        SvgPicture.asset(AppImages.plus),
                                        SizedBox(width: width*(16/375)),
                                        Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.white),),
                                        SizedBox(width: width*(17/375),),
                                        SvgPicture.asset(AppImages.minus),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: height*(5/812),),
                            Text("₽100",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white
                              ),),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*(21/812),),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16),
                    width: width*(343/375),
                    height: height*(105/812),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_22222A
                    ),
                    child: Row(
                      children: [
                        Image.asset(AppImages.cocktail,width: width*(88/375),height: height*(102/812)),
                        SizedBox(width: width*(5/375)),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height*(8/812),),
                            Text("Молочный коктейль",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColors.white
                              ),),
                            SizedBox(height: height*(8/812),),
                            Row(
                              children: [
                                Text("Отлично подойдет",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.C_6A6A6E
                                  ),),
                                SizedBox(width: width*(40/375),),
                                Container(
                                  width: width*(90/375),
                                  height: height*(34/812),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: AppColors.C_19191D
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width: width*(5/375),),
                                        SvgPicture.asset(AppImages.plus),
                                        SizedBox(width: width*(16/375)),
                                        Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.white),),
                                        SizedBox(width: width*(17/375),),
                                        SvgPicture.asset(AppImages.minus),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: height*(5/812),),
                            Text("₽120",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white
                              ),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*(40/812)),
                ],
              ),
            ),

            Stack(
              children: [
                Container(
                  width: width*(375/375),
                  height: height*(279/812),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: AppColors.C_18171C
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: height*(50/812),width: width*(16/375),),
                          Text("Стоимость всех товаров",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white
                          ),),
                          SizedBox(width: width*(133/375)),
                          Text("₽380",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.white
                          ),)
                        ],
                      ),
                      SizedBox(height: height*(6/812)),
                      Row(
                        children: [
                          SizedBox(width: width*(16/375)),
                          Text("Чаевые курьеру",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white
                            ),),
                          SizedBox(width: width*(197/375)),
                          Text("₽30",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.white
                            ),)
                        ],
                      ),
                      SizedBox(height: height*(14/812)),
                      Row(
                        children: [
                          SizedBox(width: width*(16/375)),
                          Text("Общая стоимость",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white
                            ),),
                          SizedBox(width: width*(160/375)),
                          Text("₽410",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: AppColors.white
                            ),),
                        ],
                      ),
                      SizedBox(height: height*(24/812)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
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
                                    return OrderScreen();
                                  },
                                ),
                              );
                            },
                            child: const Center(
                              child: Text(
                                "Оплатить",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.black,),
                              ),
                            )),
                      ),
                      SizedBox(height: height*(10/812),),
                      Divider(),
                      SizedBox(height: height*(15/812),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: width*(16/812)),
                          SvgPicture.asset(AppImages.home),
                          SizedBox(width: width*(57/812)),
                          SvgPicture.asset(AppImages.buy),
                          SizedBox(width: width*(46/812)),
                          SvgPicture.asset(AppImages.basket),
                          SizedBox(width: width*(46/812)),
                          SvgPicture.asset(AppImages.heart),
                          SizedBox(width: width*(54/812)),
                          SvgPicture.asset(AppImages.smile),
                          SizedBox(width: width*(16/812)),


                        ],
                      )
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
