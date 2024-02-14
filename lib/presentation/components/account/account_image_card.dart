import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/domain/entity/general/user_entity.dart';
import 'package:mock_university/presentation/components/general/app_icon_button.dart';
import 'package:mock_university/presentation/components/general/custom_cached_network_image.dart';
import 'package:mock_university/presentation/components/general/images/svg_image.dart';
import 'package:mock_university/utils/ui/colors.dart';

class AccountImageCard extends StatelessWidget {
  const AccountImageCard({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 104.r,
          width: 104.r,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color(0xffD4B0FF),
                  width: 10.r
              )
          ),
          child: CustomCachedNetworkImage(
            imageUrl: userEntity.imageUrl,
            width: 83.r,
            height: 83.r,
            boxShape: BoxShape.circle,
          ),
        ),
        AppIconButton(
            icon: Container(
                height: 25.r,
                width: 25.r,
                margin: EdgeInsets.only(top: 78.r,left: 73.r),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: mainColor,
                    border: Border.all(
                        color: white,
                        width: 2.r
                    )
                ),
                child: SvgImage.editIcon
            ),
            onClick: (){

            }
        ),
      ],
    );
  }
}
