// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerWidget extends StatefulWidget {
  const FilePickerWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<FilePickerWidget> createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget> {
  FilePickerResult? result;
   
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}