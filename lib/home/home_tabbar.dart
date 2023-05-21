import 'package:flutter/material.dart';
import 'package:being_challenge/home/overview.dart';


class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 3,
          child: TabBar(
            isScrollable: true,
            labelColor: const Color.fromRGBO(195, 231, 29, 1),
            unselectedLabelColor: const Color.fromRGBO(179, 179, 179, 1),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Color.fromRGBO(195, 231, 29, 1),
                width: 2.0,
              ),
            ),
            labelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            tabs: const [
              Tab(
                child: Text(
                  'Overview',
                ),
              ),
              Tab(
                text: 'Journey',
              ),
              Tab(
                text: 'You may also like',
              ),
            ],
            onTap: (idx) {
              setState(() {
                currentIndex = idx;
              });
            },
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 255, 255, 0.5),
        ),
        Expanded(child: Container(child: getViewForIndex(currentIndex))),
      ],
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const OverViewPage();
      case 1:
        return Container();
      case 2:
        return Container();

      default:
        return Container();
    }
  }
}
