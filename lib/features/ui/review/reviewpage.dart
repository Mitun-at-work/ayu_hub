import 'package:ayu_hub/features/ui/review/bookdetail.dart';
import 'package:ayu_hub/features/ui/review/overview.dart';
import 'package:ayu_hub/features/ui/review/review.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/review_bookinfo.dart';
import 'package:ayu_hub/features/ui/shop/model/book_model.dart';

import 'package:flutter/material.dart';

class Reviewpage extends StatefulWidget {
  final BookModel bookModel;
  const Reviewpage({super.key, required this.bookModel});

  @override
  State<Reviewpage> createState() => _ReviewpageState();
}

class _ReviewpageState extends State<Reviewpage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 BookDetails(bookModel: widget.bookModel,),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TabBar(
                    tabs: const [
                      Tab(
                        child: Text(
                          "Overview",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Book Detail",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Reivew",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                    labelColor: Colors.black,
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    unselectedLabelColor: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(
                  height: 600,
                  child: TabBarView(
                    children: [
                      OverView(),
                      BkDetail(),
                      Review(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
