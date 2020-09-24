import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:fliper/app/widgets/molecules/the_basic_structure/the_basic_structure_widget.dart';

void main() {
 testWidgets('TheBasicStructureWidget has message', (tester) async {
   await tester.pumpWidget(buildTestableWidget(TheBasicStructureWidget()));
   final textFinder = find.text('TheBasicStructure');
   expect(textFinder, findsOneWidget);
 });
}
