import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Primary Colors
  static const Color darkCyan = Color.fromRGBO(60, 128, 103, 1);
  static const Color cream = Color.fromRGBO(242, 235, 227, 1);

  // Neutral Colors
  static const Color veryDarkBlue = Color.fromRGBO(28, 35, 43, 1);
  static const Color darkGrayishBlue = Color.fromRGBO(108, 114, 137, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);

  // Typography
  static const double fontSizePara = 14;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: cream,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        // ),
        body: Center(
          child: SizedBox(
            height: 630,
            width: 375,
            child: Column(
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image(
                    image: AssetImage('assets/images/image-product-mobile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  height: 360,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('P E R F U M E',
                          style: TextStyle(
                              fontSize: fontSizePara,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: darkGrayishBlue),
                          textAlign: TextAlign.left),
                      const Text(
                        'Gabrielle Essence Eau De Parfum',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Fraunces',
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                      const Text(
                        'A floral, solar and voluptuous interpretation composed by Olivier Polge, Perfumer-Creator for the House of CHANEL.',
                        style: TextStyle(
                            fontSize: fontSizePara,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            color: darkGrayishBlue,
                            height: 1.6),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Text(
                              '\$149.99',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: 'Fraunces',
                                  fontWeight: FontWeight.w700,
                                  color: darkCyan),
                            ),
                          ),
                          const Text(
                            '\$169.99',
                            style: TextStyle(
                                fontSize: fontSizePara,
                                fontFamily: 'Montserrat',
                                color: darkGrayishBlue,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart, size: 20),
                        label: const Text('Add to Cart',
                            style: TextStyle(
                                fontSize: fontSizePara,
                                fontFamily: 'Montserrat')),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: darkCyan,
                            padding: const EdgeInsets.all(22.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
