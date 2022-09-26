import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:subspace_assignment/explore/components/custom_header_title.dart';
import 'package:subspace_assignment/explore/components/lists.dart';
import 'package:subspace_assignment/explore/components/public_group.dart';
import 'package:subspace_assignment/explore/components/see_more_button.dart';
import 'package:subspace_assignment/explore/components/sliding_images.dart';
import 'package:subspace_assignment/explore/components/subscription_cards.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              SeeMoreButton(
                icon: FontAwesomeIcons.trophy,
                onTapping: () {
                  //functionality.
                },
              ),
              const SizedBox(
                width: 15,
              ),
              SeeMoreButton(
                icon: FontAwesomeIcons.cartShopping,
                onTapping: () {
                  //functionality of cart.
                },
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
        child: ListView(children: [
          
          //Play and Earn Button.
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF333F4D), width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              gradient: const LinearGradient(
                  colors: [Color(0xFF000d1b), Color(0xFF00152a)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: ListTile(
              leading: Icon(
                FontAwesomeIcons.coins,
                color: Colors.amber.shade300,
              ),
              title: const Text(
                'Play and Earn coins',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              trailing: const Icon(
                FontAwesomeIcons.anglesRight,
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),


          // Scrolling Images.
         const  MyCanvas(
              canvasImg1Asset: 'assets/canvas1.jpg',
              canvasImg2Asset: 'assets/canvas2.jpg',
              canvasImg3Asset: 'assets/canvas3.jpg'),
         const  SizedBox(
            height: 5,
          ),

          //Title of all subscriptions.
        const CustomHeader(
            title: 'All Subscriptions'
          ),

          //Scrolling view of all the subscriptions availaible.
          SizedBox(
            height: 250,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: userSubscriptions.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 0,
                crossAxisSpacing: 4,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 2.5),
                crossAxisCount: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return SubscriptionCards(
                  assetName: userSubscriptions[index].displayImage,
                  getDiscount: userSubscriptions[index].discount,
                  getLogo: userSubscriptions[index].logo,
                  getTitle: userSubscriptions[index].title,
                  getPrice: userSubscriptions[index].price,
                );
              },
            ),
          ),
          
          //Title of Public Groups.
          const CustomHeader(
            title: 'Public Groups'
          ),
          

          //Public Groups List.
          const PublicGroupsLists(),
        ]),
      ),
    );
  }
}











