import 'package:flutter/material.dart';
import 'package:scloud_ui/custom_widgets/home_page_widgets/form.dart';
import 'package:scloud_ui/custom_widgets/home_page_widgets/guest_page.dart';

class Diconnected extends StatefulWidget {
  const Diconnected({super.key});

  @override
  State<Diconnected> createState() => _DiconnectedState();
}

class _DiconnectedState extends State<Diconnected> {
  bool isForm = false;

  void toggle() {
    setState(() {
      isForm = !isForm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isForm
        ? LoginForm(backCallback: toggle)
        : GuestPage(formCallback: toggle);
  }
}
