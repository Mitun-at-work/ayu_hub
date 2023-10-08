import 'package:ayu_hub/features/ui/profile/Purchasehistory_bookdetail.dart';
import 'package:ayu_hub/features/ui/review/aireport.dart';
import 'package:ayu_hub/features/ui/review/bookdetail.dart';
import 'package:ayu_hub/features/ui/review/enterreview.dart';
import 'package:ayu_hub/features/ui/review/overview.dart';
import 'package:ayu_hub/features/ui/review/review.dart';
import 'package:ayu_hub/features/ui/shop/model/book_model.dart';

import 'package:flutter/material.dart';

class PurchasedHistoryHalfPage extends StatefulWidget {
  final BookModel bookModel;
  const PurchasedHistoryHalfPage({super.key, required this.bookModel});

  @override
  State<PurchasedHistoryHalfPage> createState() =>
      _PurchasedHistoryHalfPageState();
}

class _PurchasedHistoryHalfPageState extends State<PurchasedHistoryHalfPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool showFloatingActionButton = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    // Use Future.delayed to defer the setState call until after the build is complete
    Future.delayed(Duration.zero, () {
      setState(() {
        showFloatingActionButton = _tabController.index == 2;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              PurchasedHistoryBookDetail(
                bookModel: widget.bookModel,
              ),
              const SizedBox(height: 10),
              TabBar(
                controller: _tabController,
                labelPadding: const EdgeInsets.all(2),
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
                      "Review (2)",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "AI Report",
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
              SizedBox(
                height: 600,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    OverView(),
                    BkDetail(),
                    Review(),
                    AiReport(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: showFloatingActionButton
            ? FloatingActionButton(
                backgroundColor: Colors.deepPurple,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const EnterReview(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              )
            : null,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
