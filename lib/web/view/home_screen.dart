
import 'package:flutter/material.dart';
import 'package:muti_web_app/web/provider/productProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  productProvider? providerF;
  productProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<productProvider>(context,listen: false);
    providerT=Provider.of<productProvider>(context,listen: true);
    return SafeArea(child: Scaffold(

      body: Column(
        children: [
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'web',arguments: index);
                },
                child: Container(
                  height: 5.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("${providerF!.itemList[index].photo}",),fit: BoxFit.fill),
                  ),
                ),
              );
            },itemCount: providerF!.itemList.length,),
          )
        ],
      ),
    ),);
  }
}
