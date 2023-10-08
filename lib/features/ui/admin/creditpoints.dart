import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/home/view/categoryrating.dart';
import 'package:ayu_hub/features/ui/login_page/feildbutton.dart';
import 'package:ayu_hub/features/ui/profile/profile.dart';
import 'package:ayu_hub/features/ui/profile/purchased_history.dart';
import 'package:ayu_hub/features/ui/profile/purchasehistory_halfpage.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/tags.dart';
import 'package:ayu_hub/features/ui/shop/shop.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CreditiPoints extends StatelessWidget {
  const CreditiPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Grade Point",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(20),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      spreadRadius: .1,
                      blurRadius: 12,
                      offset: const Offset(1, 2),
                    )
                  ],
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "15",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Reviewed Books",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                "assets/images/coin.png",
                              ),
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "120",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Points Earned",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Center(
                child: FeildButton(
                  title: "Redeem Now",
                  pages: ShoppingScreen(),
                  link: "assets/images/redeem (2).png",
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Reviewed Books",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ReviewedBooks(
                    link: bookModels[index].bookCoverImage,
                    bkName: bookModels[index].bookName,
                    authorName: bookModels[index].bookAuthorName,
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

class ReviewedBooks extends StatelessWidget {
  final String link;
  final String bkName;
  final String authorName;
  const ReviewedBooks({
    super.key,
    required this.link,
    required this.bkName,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) =>
                PurchasedHistoryHalfPage(bookModel: bookModels[0]),
          ),
        );
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 170,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(link),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bkName,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Text(
                          "Author By:",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          authorName,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const CategoryRatings(
                      value: '4.9',
                      rate: "\$50",
                      title: '',
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Following Tags",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Tags(tag: "#Ayurveda"),
                        SizedBox(width: 20),
                        Tags(tag: "#Sidda"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
