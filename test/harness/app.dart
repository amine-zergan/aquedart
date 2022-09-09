import 'package:aquedart_test/aquedart_test.dart';
import 'package:service/service.dart';

export 'package:aquedart/aquedart.dart';
export 'package:aquedart_test/aquedart_test.dart';
export 'package:test/test.dart';
// ignore: directives_ordering
export 'package:service/service.dart';

/// A testing harness for service.
///
/// A harness for testing an aquedart application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<ServiceChannel> {
  @override
  Future onSetUp() async {}

  @override
  Future onTearDown() async {}
}
