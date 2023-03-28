import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:mayberks_me/utilities/urls.dart';
import 'package:url_launcher/url_launcher.dart';

/// the mobile application portfolios.
class MobileApplicationPortfolios extends StatefulWidget {
  const MobileApplicationPortfolios({super.key});

  @override
  State<MobileApplicationPortfolios> createState() => _MobileApplicationPortfoliosState();
}

class _MobileApplicationPortfoliosState extends State<MobileApplicationPortfolios> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: GridView.count(
          crossAxisCount: isMobile(context) || isMobile2(context) ? 2 : 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // childAspectRatio: (itemWidth / itemHeight),
          shrinkWrap: true,
          children:
              List.generate(ProfileData.mobileapplicationportfoliolist.length, (index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  Get.defaultDialog(
                    radius: 10,
                    backgroundColor: containerBackgroundColor,
                    actions: [
                      IconButton(
                        onPressed: () {
                          /// the link parse.
                          final Uri mobileapplicationportfolioUrl = Uri.parse(ProfileData
                              .mobileapplicationportfoliolist[index]['shop_link']);

                          /// the link launch.
                          Future<void> launchlink() async {
                            if (!await launchUrl(mobileapplicationportfolioUrl)) {
                              throw Exception(
                                  'Could not launch $mobileapplicationportfolioUrl');
                            }
                          }

                          /// the launch link.
                          launchlink();},
                        icon: const FaIcon(
                          FontAwesomeIcons.bagShopping,
                          color: greenColor,
                          size: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.xmark,
                          color: redColor,
                          size: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          /// the link parse.
                          final Uri mobileapplicationportfolioUrl = Uri.parse(ProfileData
                              .mobileapplicationportfoliolist[index]['github_link']);

                          /// the link launch.
                          Future<void> launchlink() async {
                            if (!await launchUrl(mobileapplicationportfolioUrl)) {
                              throw Exception(
                                  'Could not launch $mobileapplicationportfolioUrl');
                            }
                          }

                          /// the launch link.
                          launchlink();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: whiteColor,
                          size: 18,
                        ),
                      ),
                    ],
                    title: 'Project Preview',
                    titleStyle: const TextStyle(
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                    content: Image.asset(
                      ProfileData.mobileapplicationportfoliolist[index]['image'],
                      height: isMobile(context) || isMobile2(context)
                          ? null
                          : Get.height * 0.8,
                      fit: BoxFit.fill,
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: 'imageHero$index',
                    child: Image.asset(
                      ProfileData.mobileapplicationportfoliolist[index]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}

//                  Get.defaultDialog(
//                     radius: 10,
//                     backgroundColor: containerBackgroundColor,
//                     actions: [
//                       IconButton(
//                         onPressed: () {
//                           Get.back();
//                         },
//                         icon: Icon(
//                           Icons.close,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                     title: 'Project Preview',
//                     titleStyle: TextStyle(
//                       fontFamily: 'Sora',
//                       fontWeight: FontWeight.w400,
//                       color: whiteColor,
//                     ),
//                     content: Image.asset(
//                       ProfileData.flutterportfolios[index],
//                       height: isMobile(context) || isMobile2(context)
//                           ? null
//                           : Get.height * 0.8,
//                       fit: BoxFit.fill,
//                     ),
//                   );

//                      IconButton(
//                         onPressed: () {
//                           Get.back();
//                         },
//                         icon: Icon(
//                           Icons.close,
//                           color: Colors.red,
//                         ),
//                       )
