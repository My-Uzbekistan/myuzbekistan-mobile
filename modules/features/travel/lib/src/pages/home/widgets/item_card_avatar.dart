import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';

class ItemCardAvatar extends StatelessWidget {
  final String? avatarUrl;
  final String? name;
  final VoidCallback? onTap;

  const ItemCardAvatar({super.key, this.avatarUrl, this.name,this.onTap});

  @override
  Widget build(BuildContext context) {
    return BounceTap(
      onTap:onTap ,
      child: SizedBox(
        width: 96,
        child:  Column(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: AppAvatar(

                    imageUrl: avatarUrl,
                    sizeType: AvatarSizeType.large,
                  ),
                ),
              ),
              Text(
                name??"",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: CustomTypography.bodySm,
              )
            ],
          ),

      ),
    );
  }
}
