import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            //boxpemasukan pengeluaran
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.archive,
                            color: const Color.fromARGB(255, 246, 195, 255),
                            size: max(60, 60)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pemasukan",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(height: 7),
                          Text("Rp. 3.800.000",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.expand_less_outlined,
                            color: Colors.purple, size: max(47, 47)),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 195, 255),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pengeluaran",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(height: 7),
                          Text("Rp. 3.800.000",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),

          //transaksi
          Padding(
            padding: const EdgeInsets.all(27),
            child: Text("Detail Transaksi",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple)),
          ),

          //list Transaksi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 12,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text(
                  "Rp. 15.000",
                  style: GoogleFonts.montserrat(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Makan",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                leading: Container(
                  child: Icon(Icons.expand_less_outlined,
                      color: Colors.purple, size: max(47, 47)),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 246, 195, 255),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 12,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text(
                  "Rp. 5.100.000",
                  style: GoogleFonts.montserrat(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Gaji Bulan Agustus",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                leading: Container(
                  child: Icon(Icons.archive,
                      color: Colors.purple, size: max(50, 50)),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
