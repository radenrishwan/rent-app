import 'package:flutter/material.dart';
import 'package:rent/component/custom_appbar.dart';
import 'package:rent/constant.dart';
import 'package:rent/screen/order_detail_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          size: const Size(double.infinity, kToolbarHeight + 100),
          bottom: TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Cari Mobil',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
                borderRadius: kBidBorderRadius,
              ),
              suffixIcon: Icon(
                Icons.search,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: kBidPadding.copyWith(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daftar Booking',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt),
                    )
                  ],
                ),
                SizedBox(height: kDefaultPadding.top),
                ...List.generate(10, (index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const OrderDetailScreen(),
                        ),
                      );
                    },
                    child: Card(
                      borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.4,
                        ),
                        borderRadius: kDefaultBorderRadius,
                      ),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.black,
                            width: 0.4,
                          ),
                          borderRadius: kDefaultBorderRadius,
                        ),
                        leading: const Icon(Icons.car_rental),
                        title: const Text('Mobil'),
                        subtitle: const Text('Mobil Avanza'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.done),
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
