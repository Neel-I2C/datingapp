import 'package:datingapp/screens/bottomScreen/home/profileDetail/profile_detail_screen.dart';
import 'package:datingapp/screens/bottomScreen/home/notification/notification_screen.dart';
import 'bottomNavigation/bottom_navigation_controller.dart';
import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipe_cards/swipe_cards.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NavigationController navigationController = Get.find();
  @override
  void initState() {
    // for (int i = 0; i < imageList.length; i++) {
    //   _swipeItems.add(
    //     SwipeItem(
    //       content: Content(
    //         text: imageList[i],
    //       ),
    //       likeAction: () {},
    //       nopeAction: () {},
    //       superlikeAction: () {},
    //       onSlideUpdate: (SlideRegion? region) async {
    //         print("Region $region");
    //       },
    //     ),
    //   );
    // }
    for (int i = 0;
        i < navigationController.allProfileModel!.data!.length;
        i++) {
      _swipeItems.add(
        SwipeItem(
          content: Content(
            text:
                "${navigationController.allProfileModel!.data![i].dp![i].img}",
          ),
          likeAction: () {},
          nopeAction: () {},
          superlikeAction: () {},
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          },
        ),
      );
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  List<String> imageList = [
    AppImage.gril1,
    AppImage.gril2,
    AppImage.gril1,
    AppImage.gril2,
    AppImage.gril1,
    AppImage.gril2,
  ];

  final List<SwipeItem> _swipeItems = <SwipeItem>[];

  late MatchEngine _matchEngine;

  GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whiteFFF,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(
              AppImage.appLogo,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => NotificationScreen());
            },
            icon: Icon(
              Icons.notifications,
              color: AppColor.appColorFF5,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "YourApp",
          style: AppTextStyle.arizoniaRegular(
            size: 27.0,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              ///tinder swiper
              SizedBox(
                height: Get.height / 1.48 /*532*/,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ProfileDetailHomeScreen());
                      },
                      child: Container(
                        width: Get.width,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        padding: EdgeInsets.only(top: 20, left: 20, bottom: 45),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          image: DecorationImage(
                            // image: NetworkImage(
                            //   "${navigationController.allProfileModel!.data![0].dp![0].img}",
                            // ),
                            image: AssetImage(
                              _swipeItems[index].content.text,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 34,
                              width: 71,
                              decoration: BoxDecoration(
                                color: AppColor.black000.withOpacity(0.35),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: AppColor.whiteFFF,
                                    size: 18,
                                  ),
                                  Text(
                                    "3 Miles",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.interSemiBold(
                                      size: 12.0,
                                      color: AppColor.whiteFFF,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rex, 27",
                                    style: AppTextStyle.interBold(
                                      size: 30.0,
                                      color: AppColor.whiteFFF,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Lives in Vadodara",
                                    style: AppTextStyle.interSemiBold(
                                      size: 15.0,
                                      color: AppColor.whiteFFF,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  onStackFinished: () {},
                  itemChanged: (SwipeItem item, int index) {
                    print("item: ${item.content.text}, index: $index");
                  },
                  // upSwipeAllowed: true,
                  fillSpace: true,
                ),
              ),

              ///buttons row
              Positioned(
                bottom: -35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PostContain(
                      height: 42,
                      width: 42,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(AppImage.restart),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    PostContain(
                      height: 58,
                      width: 58,
                      child: Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: SvgPicture.asset(AppImage.cancel),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    PostContain(
                      height: 78,
                      width: 78,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: SvgPicture.asset(AppImage.heart),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    PostContain(
                      height: 58,
                      width: 58,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(AppImage.star),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    PostContain(
                      height: 42,
                      width: 42,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(AppImage.light),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Content {
  final String text;

  Content({
    required this.text,
  });
}
