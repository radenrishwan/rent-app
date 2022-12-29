import 'package:flutter/material.dart';
import 'package:rent/component/custom_appbar.dart';
import 'package:rent/constant.dart';
import 'package:rent/screen/vehicle_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroudColor,
        appBar: CustomAppBar(
          size: const Size(double.infinity, 350),
          bottom: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Selamat Pagi',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Raden Mohamad Rishwan',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: kBidPadding.top),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Cari sesuatu',
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
              SizedBox(height: kBidPadding.top),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(4, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const VehicleScreen();
                            },
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
                          borderRadius: kSmallBorderRadius,
                        ),
                        child: Padding(
                          padding: kDefaultPadding.copyWith(left: kBidPadding.left, right: kBidPadding.right),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.car_repair, size: 30),
                              Text(
                                'Car',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: kBidPadding.copyWith(left: 0, right: 0),
                padding: kBidPadding,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Promosi untukmu',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: kDefaultPadding.top),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: kDefaultBorderRadius,
                                ),
                                child: Container(
                                  height: 120,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: kDefaultBorderRadius,
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: kDefaultPadding.top),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 4,
                          width: 25,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: kSmallPadding.right - 3),
                        Container(
                          height: 4,
                          width: 14,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: kSmallPadding.right - 3),
                        Container(
                          height: 4,
                          width: 8,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: kSmallPadding.right - 3),
                        Container(
                          height: 4,
                          width: 8,
                          color: kPrimaryColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: kBidPadding.copyWith(left: 0, right: 0),
                padding: kBidPadding,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Destinasi Favorit',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: kDefaultPadding.top),
                    ...List.generate(
                      5,
                      (index) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: kDefaultBorderRadius,
                        ),
                        child: Container(
                          padding: kDefaultPadding,
                          width: double.infinity,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: kDefaultBorderRadius,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pantai Atuh Nusa Penida',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Denpasar, Bali',
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
