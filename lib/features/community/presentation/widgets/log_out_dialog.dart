import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: radius8,
        child: Container(
          width: 150.w,
          height: 90.h,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: radius10,
            ),
          ),
          child: Column(
            crossAxisAlignment: crossCenter,
            mainAxisAlignment: mainCenter,
            children: [

              const Spacer(),

              Text(
                "Logout",
                style: CustomTextStyles.titleTextStyles.copyWith(
                  color: ColorPalates.dark
                ),
              ),

              gap6,

              SizedBox(
                width: 85.w,
                child: Text(
                  "Are you sure, you want to log out?",
                  style: CustomTextStyles.primary,
                  textAlign: TextAlign.center,
                ),
              ),

              const Spacer(),

              const Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  TextButton(
                      onPressed: (){},
                      child: const Text(
                        "Yes"
                      )
                  ),

                  Container(
                    width: 0.5.w,
                    height: 30.h,
                    color: Colors.grey,
                  ),

                  TextButton(
                      onPressed: ()=> Navigator.pop(context),
                      child: Text(
                          "No",
                        style: CustomTextStyles.primary,
                      )
                  ),

                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}