import 'package:flutter/material.dart';
import 'package:practice/moduls/hadeth/hadeth_view.dart';
import 'package:practice/moduls/quran/quran_view.dart';
import 'package:practice/moduls/radio/radio_view.dart';
import 'package:practice/moduls/settinds/settings_view.dart';
import 'package:practice/moduls/tasbeh/tasbeh_view.dart';

class Home_layout extends StatefulWidget {
  static const String routeName = "Home_layout";

  @override
  State<Home_layout> createState() => _Home_layoutState();
}

class _Home_layoutState extends State<Home_layout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioViwe(),
    SettingsView(),
  ];

  Homelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/background_light.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text("اسلامي")),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/quran_icon,png"),
              ),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hadeth_icon,png"),
              ),
              label: "Hadeth",
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha_icon,png"),
                ),
                label: "Tasbeh",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio_icon,png"),
                ),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/settings_icon,png"),
                ),
                label: "settings",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
