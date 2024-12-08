import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';
import 'package:user_profile/constants/image.dart';
import 'package:user_profile/constants/text.dart';
import 'package:user_profile/widgets/Gender/gender_preference.dart';
import 'package:user_profile/widgets/Signout/signout.dart';
import 'package:user_profile/widgets/field_name.dart';
import 'package:user_profile/widgets/field_select.dart';
import 'package:user_profile/widgets/notificationSetting/notification_settings.dart';
import 'package:user_profile/widgets/text_tile.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  List<String> textStream = [
    TText.gentleAndRomantic,
    TText.hardAndPassionate,
    TText.annoyed,
    TText.sexualExploration,
    TText.playfulAndJoking,
    TText.flirty,
    TText.exicingAndCurious,
    TText.passionate,
    TText.soPassionate,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            child: 
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_left,
                color: TColors.greyPrimary,
                size: 26.0,
              )),
          ),
          centerTitle: true,
          title: const Text(
            TText.settingHeader,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 18.0,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Image.network(
                              TImage.profileLink,
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        TText.userName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.5),
                      ),
                      const Text(TText.userEmail),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: 120,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            color: TColors.secondary,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.chat_bubble_outline_outlined),
                                  Text(
                                    '${TText.messageNumber}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.insert_photo_outlined),
                                  Text(
                                    '${TText.pictureNumber}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            border: Border.all(color: TColors.primary),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            width: 180,
                            decoration: const BoxDecoration(
                              color: TColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.bolt_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  TText.upgradeToPremium,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: TColors.greyPrimary),
                        ),
                        child: const Center(
                          child: Text(
                            TText.editProfile,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: TColors.greyPrimary),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        TText.setYourFriend,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                     const  SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const FieldSelect(
                              imagePath: TImage.profileLink,
                              name: TText.shaedera,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                           const  FieldName(title: TText.genderPreference),
                           const  SizedBox(
                              height: 14,
                            ),
                            const GenderPreference(),
                           const SizedBox(
                              height: 18,
                            ),
                            const FieldName(title: TText.model),
                            const SizedBox(
                              height: 18,
                            ),
                            const FieldSelect(
                              imagePath: TImage.lip,
                              name: TText.speech,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                           const  FieldName(title: TText.rolePlay),
                           const  SizedBox(
                              height: 14,
                            ),
                            const FieldSelect(
                              imagePath: TImage.teacher,
                              name: TText.teacher,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                           const  FieldName(title: TText.petplay),
                            const SizedBox(
                              height: 14,
                            ),
                            const FieldSelect(
                              imagePath: TImage.cat,
                              name: TText.catRole,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            const FieldName(title: TText.cincelModes),
                            const SizedBox(
                              height: 14,
                            ),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0, 
                              children: List.generate(
                                textStream.length,
                                (index) => TextTile(text: textStream[index]),
                              ),
                            ),

                            const SizedBox(
                              height:100,
                            ),

                             const  Text(
                             TText.notificationSettings,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                           ),

                            const SizedBox(
                              height: 18,
                            ),
                            
                            const Column( 
                              children: [
                                 NotificationSettings(icon:  Icon(Icons.message_outlined), name: TText.messages),
                                 
                                  SizedBox(height: 24),

                                  NotificationSettings(icon:  Icon(Icons.insert_photo_outlined), name: TText.photos),

                                  SizedBox(height: 24),

                                   NotificationSettings(icon:  Icon(Icons.cake_outlined), name: TText.clothGift)

                                   
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                 const  SizedBox(height: 40),

                  const Signout(name: 'SignOut'),

                   const  SizedBox(height: 40),
                ],

              ),
            )));
  }
}
