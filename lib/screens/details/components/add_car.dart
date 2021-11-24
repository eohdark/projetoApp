import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constans.dart';

class AddCar extends StatelessWidget {
  const AddCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg", color: Colors.blueGrey,),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                    onSurface: Colors.red
                ),
                onPressed: () {},
                child: Text(
                  "Comprar".toUpperCase(),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}