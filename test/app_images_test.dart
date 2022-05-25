import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:teary/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.breathingIllustration).existsSync(), true);
    expect(File(AppImages.circle).existsSync(), true);
    expect(File(AppImages.colorTearsIcon).existsSync(), true);
    expect(File(AppImages.helpIcon).existsSync(), true);
    expect(File(AppImages.notebookIllustration).existsSync(), true);
    expect(File(AppImages.openButton).existsSync(), true);
  });
}
