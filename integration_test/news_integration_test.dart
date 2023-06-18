import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:nytimes_news_project/core/widgets/general_button.dart';
import 'package:nytimes_news_project/main.dart' as app;
import 'package:nytimes_news_project/main.dart';
import 'package:nytimes_news_project/view/news/components/news_list_item.dart';
import 'package:nytimes_news_project/view/news/view/news_detail_view.dart';
import 'package:nytimes_news_project/view/news/view/news_list_view.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('NewsListView test', (WidgetTester tester) async {
    app.main();
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle(const Duration(seconds: 2));
    final listViewFinder = find.byType(NewsListView);

    expect(listViewFinder, findsOneWidget);

    final firstItemFinder = find.byType(NewsListItem).first;
    expect(firstItemFinder, findsOneWidget);

    await tester.tap(firstItemFinder);
    await tester.pumpAndSettle();

    final detailPageFinder = find.byType(NewsDetailView);
    expect(detailPageFinder, findsOneWidget);

    final backButtonFinder = find.byType(GeneralButton);
    expect(backButtonFinder, findsOneWidget);

    await tester.tap(backButtonFinder);
    await tester.pumpAndSettle();

    expect(listViewFinder, findsOneWidget);
  });
}
