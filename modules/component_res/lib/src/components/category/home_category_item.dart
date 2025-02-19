import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
 final  String title;
  const HomeCategoryItem({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 72, maxWidth: 100),
        child: Column(
          children: [
            Padding(
              key: ObjectKey("AvatarContainer"),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.appColors.fill.quaternary),
                child: Icon(Icons.add),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                title,
                maxLines: 1,
                style: CustomTypography.bodySm,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
