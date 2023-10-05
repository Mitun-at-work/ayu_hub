// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookModel {
  final String bookCoverImage;
  final String bookName;
  final String bookAuthorName;
  final double bookPrice;
  final double bookRating;

  BookModel({
    required this.bookCoverImage,
    required this.bookName,
    required this.bookAuthorName,
    required this.bookPrice,
    required this.bookRating,
  });
}
