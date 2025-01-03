import 'package:feature_first/common/widgets/buttons/primary_buttons.dart';
import 'package:feature_first/common/widgets/components/background_container.dart';
import 'package:feature_first/common/widgets/components/item_views/post_item_view.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommunityScreen extends HookConsumerWidget {
  static String get path => "/communityScreen";

  static String get name => "communityScreen";

  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorPalates.background,
      body: SafeArea(
        child: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: [
              Container(
                width: 1.sw,
                height: 50.h,
                alignment: Alignment.center,
                padding: padding6,
                color: ColorPalates.primary,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_rounded,
                          color: ColorPalates.defaultWhite,
                          size: 15.sp,
                        )
                    ),
        
                    Column(
                      crossAxisAlignment: crossStart,
                      mainAxisAlignment: mainCenter,
                      children: [
                        Text(
                          "Python Developer Community",
                          style: CustomTextStyles.titleTextStyles,
                        ),

                        Text(
                          "# General",
                          style: CustomTextStyles.primary.copyWith(
                            color: Colors.white54
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),


              Expanded(
                child: Container(
                  width: 1.sw,
                  height: 1.sh,
                  padding: padding4,
                  child: Column(
                    children: [

                      BackgroundContainer(
                        width: 1.sw,
                        height: 50.h,
                        padding: padding6,
                        child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          children: [

                            Image.asset(
                              Assets.imagesAvater
                            ),

                            Text(
                              "Write Something here...",
                              style: CustomTextStyles.primary,
                            ),

                            PrimaryButton(
                              width: 30.w,
                              height: 20.h,
                              title: "Post",
                              onPressed: (){}
                            )

                          ],
                        ),
                      ),

                      Expanded(
                        child: ListView.builder(
                            itemBuilder: (context,index){
                              return const PostItemView();
                            }
                        ),
                      )

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
