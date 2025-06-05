import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade800,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FooterColumn(
                title: 'Shop',
                items: [
                  'All Products',
                  'Featured',
                  'New Arrivals',
                  'Sale Items',
                ],
              ),
              FooterColumn(
                title: 'About',
                items: [
                  'Our Story',
                  'Careers',
                  'Terms & Conditions',
                  'Privacy Policy',
                ],
              ),
              FooterColumn(
                title: 'Help',
                items: [
                  'Shipping',
                  'Returns',
                  'FAQ',
                  'Contact Us',
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(color: Colors.white54),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.copyright, color: Colors.white, size: 14),
              SizedBox(width: 5),
              Text(
                '2023 Shopping App. All rights reserved',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.link, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.link, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.linked_camera, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterColumn({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              item,
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          )).toList(),
        ),
      ],
    );
  }
}