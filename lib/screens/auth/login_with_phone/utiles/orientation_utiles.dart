import 'package:datingapp/Constant/app_textstyle.dart';
import '../controller/my_orientation_controller.dart';
import '../../../../Constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiSelectChip extends StatefulWidget {
  final List reportList;

  MultiSelectChip(this.reportList);

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  MyOrientationController myOrientationController = Get.find();
  // this function will build and return the choice list
  _buildChoiceList() {
    List<Widget> choices = [];
    // for (var item in widget.reportList!) {
    for (int i = 0; i < widget.reportList.length; i++) {
      choices.add(
        Container(
          height: 42,
          margin: EdgeInsets.only(right: 10, bottom: 12),
          child: ChoiceChip(
            backgroundColor: AppColor.whiteFFF,
            selectedColor: AppColor.appColorFF5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(
                color: AppColor.appColorFF5,
              ),
            ),
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 9, bottom: 9),
            label: Text(
              widget.reportList[i]["nameS"].toString(),
              style: AppTextStyle.interRegular(
                size: 16.0,
                color: myOrientationController.selectedChoices
                        .contains(widget.reportList[i]["id"].toString())
                    ? AppColor.whiteFFF
                    : AppColor.appColorFF5,
              ),
            ),
            selected: myOrientationController.selectedChoices
                .contains(widget.reportList[i]["id"].toString()),
            onSelected: (selected) {
              setState(
                () {
                  myOrientationController.selectedChoices
                          .contains(widget.reportList[i]["id"].toString())
                      ? myOrientationController.selectedChoices
                          .remove(widget.reportList[i]["id"].toString())
                      : myOrientationController.selectedChoices
                          .add(widget.reportList[i]["id"].toString());
                },
              );
            },
          ),
        ),
      );
    }
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
