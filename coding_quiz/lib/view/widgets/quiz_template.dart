import 'package:coding_quiz/constants/icons.dart';
import 'package:coding_quiz/constants/padding.dart';
import 'package:flutter/material.dart';

class QuizTemplate extends StatelessWidget {
  const QuizTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading: Row(
            children: const [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: null,
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: MyPadding.defaultPaddingAll,
          child: Column(
            children: [
              const SizedBox(height: 30),
              //soru numarası kutusu
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Bu kısımda Kaçınıcı soru olduğunu göstereceğiz'),
                ],
              ),
              const SizedBox(height: 50),
              //soru kutucuğu
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'Bu kısımda soru bulunacak\n şlsdfkslşdfksdlşfksdf \nalkşdjasşldkas'),
                ],
              ),
              const SizedBox(height: 50),
              //şıklar list view olabilir a-b-c-d
              Column(
                children: [
                  aChoiseButton(),
                  const SizedBox(height: 20),
                  bChoiseButton(),
                  const SizedBox(height: 20),
                  cChoiseButton(),
                  const SizedBox(height: 20),
                  dChoiseButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton dChoiseButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.black),
          backgroundColor: Colors.lightBlue,
          fixedSize: const Size(double.infinity, 80),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      onPressed: () {},
      child: Row(
        children: [Image.asset(LessonIcons.dIcon), const Text('d şık')],
      ),
    );
  }

  ElevatedButton cChoiseButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.black),
          backgroundColor: Colors.lightBlue,
          fixedSize: const Size(double.infinity, 80),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      onPressed: () {},
      child: Row(
        children: [Image.asset(LessonIcons.cIcon), const Text('c şık')],
      ),
    );
  }

  ElevatedButton bChoiseButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.black),
          backgroundColor: Colors.lightBlue,
          fixedSize: const Size(double.infinity, 80),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      onPressed: () {},
      child: Row(
        children: [Image.asset(LessonIcons.bIcon), const Text('b şık')],
      ),
    );
  }

  ElevatedButton aChoiseButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.black),
          backgroundColor: Colors.lightBlue,
          fixedSize: const Size(double.infinity, 80),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(LessonIcons.aIcon),
          const Expanded(child: Text('a şık'))
        ],
      ),
    );
  }
}
