import 'package:datingapp/Constant/app_color.dart';
import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/add_photos_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/enable_location_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_image.dart';

class AddPhotosScreen extends StatelessWidget {
  final AddPhotosController addPhotosController =
      Get.put(AddPhotosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              AppBarDesign(),
              Text(
                "Add Photos",
                style: AppTextStyle.interBold(
                  size: 28.0,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Add at least 2 photos to continue",
                textAlign: TextAlign.center,
                style: AppTextStyle.interRegular(
                  size: 16.0,
                  color: AppColor.grey697,
                ),
              ),
              SizedBox(
                height: 47,
              ),
              selectionPictures(),
            ],
          ),
          Container(
            height: 111,
            width: Get.width,
            padding: EdgeInsets.only(top: 16, bottom: 40, left: 24, right: 24),
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
              () => addPhotosController.selected.isFalse
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
                        Get.to(() => EnableLocationScreen());
                      },
                      title: "Continue",
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectionPictures() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 2.5,
          crossAxisSpacing: 11,
          mainAxisSpacing: 9,
        ),
        itemBuilder: (context, index) {
          /* Obx(
                () =>
                    : Container(),
              ),*/
          return Obx(
            () => (addPhotosController.selected.isTrue &&
                    (index == 0 || index == 1))
                ? Container(
                    height: 142,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage(
                          index == 0 ? AppImage.men1 : AppImage.men2,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.only(right: 5, top: 5),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.cancel_outlined,
                          color: AppColor.appColorFF5,
                        ),
                      ),
                    ),
                  )
                : DottedBorder(
                    padding: EdgeInsets.zero,
                    borderType: BorderType.RRect,
                    color: AppColor.appColorFF5,
                    radius: Radius.circular(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      child: Container(
                        height: 142,
                        width: Get.width,
                        color: AppColor.appColorFD7.withOpacity(0.2),
                        child: Padding(
                          padding: const EdgeInsets.all(34),
                          child: FloatingActionButton(
                            heroTag: "Text",
                            backgroundColor: AppColor.appColorFD7,
                            elevation: 0.0,
                            onPressed: () {
                              addPhotosController.selected.value =
                                  !addPhotosController.selected.value;
                            },
                            child: Icon(
                              Icons.add,
                              color: AppColor.whiteFFF,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
