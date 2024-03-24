import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 11, 24, 1.0),
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(39, 47, 60, 1.0),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_month,
                color: Colors.white,
              )),
        ],
        titleSpacing: 20,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButton(
            dropdownColor: const Color.fromRGBO(39, 47, 60, 1.0),
            items: const [
              DropdownMenuItem(
                  child: Text(
                "Today",
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
            ],
            onChanged: (value) {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  CupertinoIcons.rectangle_split_3x3,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Calories Remining",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "2300",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Calories Consumed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ...List.generate(
                4,
                (index) => Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const ListTile(
                        tileColor: Color.fromRGBO(55, 59, 71, 1.0),
                        leading: Icon(
                          CupertinoIcons.sun_dust_fill,
                          color: Colors.yellow,
                        ),
                        title: Text(
                          "BreakFast",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(CupertinoIcons.plus,
                            color: Colors.green, size: 30),
                      ),
                    )),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                tileColor: const Color.fromRGBO(27, 33, 47, 1.0),
                leading: const Icon(
                  Icons.directions_run_outlined,
                  color: Color.fromRGBO(105, 111, 125, 1.0),
                ),
                title: Text(
                  "Add Exercise/Sleep",
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
              ),
            ),
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summary",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Calories Remining",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "2300",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Calories Consumed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "0% of RDI",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "2300",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  CupertinoIcons.rectangle_split_3x3,
                  color: Colors.white,
                  size: 150,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      CupertinoIcons.chart_bar_alt_fill,
                      color: Colors.green,
                      size: 50,
                    ),
                    Text(
                      "Today",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.image_outlined,
                      color: Colors.green,
                      size: 50,
                    ),
                    Text(
                      "Album",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.map,
                      color: Colors.green,
                      size: 50,
                    ),
                    Text(
                      "Meal Plans",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
