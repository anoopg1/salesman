import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:salesman_app/constants/constants.dart';
import 'package:salesman_app/ui/order_page/order_screen.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(
                    text: "All Shops",
                  ),
                  Tab(
                    text: "Orders",
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  suffixIcon: Icon(Icons.search)),
                            ),
                          ),
                          const Divider(),
                          Expanded(
                            child: ListView.separated(
                                itemBuilder: (context, index) => ShopCardWidget(
                                    shopName: shops[index].name,
                                    shopId: shops[index].id.toString()),
                                separatorBuilder: (context, index) => kheight10,
                                itemCount: shops.length),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  suffixIcon: Icon(Icons.search)),
                            ),
                          ),
                          const Divider(),
                          Expanded(
                            child: ListView.separated(
                                itemBuilder: (context, index) =>
                                    const OrderCardWidget(
                                        orderId: "orderId",
                                        shopName: "shopName",
                                        shopId: "shopId"),
                                separatorBuilder: (context, index) => kheight10,
                                itemCount: 5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderCardWidget extends StatelessWidget {
  const OrderCardWidget({
    super.key,
    required this.orderId,
    required this.shopName,
    required this.shopId,
  });

  final String orderId;
  final String shopName;
  final String shopId;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(orderId),
        subtitle: Text(shopId),
        trailing: const Icon(Icons.call),
      ),
    );
  }
}

class ShopCardWidget extends StatelessWidget {
  const ShopCardWidget({
    super.key,
    required this.shopName,
    required this.shopId,
  });

  final String shopName;
  final String shopId;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ScreenOrder() ,));
        },
        title: Text(shopName),
        subtitle: Text(shopId),
        trailing: Icon(Icons.directions),
      ),
    );
  }
}


