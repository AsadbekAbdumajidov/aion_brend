import 'package:url_launcher/url_launcher.dart';

class ServiceUrl {


  void urlService(url) async {
    final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
}