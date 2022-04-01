import 'package:flutter/material.dart';
import 'package:travelapp/pages/detail_page.dart';
import 'package:travelapp/theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(children: [
                // image
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/user.png'),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                // text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo Haikal,',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Good morning',
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ]),
            ),
            // search
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_search.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget vacations() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let’s enjoy your \nVacation',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Column(
                      children: [
                        Text(
                          'All',
                          style: yellowTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        ),
                        Container(
                          width: 12,
                          height: 2,
                          color: kPrimaryColor,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text(
                      'Asia',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text(
                      'America',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text(
                      'Africe',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text(
                      'Europe',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text(
                      'North',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget popularCountries() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 35,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Countries',
                  style: whiteTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold),
                ),
                Text(
                  'See All',
                  style:
                      whiteTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: Container(
                      width: 120,
                      height: 170,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(defaultBorder),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/bali.png'),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 64,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(defaultBorder),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon_star.png'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11),
                            child: Center(
                                child: Text(
                              'Bali',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: medium,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 170,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(defaultBorder),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/paris.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 11),
                          child: Center(
                              child: Text(
                            'Paris',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 170,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(defaultBorder),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(defaultBorder),
                                    topRight: Radius.circular(defaultBorder)),
                                image: DecorationImage(
                                    image: AssetImage('assets/england.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 11),
                          child: Center(
                              child: Text(
                            'England',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget ongoingEvent() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'On Going Event',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 230,
                    height: 205,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultBorder),
                    ),
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/brazil.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rio Carnival, Rio\nde Janiro',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icon_mark.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Brazil',
                                    style: whiteTextStyle.copyWith(
                                        fontSize: 14, fontWeight: semiBold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 205,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultBorder),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 230,
                          height: 205,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/japan.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(defaultBorder),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sapporo Snow\nFestival',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icon_mark.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Japan',
                                    style: whiteTextStyle.copyWith(
                                        fontSize: 14, fontWeight: semiBold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        vacations(),
        popularCountries(),
        ongoingEvent(),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
