import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewWidget extends StatefulWidget {
  final String image;
  final String title;
  final String description;

  const ViewWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<ViewWidget> createState() => _ViewWidgetState();
}

class _ViewWidgetState extends State<ViewWidget> {
  // final String assetName = 'assets/images/logo.svg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(
            //   assetName,
            //   width: 136,
            // ),
            Image.asset(
              'assets/images/logo.png',
              width: 136,
            ),
            const SizedBox(height: 128),
            SvgPicture.asset(
              widget.image,
              height: 240,
            ),
            const SizedBox(height: 64),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Poppins-SemiBold',
                fontSize: 20,
                height: 30 / 20,
              ),
            ),
            Text(
              widget.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 16,
                height: 24 / 16,
                color: Color(0xff737373),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
