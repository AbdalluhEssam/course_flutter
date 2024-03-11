import 'package:cached_network_image/cached_network_image.dart';
import 'package:course_flutter/core/ui/color.dart';
import 'package:course_flutter/screen/widget/auth/cutom_textFromField.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "https://insights.workwave.com/wp-content/uploads/2019/07/iStock-906777508-1024x683.jpg",
      "https://5.imimg.com/data5/BI/QL/QW/SELLER-8763192/house-keeping-services-500x500.jpg",
      "https://www.signalsaz.com/wp-content/uploads/2022/09/cleaning-service-housekeeping.jpg",

    ];
    List<String> imageCat = [
      "https://cdn-icons-png.flaticon.com/512/994/994941.png",
      "https://cdn-icons-png.flaticon.com/512/3021/3021816.png",
      "https://cdn-icons-png.freepik.com/512/4221/4221769.png",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
                child: CustomTextFormField(
              hintText: "Search",
              icon: Icons.search,
              height: 45,
            )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ),
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(29, 143, 242, 0.1),
          Color.fromRGBO(255, 255, 255, 1),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: CarouselSlider(
                        items: [
                          ...List.generate(
                            image.length,
                            (index) => CachedNetworkImage(
                              imageUrl: image[index],
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                        options: CarouselOptions(
                          height: 250,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.linear,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          onPageChanged: (index, reason) {},
                          scrollDirection: Axis.horizontal,
                        ))),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        image.length,
                        (index) => Container(
                              height: 8,
                              width: 8,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                            ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: CachedNetworkImage(
                                    imageUrl: imageCat[index],
                                    fit: BoxFit.cover),
                              ),
                              const Text("PC")
                            ],
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: imageCat.length),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Offer",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CachedNetworkImage(
                              imageUrl:
                                  "https://cdn-icons-png.flaticon.com/512/8634/8634252.png",
                              fit: BoxFit.cover),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text("House Cleaning",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon(Icons.shopping_cart_checkout)),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text("550 EG"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    itemCount: 2,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 0.57),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
