import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1B2A),
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.star, color: Colors.white),
            SizedBox(width: 8),
            Text("Wanderlust"),
          ],
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 10),
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, Nagendra",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text("What are u planning for today?",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("N"),
                )
              ],
            ),

            SizedBox(height: 20),
            sectionTitle("Categories"),
            SizedBox(height: 10),
            Row(
              children: [
                categoryChip("Flights", Icons.flight, true),
                categoryChip("Hotels", Icons.hotel, false),
                categoryChip("Beach", Icons.beach_access, false),
              ],
            ),
            SizedBox(height: 20),
            sectionTitle("Top Destinations trending this summer"),
            SizedBox(height: 10),

            Row(
              children: [
                destinationCard("Gokarna", "Om-Beach", Colors.green),
                SizedBox(width: 12),
                destinationCard("Udupi", "Malpe Beach", Colors.purple),
              ],
            ),
            SizedBox(height: 20),
            sectionTitle("Popular Packages"),
            SizedBox(height: 10),

            packageCard("Beach Vibezo", "Uttara Kannada · 5 days", "₹12,000", "4.8"),
            packageCard("Chillax", "Udupi · 2 days", "₹10,000", "4.9"),
          ],
        ),
      ),
    );
  }
  Widget sectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text("See all", style: TextStyle(color: Colors.blue)),
      ],
    );
  }
  Widget categoryChip(String text, IconData icon, bool selected) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16,
              color: selected ? Colors.white : Colors.black),
          SizedBox(width: 5),
          Text(text,
              style: TextStyle(
                  color: selected ? Colors.white : Colors.black)),
        ],
      ),
    );
  }
  Widget destinationCard(String title, String location, Color color) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, size: 14, color: Colors.orange),
                  Text(" 4.9"),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text(location,
                    style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget packageCard(String title, String subtitle, String price, String rating) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [

          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.orange),
                    Text(" $rating"),
                  ],
                )
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue)),
              Text("per person", style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}