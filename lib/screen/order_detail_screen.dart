import 'package:flutter/material.dart';
import 'package:rent/constant.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Opsi penyewaan'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(250),
          child: Container(
            padding: kBidPadding,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Barang yang disewa',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: kDefaultPadding.top),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: kBidBorderRadius,
                      ),
                    ),
                    SizedBox(width: kDefaultPadding.left),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Honda City 2021',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(height: kSmallPadding.top),
                        Text('Rp. 235.000 / Hari', style: Theme.of(context).textTheme.titleSmall),
                        SizedBox(height: kSmallPadding.top),
                        Text(
                          'Hubungi Pemilik',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: kBidPadding.top),
                Text(
                  'Tulis catatan',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    'Aturan Peminjaman',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: kDefaultPadding.top),
                  Text(
                    'Tanggal Peminjaman',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: '21/12/2021 - 25/12/2022',
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding.top),
                  Text(
                    'Pilih Lokasi',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Jl. Raden Hanafiah No.78 (Dekat Warung Makan Sederhana)',
                      suffixIcon: Icon(Icons.location_on_outlined),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding.top),
                  Text(
                    'Pilih Pembayaran',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Mandiri Virtual Account',
                      suffixIcon: Icon(Icons.payment),
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: kDefaultPadding,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
                borderRadius: kDefaultBorderRadius,
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: kDefaultBorderRadius,
                ),
                leading: const Icon(Icons.discount),
                title: const Text('Kamu menggunakan kupon'),
                subtitle: const Text('Hemat sebesar Rp. 20.000,00'),
              ),
            ),
            SizedBox(height: kBidPadding.top),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Bayar',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp. 1.155.000,00',
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: kSmallPadding.right),
                          Text(
                            '1.175.000,00',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: kDefaultBorderRadius,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: kSmallPadding,
                      child: Text(
                        'Bayar',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding.top),
          ],
        ),
      ),
    );
  }
}
