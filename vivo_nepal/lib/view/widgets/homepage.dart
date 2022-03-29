import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivo_nepal/view/widgets/product.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: Get.size.width,
            child: CarouselSlider(
              options: CarouselOptions(height: 400.0, autoPlay: true),
              items: [
                "https://media.istockphoto.com/photos/apple-computers-picture-id508077569?k=20&m=508077569&s=612x612&w=0&h=U4mTJnUzSurLWk5RptSwNcway2LFNd_vO1Ycs6diI-s=",
                "https://media.istockphoto.com/photos/office-concept-picture-id489430166?k=20&m=489430166&s=612x612&w=0&h=R-_3pvccBnLMNlfSABPxU0ibo9_Y0E74FTu1TQdbe58=",
                "https://media.istockphoto.com/photos/apple-macbook-retina-cover-on-a-desk-table-with-mouse-and-stationery-picture-id831566510?k=20&m=831566510&s=612x612&w=0&h=qySuZle-_gv6fH3YcvotRut1U7WLC5n74p5bZxq7BFU=",
                "https://media.istockphoto.com/photos/iphone-13-pro-max-in-silver-and-iphone-12-pro-max-picture-id1346420453?k=20&m=1346420453&s=612x612&w=0&h=fRW3ldgTupgESi3KNMs_SW8oCGVo0QPya3kQOV_yw_I=",
                "https://media.istockphoto.com/photos/apple-air-pods-pro-with-wireless-charging-case-picture-id1288542190?k=20&m=1288542190&s=612x612&w=0&h=RKGpeRmZJ6IHNZWfl4UhoJpfuEvYuSvAitZd0AhReQU="
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: Text(
              "NewYear's Offer",
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: const Text(
              "Get 10% off",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: Get.size.width,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductWidget(
                    image:
                        "https://www.apple.com/v/iphone-13-pro/f/images/overview/design/design_display_pro__d3dtminb414y_large_2x.png",
                    title: "iPhone13",
                    decription:
                        "With its redesigned lens and powerful autofocus system, the new Ultra Wide camera can focus at just 2 cm — making even the smallest details seem epic. Transform a leaf into abstract art. Capture a caterpillar’s fuzz. Magnify a dewdrop. The beauty of tiny awaits.",
                  ),
                  ProductWidget(
                    image:
                        "https://www.apple.com/v/macbook-pro-14-and-16/b/images/overview/macos/pro_apps_audio__fkgvbzvpt72i_large_2x.jpg",
                    title: "MackBookPro",
                    decription:
                        "The new MacBook Pro has been carefully designed with the environment in mind. The enclosure is now made with 100% recycled aluminum. And we use recycled rare earth elements in all the magnets in the product. MacBook Pro is free of numerous harmful substances and all the virgin wood fiber in our packaging comes from responsibly-managed forests.",
                  ),
                  ProductWidget(
                    image:
                        "https://www.apple.com/v/watch/shared/why-watch/h/images/overview/fitness/fitness_activity_rings__c50gfobdmjma_large_2x.jpg",
                    title: "Aapple Watch",
                    decription:
                        "Introducing the first fitness experience powered by Apple Watch. With 11 workout types from 5 to 45 minutes. New guided meditations. Personal metrics from your Apple Watch synced to your iPhone, iPad, and Apple TV. And new workouts every week, all set to music from your favorite artists. Get three months free when you buy an Apple Watch.2",
                  ),
                  ProductWidget(
                    image:
                        "https://media.istockphoto.com/photos/apple-air-pods-pro-with-wireless-charging-case-picture-id1288542190?k=20&m=1288542190&s=612x612&w=0&h=RKGpeRmZJ6IHNZWfl4UhoJpfuEvYuSvAitZd0AhReQU=",
                    title: "Airpods",
                    decription:
                        "With plenty of talk and listen time, voice-activated Siri access, and an available wireless charging case, AirPods deliver an incredible wireless headphone experience. Simply take them out and they’re ready to use with all your devices. Put them in your ears and they connect immediately, immersing you in rich, high-quality sound. Just like magic.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
