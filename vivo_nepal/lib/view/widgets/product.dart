import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String title;
  final String decription;

  const ProductWidget({
    required this.image,
    required this.title,
    required this.decription,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Column(
          children: [
            Expanded(
              child: Image.network(image),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
              // strutStyle: const StrutStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              decription,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
