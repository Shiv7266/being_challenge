import 'package:being_challenge/home/widgets/customText.dart';
import 'package:being_challenge/utils/sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/rowTile.dart';
import 'widgets/titleWidget.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({super.key});

  @override
  State<OverViewPage> createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const MiniTherapySection(),
        //********************************************** */

        const SocialProofSection(),
        /************************************ */
        vs40,

        const IssueTagsSection(),

        /************************************ */
        vs40,

        const PsychoEducationSection(),
        //*********************************** */
        vs40,

        const ObjectivesSection(),

//*********************************** */
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Divider(
            color: Color.fromRGBO(255, 255, 255, 0.3),
          ),
        ),
        //*********************************** */

        const RelatedTherapySection(),
        vs20
      ],
    );
  }
}

class RelatedTherapySection extends StatelessWidget {
  const RelatedTherapySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CustomText(
                title: 'You may also like',
                color: Color.fromRGBO(195, 231, 29, 1),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              vs10,
              Expanded(
                child: Container(
                  height: 1,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromRGBO(195, 231, 29, 1),
                    Color.fromRGBO(195, 231, 29, 0.25),
                    Color.fromRGBO(195, 231, 29, 0.1),
                  ])),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Based on this discomfort',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "ClashGrotesk",
                  fontSize: 22,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              height: 460,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [const TherapyCard(), const TherapyCard()],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ObjectivesSection extends StatelessWidget {
  const ObjectivesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Objectives',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "ClashGrotesk",
                fontSize: 18,
                letterSpacing: 0.2,
                fontWeight: FontWeight.w500),
          ),
          vs8,
          const RowTile(title: 'Explore reasons for lack of confidence.'),
          const RowTile(
              title: 'Understand how confidence impacts work/school.'),
          const RowTile(title: 'Learn how to build self-confidence'),
        ],
      ),
    );
  }
}

