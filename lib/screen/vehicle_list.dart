import 'package:flutter/material.dart';
import 'package:rent/constant.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SizedBox(
          height: kToolbarHeight - 10,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Cari Mobil',
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  borderRadius: kBidBorderRadius),
              suffixIcon: Icon(
                Icons.search,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
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
                    'Daftar Mobil',
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
              ...List.generate(
                10,
                (index) {
                  return Card(
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: kDefaultBorderRadius,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: kDefaultBorderRadius,
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: kDefaultBorderRadius,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: kDefaultPadding,
                            child: Text(
                              'Toyota Avanza 2022',
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              color: kBackgroudColor,
                              padding: kDefaultPadding,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rp. 235.000 / Hari',
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
