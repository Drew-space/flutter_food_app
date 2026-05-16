// Expanded(
              //   child: GridView.builder(
              //     itemCount: foods.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 15,
              //       mainAxisSpacing: 15,
              //       childAspectRatio: 0.75,
              //     ),
              //     itemBuilder: (context, index) {
              //       final food = foods[index];

              //       return Material(
              //         elevation: 3,
              //         borderRadius: BorderRadius.circular(20),
              //         child: Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(20),
              //           ),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               ClipRRect(
              //                 borderRadius: BorderRadius.circular(15),
              //                 child: Image.asset(
              //                   food["image"] ?? "",
              //                   height: 130,
              //                   width: double.infinity,
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //               SizedBox(height: 10),

              //               Text(
              //                 food["name"] ?? "",
              //                 style: TextStyle(
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               Text(
              //                 food["description"] ?? "",
              //                 style: TextStyle(
              //                   fontSize: 10, // was 18, too large
              //                   color: Colors.grey,
              //                 ),
              //                 maxLines: 1,
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //               SizedBox(height: 10),

              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text(
              //                     food["price"]!,
              //                     style: TextStyle(
              //                       fontSize: 16,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   Container(
              //                     padding: EdgeInsets.all(6),
              //                     decoration: BoxDecoration(
              //                       color: Color(0xffff734c),
              //                       borderRadius: BorderRadius.circular(10),
              //                     ),
              //                     child: Icon(Icons.add, color: Colors.white),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),