import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/Product.dart';

class AddItemsOverlay extends StatelessWidget {
  final double width;
  final double height;
  final Product product;

  const AddItemsOverlay({
    super.key,
    required this.width,
    required this.height,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.7875 * height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 9.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                backgroundColor: Color(0xFFF2F1F1),
                child: Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: width,
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: SizedBox(
                              width: 0.9027777778 * width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: _getImage(
                                  width: 0.3555555556 * width,
                                  height: 0.16625 * height,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 18,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  product.name,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Image.asset("assets/images/veg_icon.png"),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: product.description,
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            "Variants",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, bottom: 12),
                              child: SizedBox(
                                width: 0.225 * width,
                                height: 0.115 * height,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional.topEnd,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 14.0,
                                          right: 12,
                                        ),
                                        child: Image.asset(
                                          "assets/images/burger_icon.png",
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      child: Wrap(
                                        children: [
                                          Column(
                                            children: [
                                              Text("Regular"),
                                              Text("50")
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 26.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                _customButton(
                                  const Icon(Icons.remove),
                                  () {},
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 14.0),
                                  child: Text("1"),
                                ),
                                _customButton(
                                  const Icon(Icons.add),
                                  () {},
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(0.4722222222*width,50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Add Item ₹50",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _getImage({required double width, required double height}) {
    return (product.productImage != "null")
        ? Image.network(
            product.productImage,
            width: width,
            height: height,
            fit: BoxFit.cover,
          )
        : Image.asset(
            "assets/images/pasta.jpeg",
            width: width,
            height: height,
            fit: BoxFit.cover,
          );
  }

  _customButton(Icon icon, void Function() onPressed) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 40,
        minHeight: 40,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
