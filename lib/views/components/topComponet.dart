import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Component extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'title': 'Legal Advice', 'route': '/legalAdvice'},
    {'title': 'Question Answers', 'route': '/qa'},
    {'title': 'RTO Rules', 'route': '/qa'},
      {'title': 'Bare Acts', 'route': '/qa'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics:
          NeverScrollableScrollPhysics(), // Prevent nested scrolling issues
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        childAspectRatio: 4, // Medium height and width ratio
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, items[index]['route']);
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      items[index]['title'],
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
