import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/home/view/ayurvedha_books_builder.dart';
import 'package:ayu_hub/features/ui/shop/title_tile.dart';
import 'package:flutter/material.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
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
                      child: TextField(
                        cursorWidth: 1.4,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const SearchCategories()));
                              },
                              child: const Icon(Icons.search)),
                          hintText: "Search for bookname,authorname",
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
              ),
              const AyurvedhaBooksBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategorySearch extends StatelessWidget {
  const CategorySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryName.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) =>
                //         const CategoryBooks()));
              },
              child: Container(
                padding: const EdgeInsets.all(2),
                width: 150,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(categoriesImage[index]))),
                        )),
                    Text(
                      categoryName[index],
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
