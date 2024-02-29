import 'package:flutter/material.dart';
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable_text/expandable_text.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: 335,
                height: 340,
                margin: EdgeInsets.all(20),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                    Image.asset('assets/Rectangle 990.png', fit: BoxFit.cover),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                ),
                child: Icon(Icons.chevron_left,
                color: Color.fromRGBO(184, 184, 184, 1),
                size: 30,),
              ),
              Container(
                width: 44,
                height: 44,
                margin: EdgeInsets.only(left: 297, top: 341),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white
                ),
                child: Icon(Icons.favorite,
                color: Color.fromRGBO(236, 86, 85, 1),
                size: 25,),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Coeurdes Alpes',
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Text(
                      'Show map',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600]),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber[400],
                    size: 16,
                  ),
                  Text(
                    ' 4.5 (355 Reviews)',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  firstChild: Text(
                    'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, biking, shopping, dining, and culture-ing—are as vast as the surrounding forests. And then there are the mountains—all four of them.',
                    maxLines: isExpanded ? null : 4,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                  secondChild: Text(
                    'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, biking, shopping, dining, and culture-ing—are as vast as the surrounding forests. And then there are the mountains—all four of them.',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        isExpanded ? 'Read less' : 'Read more',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600],
                        ),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                    ),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Facilities',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 77,
                        height: 74,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/wifi.png',
                                width: 32,
                                height: 32,
                              ),
                              Text(
                                '1 Heater',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(184, 184, 184, 1),
                                    fontSize: 8),
                              )
                            ]),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(23, 11, 242, 0.05),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      Container(
                        width: 72,
                        height: 74,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/food.png',
                                width: 32,
                                height: 32,
                              ),
                              Text(
                                'Dinner',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(184, 184, 184, 1),
                                    fontSize: 8),
                              )
                            ]),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(23, 11, 242, 0.05),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      Container(
                        width: 72,
                        height: 74,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/bath tub.png',
                                width: 32,
                                height: 32,
                              ),
                              Text(
                                '1 Tub',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(184, 184, 184, 1),
                                    fontSize: 8),
                              )
                            ]),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(23, 11, 242, 0.05),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      Container(
                        width: 72,
                        height: 74,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/Frame.png',
                                width: 32,
                                height: 32,
                              ),
                              Text(
                                'Pool',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(184, 184, 184, 1),
                                    fontSize: 8),
                              )
                            ]),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(23, 11, 242, 0.05),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price',
                          style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5,),
                          Text('\$199',
                          style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromRGBO(45, 215, 164, 1)),
                          ),
                        ],
                      ),),
                      Container(
                        width: 223,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(25, 110, 238, 1),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(25, 110, 238, 0.5),
                              offset: const Offset(-2.0, 2.0),
                              blurRadius: 5.0,
                              spreadRadius: 2.0
                            )
                          ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Book Now',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, 
                              fontSize: 16,
                              color: Colors.white
                              ),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              size: 25,
                              color: Colors.white,
                            ),
                            ],
                        )),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
              ],
            ),
          )
        ],
      )),
    );
  }
}
