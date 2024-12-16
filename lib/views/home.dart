import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_finder/controllers/lawyer_controller.dart';
import 'package:lawyer_finder/views/components/topComponet.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Initialize the controller
  final LawyerController lawyerController = Get.put(LawyerController());

  @override
  Widget build(BuildContext context) {
    // Fetch lawyers when the widget is first built
    lawyerController.fetchLawyers();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: Drawer(child: ListView()),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: const Text("LawMate"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: const Icon(
            Icons.menu_sharp,
            size: 40,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20,
              child: Text("S"),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Component(),
            ),
            const SizedBox(height: 20),
            // Top Advocates section
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Top Advocates",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    // Using GetX for dynamic data binding
                    Container(
                      height: 240,
                      child: Obx(() {
                        // GetX will rebuild the widget when topLawyers list changes
                        final topLawyers = lawyerController.topLawyers;

                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: topLawyers.length,
                          itemBuilder: (context, index) {
                            final advocate = topLawyers[index];
                            return Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Image
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundImage:
                                        NetworkImage(advocate.photoUrl),
                                  ),
                                  const SizedBox(height: 10),
                                  // Name
                                  Text(
                                    advocate.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  // Contact Button
                                  ElevatedButton(
                                    onPressed: () {
                                      // Handle contact button action here
                                      print('Contact ${advocate.name}');
                                    },
                                    child: Text("Contact"),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Find Advocate',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/news.png',
                        height: 60,
                      ),
                      Text(
                        "News:Article,Judgement Order",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Current Affairs News of India Courts",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Icon(Icons.arrow_forward_ios_outlined))),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
