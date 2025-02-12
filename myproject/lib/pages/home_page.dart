import 'package:flutter/material.dart';

import '../util/how_do_you_feel_section.dart';
import '../util/custom_search_bar.dart';
import '../util/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800], // Set the background color
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            //greeting row
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                spacing: 20,
                children: [
                  Header(),
                  //search bar
                  CustomSearchBar(),
                  SizedBox(height: 5),
                  // how do you feel
                  HowDoYouFeelSection(),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // exercises  heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 25),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ListView of exercises
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.favorite),
                          title: Text('Speaking Skills'),
                          subtitle: Text('15 Exercises'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
