import 'package:flutter/material.dart';


class SubscriptionCards extends StatelessWidget {
  const SubscriptionCards({
    Key? key,
    required this.assetName,
    required this.getDiscount,
    required this.getTitle,
    required this.getPrice,
    required this.getLogo,
  }) : super(key: key);

  final String assetName;
  final String getDiscount;
  final String getTitle;
  final String getPrice;
  final String getLogo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
          shape: const RoundedRectangleBorder(
              side: BorderSide(width: 0.1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          elevation: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(children: [
              Container(
                
                width: 400,
                height: 400,
                child: Image.asset(
                  
                  assetName,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
  height: 90,
  width: double.infinity,
  foregroundDecoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [
          Colors.transparent,
          Colors.black38,
              ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.9],
    ),
  ),
),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(5),
                    ),
                    color: Colors.grey.shade600),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'UPTO',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 9,
                        ),
                      ),
                      Text(
                        '$getDiscount%',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        'OFF',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        getTitle,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Starting at $getPrice',
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        getLogo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
