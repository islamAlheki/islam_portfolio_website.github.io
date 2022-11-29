import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/portfolio/model/project_item_model.dart';
import 'package:islam_portfolio/pages/portfolio/view/widget/section_portfolio_card_widget.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Section portfolio
        SectionPortfolioCardWidget(
          title: 'Portfolio',
          subTitle: 'My work',
          projectsList: [
            ProjectItemModel(
              appMainColor: ColorConfig().cardGreenColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
              ],

            ),
            ProjectItemModel(
              appMainColor: ColorConfig().cardBlackColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cros Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross- Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross- Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross- Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross- Cross-platform',
                ),
              ],

            ),
            ProjectItemModel(
              appMainColor: ColorConfig().cardGreenColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
              ],

            ),
            ProjectItemModel(
              appMainColor: ColorConfig().cardGreenColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
              ],

            ),
            ProjectItemModel(
              appMainColor: ColorConfig().cardGreenColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
              ],

            ),
            ProjectItemModel(
              appMainColor: ColorConfig().cardGreenColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
              ],

            ),
            ProjectItemModel(
              appMainColor: ColorConfig().cardGreenColor(1),
              iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
              appName:'E7la2ly' ,
              appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
              fullDescription: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
              mainPreviewImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/mobile%20mockup2.png',
              platformsList: [
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_ios.png',
                  platformName: 'ios',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_android.png',
                  platformName: 'android',
                ),
                PlatformItemModel(
                  platformIcon: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/platform_flutter.png',
                  platformName: 'flutter',
                ),

              ],
              presentationImage: 'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
              appStoreUrl: '',
              playStoreUrl: '',
              futureList: [
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
                ProjectFutureItemModel(
                  future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                ),
              ],

            ),
          ],
        ),

      ],
    );
  }
}
