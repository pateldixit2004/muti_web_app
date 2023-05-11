import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:muti_web_app/web/provider/productProvider.dart';
import 'package:provider/provider.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  productProvider? providerF;
  productProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<productProvider>(context, listen: false);
    providerT = Provider.of<productProvider>(context, listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(
          url: Uri.parse(
              "${providerF!.inkList[index]}"),
              // "https://www.google.com/")
          ),

        ),
      ),
    );
  }
}
