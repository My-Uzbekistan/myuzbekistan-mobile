import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

import '../service_item.dart';

class ServiceIcon extends HookWidget {
  final ServiceItem item;
  final double size;
  final double fittedSize;
  final double nudgeY;

  const ServiceIcon({
    super.key,
    required this.item,
    required this.size,
    required this.fittedSize,
    this.nudgeY = 0,
  });

  @override
  Widget build(BuildContext context) {
    final url = item.iconUrl;
    if (url == null || url.isEmpty) {
      return SizedBox.square(
        dimension: size,
        child: Center(
          child: item.iconPath?.toSvgImage(
            width: fittedSize,
            height: fittedSize,
            fit: BoxFit.contain,
            tintColor: context.appColors.brandSeaBlue,
          ),
        ),
      );
    }

    final isSquare = _useSquareArtwork(url);
    final drawSize = isSquare ? size : fittedSize;

    return SizedBox.square(
      dimension: size,
      child: Center(
        child: Transform.translate(
          offset: Offset(0, isSquare ? nudgeY : 0),
          child: AppNetworkImage(
            url,
            width: drawSize,
            height: drawSize,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

bool _useSquareArtwork(String url) {
  final isSquare = useState(true);

  useEffect(() {
    final stream = ExtendedNetworkImageProvider(
      url,
      cache: true,
    ).resolve(ImageConfiguration.empty);

    final listener = ImageStreamListener((info, _) {
      final ratio = info.image.width / info.image.height;
      isSquare.value = ratio > 0.8 && ratio < 1.25;
    });

    stream.addListener(listener);
    return () => stream.removeListener(listener);
  }, [url]);

  return isSquare.value;
}
