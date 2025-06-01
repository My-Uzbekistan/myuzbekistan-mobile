// import 'package:core/core.dart';
// import 'package:flutter/material.dart';
//
// class ItemCard extends StatefulWidget  {
//   final MainPageContent content;
//   final VoidCallback? onTap;
//
//   const ItemCard({super.key, required this.content, this.onTap});
//
//   @override
//   State<ItemCard> createState() => _ItemCardState();
// }
//
// class _ItemCardState extends State<ItemCard> with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//
//     return IntrinsicWidth(
//       child: BounceTap(
//         onTap: widget.onTap,
//         child: SizedBox(
//           width: width,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             spacing: 8,
//             children: [
//               Stack(
//                 children: [
//                   CachedNetworkImage(
//                     imageUrl: imageUrl ?? "",
//                     errorListener: (e) {
//                       debugPrint(e.toString());
//                     },
//                     errorWidget: (context, o, s) {
//                       return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
//                     },
//                     placeholder: (context, s) {
//                       return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
//                     },
//                     fit: BoxFit.cover,
//                     height: double.maxFinite,
//                     width: double.maxFinite,
//                   ),
//                   Positioned.fill(
//                       child: Container(
//                         color: context.appColors.static.black.withValues(
//                             alpha: appImageCardSize == AppImageCardSize.extraLarge
//                                 ? 0.32
//                                 : 0.16),
//                       )),
//                 ],
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   spacing: 2,
//                   children: [
//                     Text(
//                       widget.content.title ?? "",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: CustomTypography.bodyMd,
//                     ),
//                     Text(
//                       widget.content.contentAddress ?? "",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: CustomTypography.bodyMd.copyWith(
//                           color: context.appColors.textIconColor.secondary),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   // TODO: implement wantKeepAlive
//   bool get wantKeepAlive => true;
// }