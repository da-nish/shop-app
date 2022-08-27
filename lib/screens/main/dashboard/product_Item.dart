// import 'package:food_app/models/item_model.dart';
// import 'package:food_app/screens/home/home_controller.dart';
// import 'package:food_app/theme/app_decoration.dart';
// import 'package:food_app/theme/app_text_style.dart';
// import 'package:food_app/utils/string_extension.dart';
// import 'package:flutter/material.dart';
// import 'package:food_app/widgets/counter/counter.dart';
// import 'package:food_app/widgets/image_card/image_card.dart';

// class HomeProductItem extends StatefulWidget {
//   final ItemModel item;
//   final HomeController controller;
//   HomeProductItem(this.item, this.controller);

//   @override
//   State<HomeProductItem> createState() => _HomeProductItemState();
// }

// class _HomeProductItemState extends State<HomeProductItem> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
//       decoration: AppBoxDecoration.borderBottom(),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ImageCard(widget.item.image),
//           SizedBox(width: 8),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 widget.item.name,
//                 style: AppTextStyle.h3Bold(),
//               ),
//               SizedBox(width: 10),
//               SizedBox(width: 10),
//               Text(
//                 widget.item.price.toString().rupee(),
//                 style: AppTextStyle.h5Bold(),
//               ),
//             ],
//           ),
//           Expanded(child: Container()),
//           SizedBox(width: 10),
//           Container(
//             width: 100,
//             child: Counter(
//                 item: widget.item,
//                 onDecrement: () => () {
//                       widget.controller.onDecrement(widget.item);
//                       setState(() {});
//                     },
//                 onIncrement: () => () {
//                       widget.controller.onIncrement(widget.item);
//                       setState(() {});
//                     }),
//           )
//         ],
//       ),
//     );
//   }
// }
