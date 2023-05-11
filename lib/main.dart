
import 'package:flutter/material.dart';
import 'package:muti_web_app/web/provider/productProvider.dart';
import 'package:muti_web_app/web/view/home_screen.dart';
import 'package:muti_web_app/web/view/web_Screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) =>  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => productProvider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=> HomeScreen(),
            'web':(context)=> WebScreen(),
          },
        ),
      ),
    )
  );
}