import 'package:cooking_share/widgets/tabs_page.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  Widget _renderOrderItem({
    @required String title,
    @required String description,
    @required String price,
    @required int no,
  }) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(no.toString()),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title),
                    Text(description),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  price.toString(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: Divider()),
            ],
          )
        ],
      ),
    );
  }

  Widget _renderSummary({
    @required String title,
    @required String value,
  }) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your Orders')),
      ),
      bottomNavigationBar: TabsPage(selectedIndex: 2),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _renderOrderItem(
              no: 1,
              title: "Cookie Sandwich",
              description:
                  "Shortbread, chocolate turtle cookies, and red velvet.",
              price: "200THB",
            ),
            _renderOrderItem(
              no: 1,
              title: "Cookie Sandwich",
              description:
                  "Shortbread, chocolate turtle cookies, and red velvet.",
              price: "200THB",
            ),
            _renderOrderItem(
              no: 1,
              title: "Cookie Sandwich",
              description:
                  "Shortbread, chocolate turtle cookies, and red velvet.",
              price: "200THB",
            ),
            Column(
              children: [
                _renderSummary(
                  title: "Subtotal",
                  value: "20THB",
                ),
                _renderSummary(
                  title: "Delivery",
                  value: "20THB",
                ),
                _renderSummary(
                  title: "Total",
                  value: "20THB",
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("CHECKBOX"),
            )
          ],
        ),
      ),
    );
  }
}
