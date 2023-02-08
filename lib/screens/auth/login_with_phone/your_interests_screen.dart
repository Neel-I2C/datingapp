import 'package:datingapp/screens/auth/login_with_phone/controller/your_interests_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/utiles/your_interest_utiles.dart';
import 'package:datingapp/screens/auth/login_with_phone/add_photos_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import '../../../Constant/app_textstyle.dart';
import '../../../Constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourInterestScreen extends StatefulWidget {
  @override
  State<YourInterestScreen> createState() => _YourInterestScreenState();
}

class _YourInterestScreenState extends State<YourInterestScreen> {
  final YourInterestsController yourInterestsController =
      Get.put(YourInterestsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Obx(() {
        return yourInterestsController.isLoading.value == true
            ? appLoader()
            : Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      AppBarDesign(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                "Your interests",
                                style: AppTextStyle.interBold(
                                  size: 28.0,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '''Select a few of your interests and let everyone
know what you’re passionate about.''',
                                textAlign: TextAlign.center,
                                style: AppTextStyle.interRegular(
                                  size: 16.0,
                                  color: AppColor.grey697,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Obx(
                                () => Text(
                                  "${yourInterestsController.selectedList.length} of 5",
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.interRegular(
                                    size: 16.0,
                                    color: AppColor.grey697,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 27,
                              ),
                              GridView.builder(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: yourInterestsController
                                    .interestModel!.data!.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 2 / 0.65,
                                        crossAxisSpacing: 15,
                                        mainAxisSpacing: 10),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        yourInterestsController.selectedList
                                                .contains(
                                                    yourInterestsController
                                                        .interestModel!
                                                        .data![index]
                                                        .id)
                                            ? yourInterestsController
                                                .selectedList
                                                .remove(yourInterestsController
                                                    .interestModel!
                                                    .data![index]
                                                    .id)
                                            : yourInterestsController
                                                .selectedList
                                                .add(yourInterestsController
                                                    .interestModel!
                                                    .data![index]
                                                    .id);
                                      });
                                    },
                                    child: Container(
                                      width: Get.width / 2,
                                      padding: EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                        color: yourInterestsController
                                                .selectedList
                                                .contains(
                                                    yourInterestsController
                                                        .interestModel!
                                                        .data![index]
                                                        .id)
                                            ? AppColor.appColorFF5
                                            : AppColor.whiteFFF,
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        border: Border.all(
                                          color: yourInterestsController
                                                  .selectedList
                                                  .contains(
                                                      yourInterestsController
                                                          .interestModel!
                                                          .data![index]
                                                          .id)
                                              ? AppColor.appColorFF5
                                              : AppColor.greyEBE,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // SvgPicture.asset(
                                          //   widget.item!.image.toString(),
                                          //   // color: isSelected ? AppColor.whiteFFF : AppColor.appColorFF5,
                                          // ),
                                          // SizedBox(
                                          //   width: 9,
                                          // ),
                                          Text(
                                            "${yourInterestsController.interestModel!.data![index].name}",
                                            style: AppTextStyle.interSemiBold(
                                              color: yourInterestsController
                                                      .selectedList
                                                      .contains(
                                                          yourInterestsController
                                                              .interestModel!
                                                              .data![index]
                                                              .id)
                                                  ? AppColor.whiteFFF
                                                  : AppColor.black091,
                                              size: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                  // return GridItem(
                                  //   item: yourInterestsController.interestModel!.data![index],
                                  //   isSelected: (bool value) {
                                  //     if (value) {
                                  //       if (yourInterestsController.selectedList.length != 5) {
                                  //         yourInterestsController.selectedList
                                  //             .add(yourInterestsController.itemList[index].title);
                                  //       }
                                  //     } else {
                                  //       yourInterestsController.selectedList
                                  //           .remove(yourInterestsController.itemList[index].title);
                                  //     }
                                  //
                                  //     print("$index : $value");
                                  //   },
                                  //   selectedLength: yourInterestsController.selectedList.length,
                                  // );
                                },
                              ),
                              // FutureBuilder<InterestModel>(
                              //   future: yourInterestsController.fetchInterest(),
                              //   builder: (BuildContext context,
                              //       AsyncSnapshot<InterestModel> snapshot) {
                              //     if (snapshot.hasData) {
                              //       return itemSelection(
                              //           interestList: snapshot.data!.data!
                              //               .map((e) => e.toJson())
                              //               .toList());
                              //     }
                              //     return Center(
                              //       child: CircularProgressIndicator(),
                              //     );
                              //   },
                              // ),
                              // itemSelection(),
                              SizedBox(
                                height: 120,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 111,
                    width: Get.width,
                    padding: EdgeInsets.only(
                        top: 16, bottom: 40, left: 24, right: 24),
                    decoration: BoxDecoration(
                      color: AppColor.whiteFFF,
                      border: Border.all(
                        color: AppColor.greyEBE,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    child: Obx(
                      () => yourInterestsController.selectedList.isEmpty
                          ? CommonButton(
                              onTap: () {},
                              colors: [
                                AppColor.appColorFF4.withOpacity(0.6),
                                AppColor.appColorFD7.withOpacity(0.6),
                              ],
                              title: "Continue",
                            )
                          : CommonButton(
                              onTap: () {
                                Get.to(() => AddPhotosScreen());
                              },
                              title: "Continue",
                            ),
                    ),
                  ),
                ],
              );
      }),
    );
  }

  ///item selection
  Widget itemSelection({var interestList}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: yourInterestsController.itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 0.65,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridItem(
            item: yourInterestsController.itemList[index],
            isSelected: (bool value) {
              if (value) {
                if (yourInterestsController.selectedList.length != 5) {
                  yourInterestsController.selectedList
                      .add(yourInterestsController.itemList[index].title);
                }
              } else {
                yourInterestsController.selectedList
                    .remove(yourInterestsController.itemList[index].title);
              }

              print("$index : $value");
            },
            selectedLength: yourInterestsController.selectedList.length,
          );
        },
      ),
    );
  }
}
