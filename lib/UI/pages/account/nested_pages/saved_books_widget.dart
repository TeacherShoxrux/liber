import 'package:flutter/material.dart';

class SavedBooksWidget extends StatelessWidget {
  final List<BookItem> books;

  SavedBooksWidget({required this.books});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Сақланганлар',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: books.map((book) => BookCard(book: book)).toList(),
          ),
        ],
      ),
    );
  }
}

class BookItem {
  final String title;
  final String category;
  final double rating;
  final int reviews;
  final String imageUrl;
  final bool isFavorite;

  BookItem({
    required this.title,
    required this.category,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
    required this.isFavorite,
  });
}

class BookCard extends StatelessWidget {
  final BookItem book;

  const BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(book.imageUrl, height: 120, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(
            book.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            book.category,
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 16),
              SizedBox(width: 4),
              Text('${book.rating}', style: TextStyle(color: Colors.orange)),
              SizedBox(width: 4),
              Text('${book.reviews} фикрлар', style: TextStyle(color: Colors.grey)),
            ],
          ),
          SizedBox(height: 4),
          Text(
            book.isFavorite ? 'Эҳтиёт' : 'Ҳозирча сақланмаган',
            style: TextStyle(color: book.isFavorite ? Colors.red : Colors.black),
          ),
        ],
      ),
    );
  }
}