class PsychoEducationSection extends StatelessWidget {
  const PsychoEducationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(166, 184, 229, 0.2),
              Color.fromRGBO(166, 184, 229, 0.3),
              Color.fromRGBO(166, 184, 229, 0.2),
            ]),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 6),
                  blurRadius: 16,
                  color: Color.fromRGBO(0, 0, 0, 0.6))
            ],
            borderRadius: BorderRadius.circular(32),
            border:
                Border.all(color: const Color.fromRGBO(255, 255, 255, 0.15))),
        child: Column(
          children: [
            ExpansionTile(
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              title: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, right: 17, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          title: 'PSYCHO-EDUCATION',
                          color: Color.fromRGBO(195, 231, 29, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                        vs8,
                        const CustomText(
                          title:
                              'Write what a world without your partner feels like? What is the color, shape, and smell of this feeling of loss? What would you like to be the color of this feeling of loss?',
                          color: Color.fromRGBO(179, 179, 179, 1),
                          fontSize: 14,
                        ),
                        vs20,
                        const CustomText(
                          title: 'Journal prompt by PSY, your mental health AI',
                          color: Color.fromRGBO(179, 179, 179, 1),
                          fontSize: 11,
                        ),
                        vs12,
                      ],
                    ),
                  ),
                ],
              ),
              children: const [
                Padding(
                  padding:
                      EdgeInsets.only(left: 32, right: 17, top: 20, bottom: 20),
                  child: CustomText(
                    title:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    color: Color.fromRGBO(179, 179, 179, 1),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Divider(color: Color.fromRGBO(255, 255, 255, 0.15)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CustomText(
                          title: 'written by PSY, your mental health AI',
                          color: Color.fromRGBO(179, 179, 179, 1),
                          fontSize: 12)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IssueTagsSection extends StatelessWidget {
  const IssueTagsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const IssueTag(
              title1: 'CORE',
              title2: 'avoidant attachment',
              textcolor1: Color.fromRGBO(78, 114, 203, 1),
              containerColor: Color.fromRGBO(34, 79, 191, 0.1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset('assets/svg/issue_tag.svg'),
            ),
            const IssueTag(
              title1: 'ISSUE',
              title2: 'childhood experiences',
              textcolor1: Color.fromRGBO(229, 110, 69, 1),
              containerColor: Color.fromRGBO(229, 110, 69, 0.1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset('assets/svg/issue_tag.svg'),
            ),
            const IssueTag(
              title1: 'CORE',
              title2: 'avoidant attachment',
              textcolor1: Color.fromRGBO(78, 114, 203, 1),
              containerColor: Color.fromRGBO(34, 79, 191, 0.1),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialProofSection extends StatelessWidget {
  const SocialProofSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/Pattern.png"))),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: const Color.fromRGBO(179, 179, 179, 0.1),
              )),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomText(
                        title: '23,500',
                        color: Color.fromRGBO(230, 230, 230, 1),
                        fontSize: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/svg/Group.svg"),
                        hs6,
                        const CustomText(
                            title: 'beings',
                            color: Color.fromRGBO(179, 179, 179, 1),
                            fontSize: 13)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: const Color.fromRGBO(179, 179, 179, 0.1),
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CustomText(
                      title: '6',
                      color: Color.fromRGBO(230, 230, 230, 1),
                      fontSize: 24),
                  CustomText(
                      title: 'related Ds & MTs',
                      color: Color.fromRGBO(179, 179, 179, 1),
                      fontSize: 13),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class MiniTherapySection extends StatelessWidget {
  const MiniTherapySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 625,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/image2.png"))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 27),
        child: Column(
          children: [
            const TitleWidget(
              title: 'Try our mini-therapy on this D',
              svg: 'play',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(0, 0, 0, 0.5),
                      Color.fromRGBO(219, 240, 119, 0.01),
                    ]),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 6),
                          blurRadius: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6))
                    ],
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 0.15))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Partner Image.png",
                            height: 123,
                          ),
                          hs16,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                CustomText(
                                  title: 'MINI-THERAPY BY',
                                  color: Color.fromRGBO(195, 231, 29, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                CustomText(
                                  title: 'Japneet Anand',
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 18,
                                ),
                                CustomText(
                                  title: '2 years of experience',
                                  color: Color.fromRGBO(179, 179, 179, 1),
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                CustomText(
                                  title:
                                      'Japneet is a counselling psychologist. Psychology for...',
                                  color: Color.fromRGBO(179, 179, 179, 1),
                                  fontSize: 11,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(color: Color.fromRGBO(255, 255, 255, 0.15)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/Group.svg"),
                              hs8,
                              const CustomText(
                                  title:
                                      '23 beings have done this mini-therapy',
                                  color: Color.fromRGBO(179, 179, 179, 1),
                                  fontSize: 12)
                            ],
                          ),
                          SvgPicture.asset("assets/svg/arrow.svg"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: TitleWidget(
                  title: 'Try a journaling exercise by PSY', svg: 'Vector'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(0, 0, 0, 0.5),
                      Color.fromRGBO(219, 240, 119, 0.01),
                    ]),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 6),
                          blurRadius: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6))
                    ],
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 0.15))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            title: 'JOURNAL',
                            color: Color.fromRGBO(195, 231, 29, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          vs8,
                          const CustomText(
                            title:
                                'Write what a world without your partner feels like? What is the color, shape, and smell of this feeling of loss? What would you like to be the color of this feeling of loss?',
                            color: Color.fromRGBO(179, 179, 179, 1),
                            fontSize: 14,
                          ),
                          vs20,
                          const CustomText(
                            title:
                                'Journal prompt by PSY, your mental health AI',
                            color: Color.fromRGBO(179, 179, 179, 1),
                            fontSize: 11,
                          ),
                          vs12,
                        ],
                      ),
                    ),
                    const Divider(color: Color.fromRGBO(255, 255, 255, 0.15)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/Group.svg"),
                              hs8,
                              const CustomText(
                                  title:
                                      '23 beings have done this mini-therapy',
                                  color: Color.fromRGBO(179, 179, 179, 1),
                                  fontSize: 12)
                            ],
                          ),
                          SvgPicture.asset("assets/svg/arrow.svg"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/svg/refresh.svg"),
                hs8,
                const CustomText(
                    title: 'Give me another journal prompt',
                    color: Color.fromRGBO(179, 179, 179, 1),
                    fontSize: 12)
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

class TherapyCard extends StatelessWidget {
  const TherapyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.07),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  offset: Offset(0, 6),
                  blurRadius: 16)
            ],
            borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/image3.png",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(195, 231, 29, 0.08)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                        child: CustomText(
                          title: '5 min',
                          color: Color.fromRGBO(195, 231, 29, 1),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 1,
                          height: 17,
                          color: const Color.fromRGBO(255, 255, 255, 0.3),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(240, 141, 50, 0.1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svg/Star.svg',
                                color: const Color.fromRGBO(240, 141, 50, 1)),
                            const SizedBox(width: 6),
                            const CustomText(
                              title: 'sub issue tag',
                              color: Color.fromRGBO(179, 179, 179, 1),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: SizedBox(
                  width: 250,
                  child: CustomText(
                      title:
                          "I feel I can't openly talk about the problems I face because of the taboo around menstrual health...",
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: CustomText(
                    title: "by Alicia Boone ",
                    color: Color.fromRGBO(128, 128, 128, 1),
                    fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IssueTag extends StatelessWidget {
  final String title1;
  final String title2;
  final Color textcolor1;

  final Color containerColor;

  const IssueTag(
      {super.key,
      required this.title1,
      required this.title2,
      required this.textcolor1,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(230, 230, 230, 0.1))),
      child: Row(children: [
        Container(
          color: containerColor,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: CustomText(
              title: title1,
              color: textcolor1,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: CustomText(
            title: title2,
            color: const Color.fromRGBO(230, 230, 230, 1),
            fontSize: 12,
          ),
        ),
      ]),
    );
  }
}
