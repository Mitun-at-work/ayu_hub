import 'package:ayu_hub/features/ui/admin/admin_widgets/lastreadbkdetails.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/aireport.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/bookdetail.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/enterreview.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/overview.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/review.dart';
import 'package:ayu_hub/features/ui/shop/model/book_model.dart';

import 'package:flutter/material.dart';

class LastReadPage extends StatefulWidget {
  final BookModel bookModel;
  const LastReadPage({super.key, required this.bookModel});

  @override
  State<LastReadPage> createState() => _LastReadPageState();
}

class _LastReadPageState extends State<LastReadPage>
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LastReadBookDetails(
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
                height: 650,
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
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
