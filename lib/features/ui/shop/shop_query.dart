import 'package:flutter/material.dart';

class ShopQueryBox extends StatelessWidget {
  const ShopQueryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  spreadRadius: .1,
                  blurRadius: 10,
                  offset: const Offset(5, 8),
                )
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Search your favourites",
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
        ),
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(
            Icons.filter_alt_outlined,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
