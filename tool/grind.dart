import 'package:grinder/grinder.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:async/async.dart' show StreamGroup;

main(args) => grind(args);

@Task()
test() {
  _processLog(Process.start('flutter', ['test']));
}

@DefaultTask()
@Depends(analyze, test)
build() {
  for (var p in ["web", "apk", "ios"]) {
    _buildPlatform(p);
  }
}

@Task()
analyze() {
  _processLog(Process.start('dart', ['analyze']));
}

@Task()
run() {
  _processLog(Process.start("flutter", ["run"]));
}

@Task()
storybook() {
  _processLog(Process.start(
      'flutter', 'run -t widgetbook/main.dart -d macOS'.split(' ')));
}

Future<void> _buildPlatform(String platformName) =>
    _processLog(Process.start('flutter', ['build', platformName]));

Future<void> _processLog(Future<Process> process) async {
  final _process = await process;
  final output = StreamGroup.merge([_process.stdout, _process.stderr]);
  await for (final message in output) {
    log(utf8.decode(message));
  }
}
