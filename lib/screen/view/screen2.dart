import 'package:course_flutter/screen/view/screen3.dart';
import 'package:flutter/material.dart';

import '../../core/ui/color.dart';

class HomePage2Screen extends StatefulWidget {
  const HomePage2Screen({super.key});

  @override
  State<HomePage2Screen> createState() => _HomePageScreenState();
}

bool isSelect = false;

class _HomePageScreenState extends State<HomePage2Screen> {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/images/high.jpg",
      "assets/images/low.jpg",
      "assets/images/eleven.jpg",
      "assets/images/six.jpg",
    ];

    List<String> name = [
      "High Protein",
      "Low Carb",
      "11,000 steps a day",
      "6,000 steps a day",
    ];

    List<String> details = [
      "The portion of total calories derived from protein is what defines a high-protein diet. In a typical diet 10%-15% of daily calories come from protein. In a high-protein diet, this number can be as high as 30%-50%",
      """what is low-carb foods?
      Low carb diet tips
      Low carb foods
      lean meats, such as sirloin, chicken breast, or pork.
      fish.
      eggs.
      leafy green vegetables.
      nuts and seeds, including nut butter.
      low carb fruits, such as apples, blueberries, and strawberries.
      unsweetened dairy products, including plain whole milk and plain Greek yogurt""",
      "Just 30 minutes every day can increase cardiovascular fitness, strengthen bones, reduce excess body fat, and boost muscle power and endurance. It can also reduce your risk of developing conditions such as heart disease, type 2 diabetes, osteoporosis and some cancers.",
      "Just 30 minutes every day can increase cardiovascular fitness, strengthen bones, reduce excess body fat, and boost muscle power and endurance. It can also reduce your risk of developing conditions such as heart disease, type 2 diabetes, osteoporosis and some cancers.",
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 11, 24, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(39, 47, 60, 1.0),
        title: const Text(
          "Plans",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: [
          OutlinedButton(
              style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      side: BorderSide(
                          color: Colors.blue, width: 2, strokeAlign: 2)))),
              onPressed: () {},
              child: const Text(
                "Go Premium",
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filter By:",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterChip(
                    showCheckmark: false,
                    backgroundColor: const Color.fromRGBO(3, 11, 24, 1.0),
                    padding: const EdgeInsets.all(8),
                    selectedColor: Colors.blue,
                    selectedShadowColor: AppColor.primaryColor,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: isSelect == true
                                ? AppColor.primaryColor
                                : Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60))),
                    disabledColor: Colors.transparent,
                    label: Text(
                      "Free",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelect == true ? Colors.black : Colors.grey),
                    ),
                    selected: isSelect,
                    onSelected: (selected) {
                      isSelect = selected;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    showCheckmark: false,
                    backgroundColor: const Color.fromRGBO(3, 11, 24, 1.0),
                    padding: const EdgeInsets.all(8),
                    selectedColor: Colors.blue,
                    selectedShadowColor: AppColor.primaryColor,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: isSelect == true
                                ? AppColor.primaryColor
                                : Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60))),
                    disabledColor: Colors.transparent,
                    label: Text(
                      "Meal Plan",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelect == true ? Colors.black : Colors.grey),
                    ),
                    selected: isSelect,
                    onSelected: (selected) {
                      isSelect = selected;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    showCheckmark: false,
                    backgroundColor: const Color.fromRGBO(3, 11, 24, 1.0),
                    padding: const EdgeInsets.all(8),
                    selectedColor: Colors.blue,
                    selectedShadowColor: AppColor.primaryColor,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: isSelect == true
                                ? AppColor.primaryColor
                                : Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60))),
                    disabledColor: Colors.transparent,
                    label: Text(
                      "Nutrition",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelect == true ? Colors.black : Colors.grey),
                    ),
                    selected: isSelect,
                    onSelected: (selected) {
                      isSelect = selected;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    showCheckmark: false,
                    backgroundColor: const Color.fromRGBO(3, 11, 24, 1.0),
                    padding: const EdgeInsets.all(8),
                    selectedColor: Colors.blue,
                    selectedShadowColor: AppColor.primaryColor,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: isSelect == true
                                ? AppColor.primaryColor
                                : Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60))),
                    disabledColor: Colors.transparent,
                    label: Text(
                      "Walking",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelect == true ? Colors.black : Colors.grey),
                    ),
                    selected: isSelect,
                    onSelected: (selected) {
                      isSelect = selected;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),
            const Text(
              "Available Plans",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomePage3Screen(name: name[index], image: image[index], details: details[index])),
                    );
                  },
                  child: Card(
                    color: const Color.fromRGBO(27, 30, 41, 1.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          image[index],
                          height: 150,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "28 days . Daily",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: image.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
