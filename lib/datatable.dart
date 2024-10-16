import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datatable extends StatefulWidget {
  const datatable({Key? key}) : super(key: key);

  @override
  State<datatable> createState() => _datatableState();
}

class _datatableState extends State<datatable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            // DataTable(
            //   columns: [
            //     DataColumn(label: Text("name")),
            //     DataColumn(label: Text("place")),
            //     // DataColumn(label: Text("qualification")),
            //     // DataColumn(label: Text("phone")),
            //   ],
            //   rows: [
            //     DataRow(cells: [
            //       DataCell(Text("nirmal")),
            //       DataCell(Text("mayyil")),
            //       // DataCell(Text("degree")),
            //       // DataCell(Text("8129285237")),
            //     ]),
            //     // DataRow(cells: [
            //     //   DataCell(Text("aromal")),
            //     //   DataCell(Text("kandakkai")),
            //     //   DataCell(Text("degree")),
            //     //   DataCell(Text("9876542345")),
            //     // ])
            //   ],
            // ),
            // DataTable(columns: [
            //   DataColumn(label: Text("Company")),
            //   DataColumn(label: Text("Salary")),
            //   DataColumn(label: Text("popsition")),
            // ],
            //     rows: [DataRow(cells:[
            //       DataCell(Text("integoes")),
            //       DataCell(Text("5000")),
            //       DataCell(Text("Developer")),
            //     ])]),
            //
            Container(
              color: Colors.orange,
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      "Car",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Brand",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Details",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(SizedBox(
                      height: 700,
                      child: Image.network(
                        "https://hips.hearstapps.com/hmg-prod/images/2019-porsche-911-gt3-rs-99leadgallery-1524749269.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                    DataCell(Text("Porsche")),
                    DataCell(Text(
                        "The Porsche 911 GT3 RS is a high performance sports car featuring a 4.0-liter naturally aspirated engine with 518 hp, designed for exceptional track performance with advanced aerodynamics and lightweight construction. It combines cutting-edge technology with a motorsport-inspired interior for an exhilarating driving experience")),
                  ]),
                  DataRow(cells: [
                    DataCell(Image.network(
                        "https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/99-bmw-m5-cs-2021-official-reveal-hero-front.jpg")),
                    DataCell(Text("BMW")),
                    DataCell(Text(
                        "The BMW M5 CS is a limited-edition super sedan with a 4.4-liter twin-turbo V8 engine producing 627 hp, making it the most powerful BMW ever. It features extensive use of lightweight materials, including carbon fiber, and accelerates from 0 to 100 km/h in just 3.0 seconds")),
                  ]),
                  DataRow(cells: [
                    DataCell(Image.network(
                        "https://th.bing.com/th/id/OIP.p-YXlpv8Lk6bQ3NE-qDoWwHaEK?rs=1&pid=ImgDetMain")),
                    DataCell(Text("Audi")),
                    DataCell(Text(
                        "The Audi RS 7 is a high-performance luxury sedan powered by a 4.0-liter twin-turbo V8 engine producing 621 hp, capable of accelerating from 0 to 60 mph in just 3.3 seconds. It combines sleek coupe-like styling with advanced technology and a spacious, luxurious interior")),
                  ]),
                  DataRow(cells: [
                    DataCell(Image.network(
                        "https://th.bing.com/th/id/OIP.XlsdBg2MlSmUSgV_SpOpcgHaE8?rs=1&pid=ImgDetMain")),
                    DataCell(Text("Mercedes")),
                    DataCell(Text("")),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      color: Colors.red,
                    )),
                    DataCell(Text("")),
                    DataCell(Text("")),
                  ]),
                ],
              ),
            )

          ],
        )
    );
  }
}
