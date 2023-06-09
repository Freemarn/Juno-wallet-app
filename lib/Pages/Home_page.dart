// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:juno_wallet_app/Pages/utility/My_button.dart';
import 'package:juno_wallet_app/Pages/utility/list_tile.dart';
import 'package:juno_wallet_app/Pages/utility/my_card.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //PageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink[300],
          child: const Icon(
            Icons.credit_card,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.pink[200],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            //AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),

                  //plus Icons
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),

            //Cards
            SizedBox(
              height: 200,
              child: Container(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5257.20,
                      cardNumber: 98734623,
                      expiryMonth: 18,
                      expiryYear: 22,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 9823.17,
                      cardNumber: 12345678,
                      expiryMonth: 13,
                      expiryYear: 23,
                      color: Colors.cyan[700],
                    ),
                    MyCard(
                      balance: 3546.12,
                      cardNumber: 43213456,
                      expiryMonth: 24,
                      expiryYear: 27,
                      color: Colors.green[300],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade700,
              ),
            ),

            SizedBox(height: 20),

            // 3 buttons- send + pay + bill
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Send Button
                  MyButton(
                    iconImagePath: 'lib/Icons/forward.png',
                    Buttonname: 'Send',
                  ),

                  //Payment Button
                  MyButton(
                    iconImagePath: 'lib/Icons/credit-card.png',
                    Buttonname: 'Pay',
                  ),

                  //Bills Button
                  MyButton(
                    iconImagePath: 'lib/Icons/invoice.png',
                    Buttonname: 'Bills',
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: 'lib/Icons/statistic.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Pay Stats income',
                  ),
                  MyListTile(
                    iconImagePath: 'lib/Icons/list.png',
                    tileTitle: 'Transactions',
                    tileSubTitle: 'Document Approval',
                  ),
                ],
              ),
            )

            //column stats + transactions
          ],
        ),
      ),
    );
  }
}
