import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .03,
          vertical: MediaQuery.of(context).size.height * .03),
      child: Column(children: [
        Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context, builder: (context) => addPro(context));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .15,
              height: MediaQuery.of(context).size.height * .15,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(18)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text("Add Product"),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

Widget addPro(BuildContext context) {
  return const AlertDialog(
    title: Text("Add Product"),
    content: Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Product Title: "),
          SizedBox(height: 40, width: 160, child: TextField()),
        ],
      )
    ]),
  );
}
