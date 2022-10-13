import 'package:url_launcher/url_launcher.dart';
Future<void> launchUrls() async {
    if (!await launchUrl(Uri.parse('https://www.flongostudios.com/'))) {
    }
  }