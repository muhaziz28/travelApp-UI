import 'package:flutter/material.dart';
import 'package:travelapp/pages/main_page.dart';
import 'package:travelapp/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 68.0,
          decoration: BoxDecoration(color: kGreyColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 17.95,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_home.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Home',
                      style: yellowTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    ),
                  ],
                ),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_notif.png'),
                  ),
                ),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_menu.png'),
                  ),
                ),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_settings.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            MainPage(),
            buttomNav(),
          ],
        ),
      ),
    );
  }
}
