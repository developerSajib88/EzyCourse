import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostItemView extends StatelessWidget {
  const PostItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: padding6,
      child: Column(
        children: [
          Row(
            children: [

              CircleAvatar(
                radius: 12.sp,
                backgroundImage: const AssetImage(Assets.imagesAvater),
              ),

              gap4,

              Column(
                crossAxisAlignment: crossStart,
                children: [
                  Text(
                    "Alexander John",
                    style: CustomTextStyles.titleTextStyles.copyWith(
                      color: ColorPalates.dark
                    ),
                  ),

                  Text(
                    "2 days ago",
                    style: CustomTextStyles.primary,
                  )

                ],
              ),

              const Spacer(),

              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.more_vert_rounded)
              )

            ],
          ),

          const Divider(),

          Text(
            "Hello everyone this is a post from app to see if attached link is working or not. Here is a link https://www.merriam-webster.com/dictionary/link  but I think this is not working. This should work but not working!!!!",
            style: CustomTextStyles.primary,
          ),

          gap6,

          ClipRRect(
            borderRadius: radius4,
            child: Image.network(
              "https://img.freepik.com/free-photo/nature-landscape-with-lake-mountain_395237-240.jpg",
              width: 1.sw,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),

          gap4,

          Row(
            children: [

              Stack(
                alignment: Alignment.centerRight,
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    Assets.reactLike,
                    width: 15.w,
                    height: 15.w,
                  ),

                  Positioned(
                    right: -20,
                    child: Image.asset(
                      Assets.reactLove,
                      width: 15.w,
                      height: 15.w,
                    ),
                  )

                ],
              ),

              gap12,

              Text(
                "You and 2 other",
                style: CustomTextStyles.primary.copyWith(
                  color: ColorPalates.dark,
                  fontWeight: FontWeight.bold
                ),
              ),

              const Spacer(),


              Icon(
                Icons.mode_comment_outlined,
                size: 10.sp,
              ),

              gap2,

              Text(
                "12 Comments",
                style: CustomTextStyles.primary,
              )

            ],
          ),

          gap6,

          Row(
            mainAxisAlignment: mainSpaceBetween,
            children: [

              Row(
                children: [
                  ReactionButton<String>(
                    onReactionChanged: (Reaction<String>? reaction) {
                      debugPrint('Selected value: ${reaction?.value}');
                    },
                    reactions: <Reaction<String>>[
                      Reaction<String>(
                        value: "like",
                        title: const Text("Like"),
                        icon: Image.asset(
                          Assets.reactLike,
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),

                      Reaction<String>(
                        value: "love",
                        title: const Text("love"),
                        icon: Image.asset(
                          Assets.reactLove,
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),

                      Reaction<String>(
                        value: "love",
                        title: const Text("love"),
                        icon: Image.asset(
                          Assets.reactCare,
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),

                      Reaction<String>(
                        value: "love",
                        title: const Text("love"),
                        icon: Image.asset(
                          Assets.reactHaha,
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),


                      Reaction<String>(
                        value: "love",
                        title: const Text("love"),
                        icon: Image.asset(
                          Assets.reactSad,
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),

                      Reaction<String>(
                        value: "love",
                        title: const Text("love"),
                        icon: Image.asset(
                          Assets.reactAngry,
                          width: 15.w,
                          height: 15.w,
                        ),
                      ),
                    ],
                    itemSize: Size(20.w, 20.w),
                  ),

                  gap4,

                  Text(
                    "Liked",
                    style: CustomTextStyles.titleTextStyles.copyWith(
                      color: ColorPalates.primary
                    ),
                  )

                ],
              ),

              // InkResponse(
              //   onLongPress: (){},
              //   child: Row(
              //     children: [
              //
              //       Icon(
              //         Icons.thumb_up,
              //         color: Colors.deepPurple,
              //       ),
              //
              //       gap2,
              //
              //       Text(
              //         "LIKE",
              //         style: CustomTextStyles.titleTextStyles.copyWith(
              //           color: Colors.deepPurple
              //         ),
              //       )
              //
              //     ],
              //   ),
              // ),

              InkResponse(
                onLongPress: (){},
                child: Row(
                  children: [

                    FaIcon(
                      FontAwesomeIcons.comment
                    ),

                    gap2,

                    Text(
                      "Comment",
                      style: CustomTextStyles.titleTextStyles.copyWith(
                        color: ColorPalates.dark
                      ),
                    )

                  ],
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
