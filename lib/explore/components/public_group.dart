import 'package:flutter/material.dart';
import 'package:subspace_assignment/explore/components/lists.dart';

class PublicGroupsLists extends StatelessWidget {
  const PublicGroupsLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: publicGroups.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 4, childAspectRatio: 4, crossAxisCount: 1,
          
          ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Card(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade800),
                child: Row(children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(publicGroups[index].logo,width: 80,height: 80,fit: BoxFit.cover,)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Colors.grey.shade600),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Groups Count',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 9,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(publicGroups[index].title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),softWrap: false,),
                         const SizedBox(height: 2,),
                         const Text('by Author Name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 10),softWrap: false,),
                         const SizedBox(height: 2,),
                          const Text('No. of friends sharing?',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 9),softWrap: false,),
           
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('${publicGroups[index].price} / User / ${publicGroups[index].isMonth ? 'Month' : 'Year'}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w100, fontSize: 10),softWrap: false,),
                          const SizedBox(height: 2,),
                          ElevatedButton(onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.indigo)
                          ),
                           child: const Text('Join'))
                        ],
                      ),
                    ),
                  ),
                ]),
                ),
          ),
        );
      },
    );
  }
}