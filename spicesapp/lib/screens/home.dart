import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spicesapp/cards/productshow.dart';
import 'package:spicesapp/navigation.dart';
import 'package:spicesapp/screens/notification.dart';
import 'package:spicesapp/theme.dart';
import '../cards/cards.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: KWhiteColor,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                color: KPrimaryColor,
              ),
            );
          },
        ),
        title: Column(
          children: [
            Text(
              'Delivery to',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: KPrimaryColor.withOpacity(0.5),
              ),
            ),
            Text(
              'Chennai',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: KPrimaryColor,
              ),
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotifyScreen(),
                ),
              );
            },
            child: SvgPicture.asset(
              'assets/icons/notification.svg',
              color: KPrimaryColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bannerimg.jpg'),
                    fit: BoxFit.contain,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.overlay),
                  ),
                  color: KPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get Special Discount',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: KWhiteColor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Up to 86%',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: KWhiteColor,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Get Voucher',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: KPrimaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(top: 2, left: 5),
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: KPrimaryColor.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: KPrimaryColor.withOpacity(0.8),
                      height: 10,
                      width: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: KPrimaryColor.withOpacity(0.5)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Items',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductCard(),
                          ),
                        );
                      },
                      child: Cards(
                        image: 'assets/images/tomato.jpg',
                        price: '\u{20B9}${35}',
                        title: 'Country Tomato',
                        grm: '500g',
                        rprc: '\u{20B9}${30}',
                      ),
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/lays.jpg',
                      price: '\u{20B9}${50}',
                      title: 'Lays',
                      grm: '104g',
                      rprc: '\u{20B9}${40}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/oil.jpg',
                      price: '\u{20B9}${275}',
                      title: 'Olive Oil',
                      grm: '200L',
                      rprc: '\u{20B9}${170}',
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fruits',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Cards(
                      image: 'assets/images/fruits/apple.jpeg',
                      title: 'Fresh Apples',
                      price: '100',
                      grm: '1Kg',
                      rprc: '\u{20B9}${90}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/fruits/banana.jpeg',
                      title: 'Fresh Apples',
                      price: '100',
                      grm: '1Kg',
                      rprc: '\u{20B9}${90}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/fruits/grapes.jpg',
                      title: 'Fresh Apples',
                      price: '100',
                      grm: '1Kg',
                      rprc: '\u{20B9}${90}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/fruits/pomegranates.jpg',
                      title: 'Fresh Apples',
                      price: '100',
                      grm: '1Kg',
                      rprc: '\u{20B9}${90}',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meat',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: KPrimaryColor.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Cards(
                      image: 'assets/images/meat/chicken.jpeg',
                      title: 'Chicken',
                      price: '200',
                      grm: '1Kg',
                      rprc: '\u{20B9}${180}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/meat/goat.jpg',
                      title: 'Goat',
                      price: '200',
                      grm: '1Kg',
                      rprc: '\u{20B9}${180}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/meat/fish.jpg',
                      title: 'Fish',
                      price: '200',
                      grm: '1Kg',
                      rprc: '\u{20B9}${180}',
                    ),
                    SizedBox(width: 15),
                    Cards(
                      image: 'assets/images/meat/beef.jpg',
                      title: 'Beef',
                      price: '200',
                      grm: '1Kg',
                      rprc: '\u{20B9}${180}',
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
