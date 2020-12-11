import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String filterType = "today";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Color(0xfff96060),
                elevation: 0,
                title: Text(
                  "Work List",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.short_text,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                height: 70,
                color: Color(0xfff96060),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            changeFilter("today");
                          },
                          child: Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 4,
                          width: 120,
                          color: (filterType == "today")
                              ? Colors.white
                              : Colors.transparent,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            changeFilter("monthly");
                          },
                          child: Text(
                            "Monthly",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 4,
                          width: 120,
                          color: (filterType == "monthly")
                              ? Colors.white
                              : Colors.transparent,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  changeFilter(String filter) {
    setState(() {
      filterType = filter;
    });
  }
}
