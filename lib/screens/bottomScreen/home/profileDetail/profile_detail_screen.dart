import 'package:datingapp/screens/bottomScreen/home/profileDetail/controller/profile_detail_controller.dart';
import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:datingapp/Constant/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../Constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDetailHomeScreen extends StatelessWidget {
  final ProfileDetailController controller = Get.put(ProfileDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileDetailController>(builder: (controller) {
        return controller.isLoading.value == true
            ? appLoader()
            : Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 480,
                        width: Get.width,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            // image: NetworkImage(
                            //   "${controller.profileMeModel!.data![0].dp![0].img}",
                            // ),
                            image: AssetImage(
                              AppImage.gril1Without,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: AppColor.black000,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  bottomDesign(),
                ],
              );
      }),
    );
  }

  Widget bottomDesign() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: Get.height / 2,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColor.whiteFFF,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${controller.profileMeModel!.data![0].user!.firstName} ${controller.profileMeModel!.data![0].user!.lastName}",
                    // "Rex, 27",
                    style: AppTextStyle.interBold(
                      color: AppColor.black000,
                      size: 26.0,
                    ),
                  ),
                  Text(
                    "${controller.profileMeModel?.data![0].iAm}",
                    // "Proffesional model",
                    style: AppTextStyle.interRegular(
                      color: AppColor.black000,
                      size: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  commonRowProfileD(
                    title: "${controller.profileMeModel!.data![0].school}",
                    // title: "Veer Narmad South Gujarat University",
                    icon: Icons.school_outlined,
                  ),
                  commonRowProfileD(
                    title: controller.profileMeModel!.data![0].livingIn != null
                        ? "Live in ${controller.profileMeModel!.data![0].livingIn}"
                        : "Live in ",
                    // title: "Live in ${controller.profileMeModel!.data}",
                    // title: "Live in Surat",
                    icon: Icons.home_outlined,
                  ),
                  commonRowProfileD(
                    title: controller.profileMeModel!.data![0].livingIn != null
                        ? "${controller.profileMeModel!.data![0].livingIn}"
                        : "",
                    // title: "3 miles away",
                    icon: Icons.location_on_outlined,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "About",
                    style: AppTextStyle.interSemiBold(
                      color: AppColor.black000,
                      size: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      CommonButtonProfileDetail(
                        // title: "${controller.profileMeModel!.data}",
                        title: "Dancing",
                        image: AppImage.dance,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CommonButtonProfileDetail(
                        title: "Modeling",
                        image: AppImage.modeling,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Interests",
                    style: AppTextStyle.interSemiBold(
                      color: AppColor.black000,
                      size: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount:
                          controller.profileMeModel!.data![0].interests!.length,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2 / 0.65,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return (index == 0 || index == 1)
                            ? Container(
                                /*alignment: Alignment.center,*/
                                decoration: BoxDecoration(
                                  color: AppColor.whiteFFF,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(
                                    color: AppColor.appColorFF5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(AppImage.doubleClick),
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${controller.profileMeModel!.data![0].interests![index].name}",
                                      // controller.itemList[index].title
                                      //     .toString(),
                                      style: AppTextStyle.interSemiBold(
                                        color: AppColor.appColorFF5,
                                        size: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColor.whiteFFF,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(
                                    color: AppColor.greyE8E,
                                  ),
                                ),
                                child: Text(
                                  "${controller.profileMeModel!.data![0].interests![index].name}",
                                  // controller.itemList[index].title.toString(),
                                  style: AppTextStyle.interRegular(
                                    color: AppColor.black091,
                                    size: 14.0,
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PostContain(
                height: 70,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SvgPicture.asset(AppImage.cancel),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              PostContain(
                height: 88,
                width: 88,
                color: AppColor.appColorFF5,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SvgPicture.asset(
                    AppImage.heart,
                    color: AppColor.whiteFFF,
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              PostContain(
                height: 70,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: SvgPicture.asset(AppImage.star),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
