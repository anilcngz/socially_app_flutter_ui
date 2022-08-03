import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socially_app_flutter_ui/config/colors.dart';
import 'package:socially_app_flutter_ui/screens/message/widgets/message_background.dart';
import 'package:socially_app_flutter_ui/screens/message/widgets/message_item.dart';
import 'package:socially_app_flutter_ui/screens/nav/nav.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MessageBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Nav()),
            ),
            icon: SvgPicture.asset('assets/icons/button_back.svg'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/menu.svg'),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Messages',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 30.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 25.0,
                        color: kBlack.withOpacity(0.10),
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kWhite,
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          width: 0.0,
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: Image.asset('assets/images/search.png'),
                      hintText: 'Search for contacts',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: k1LightGray),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: const [
                    MessageItem(
                      name: 'Malena Tudi',
                      message: 'Hey, how\'s going?',
                    ),
                    MessageItem(
                      name: 'Malena Tudi',
                      message:
                          'Hey, how\'s going? Long text example, it should be go to next line! What about more?',
                    ),
                    MessageItem(
                      name: 'Malena Tudi',
                      message: 'Hey, how\'s going?',
                    ),
                    MessageItem(
                      name: 'Malena Tudi',
                      message: 'Hey, how\'s going?',
                    ),
                    MessageItem(
                      name: 'Malena Tudi',
                      message: 'Hey, how\'s going?',
                    ),
                    MessageItem(
                      name: 'Malena Tudi',
                      message: 'Hey, how\'s going?',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
