import 'package:flutter/material.dart';
import 'package:shop_app/model/product_model.dart';
import 'package:shop_app/utils/applabel.dart';

class HomeBuilder extends StatefulWidget {
  const HomeBuilder({super.key});

  @override
  State<HomeBuilder> createState() => _HomeBuilderState();
}

class _HomeBuilderState extends State<HomeBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: ListView.builder(
          itemCount: productModel.length,
          itemBuilder: (context, index) {
            final item = productModel[index];
            return Container(
              margin: EdgeInsets.all(5),
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(item.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLabel(text: "${item!.title}", fontSize: 14),
                        AppLabel(text: "${item!.description}", fontSize: 14),
                        AppLabel(text: "\$${item!.price}", fontSize: 14),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}



// wallet = 1500$; 
// input = 1200;
// input < 1
// 1$ ឡើង
// input > 1000
// limit 1000
// input > wallet
// លុយ​មិនគ្រប់


