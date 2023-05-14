import 'package:flutter/material.dart';

class RankSlot extends StatelessWidget {
  const RankSlot({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.topic,
    required this.mentionedCount,
    required this.rank,
  });

  final double screenWidth;
  final double screenHeight;
  // final Map<String, dynamic> topic;
  final String topic;
  final int mentionedCount;
  final int rank;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.05,
        bottom: screenHeight * 0.01,
      ),
      child: Container(
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.83),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            right: screenWidth * 0.05,
            top: screenHeight * 0.005,
            bottom: screenHeight * 0.005,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.translate(
                offset: Offset(-screenWidth * 0.055, 0),
                child: Image.asset(
                  rank == 1
                      ? 'assets/images/medal1.png'
                      : rank == 2
                          ? 'assets/images/medal2.png'
                          : 'assets/images/medal3.png',
                  height: screenWidth * 0.125,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text("imoji"),
                      SizedBox(
                        width: screenWidth * 0.01,
                      ),
                      Text(
                        // topic['title'],
                        topic,
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.0075,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: screenWidth * 0.08,
                        width: screenWidth * 0.08,
                      ),
                      SizedBox(
                        width: screenWidth * 0.01,
                      ),
                      Text(
                        // topic['mentioned_count'].toString(),
                        mentionedCount.toString(),
                        style: TextStyle(
                          fontSize: screenWidth * 0.055,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
