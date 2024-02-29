import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, biking, shopping, dining, and culture-ing—are as vast as the surrounding forests. And then there are the mountains—all four of them.',
          maxLines: isExpanded ? null : 4,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                isExpanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.blue,
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Read less' : 'Read more',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Expandable Text Example'),
      ),
      body: Center(
        child: ExpandableTextWidget(),
      ),
    ),
  ));
}
