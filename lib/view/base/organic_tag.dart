import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/data/model/response/item_model.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/styles.dart';
class OrganicTag extends StatelessWidget {
  final double? fontSize;
  final Item item;
  final bool placeTop;
  final bool placeInImage;
  const OrganicTag({Key? key, this.fontSize, required this.item, this.placeTop = false, this.placeInImage = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: placeInImage ? null : placeTop ? 10 : 30, left: 0, right: placeInImage ? 0 : null, bottom: placeInImage ? 0 : null,
      child: item.organic == 1 && item.moduleType == 'grocery' ? Container(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall, vertical: 3),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: placeInImage ? const BorderRadius.vertical(
            bottom: Radius.circular(Dimensions.radiusSmall),
          ) : const BorderRadius.horizontal(
            right: Radius.circular(Dimensions.radiusSmall),
          ),
        ),
        child: Text(
          'organic'.tr,
          style: robotoMedium.copyWith(
            color: Colors.white,
            fontSize: fontSize ?? (ResponsiveHelper.isMobile(context) ? 10 : 12),
          ),
          textAlign: TextAlign.center,
        ),
      ) : const SizedBox(),
    );
  }
}
