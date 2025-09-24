import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:shared/shared.dart';

class Version extends HookWidget {
  const Version({super.key});

  @override
  Widget build(BuildContext context) {
    final version = useState<String?>(null);

    useEffect(() {
      Future.microtask(() async {
        final info = await PackageInfo.fromPlatform();
        version.value = info.version;
      });
      return null; // cleanup kerak emas
    }, []);
    return Text(
      context.localization.version.plus(" ${version.value}"),
    ).bodySm(color: context.appColors.textIconColor.secondary);
  }
}
