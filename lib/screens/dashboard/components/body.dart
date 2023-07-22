import 'package:eldepizzacms/models/pizza/pizza_models.dart';
import 'package:eldepizzacms/services/web_services.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Pizza> pizzas = [];

  @override
  void initState() {
    super.initState();
    _fetchPizza();
  }

  Future<void> _fetchPizza() async {
    try {
      final pizzaData = await ApiService.fetchPizzas();
      setState(() {
        pizzas = pizzaData;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .03,
          vertical: MediaQuery.of(context).size.height * .03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12)),
                height: 150,
                width: 360,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Products",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      "${pizzas.length} items",
                      style:
                          const TextStyle(color: Colors.black45, fontSize: 16),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12)),
                height: 150,
                width: 360,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sales",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      "0 sales",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12)),
                height: 150,
                width: 360,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Orders",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      "0 orders",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12)),
                height: 150,
                width: 360,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Registered",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      "0 users",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 680,
                width: 760,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black12),
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black12),
                    width: 760,
                    height: 320,
                  ),
                  const SizedBox(height: 38),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black12),
                    width: 760,
                    height: 320,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
