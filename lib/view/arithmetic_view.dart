import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final TextEditingController firstInputController =
      TextEditingController(text: '2');
  final TextEditingController secondInputController =
      TextEditingController(text: '2');
  int result = 0;

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                controller: firstInputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter First Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'First number is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: secondInputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Second Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Second number is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Text(
                'Result is: $result',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        int firstInput =
                            int.tryParse(firstInputController.text) ?? 0;
                        int secondInput =
                            int.tryParse(secondInputController.text) ?? 0;
                        result = firstInput + secondInput;
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        int firstInput =
                            int.tryParse(firstInputController.text) ?? 0;
                        int secondInput =
                            int.tryParse(secondInputController.text) ?? 0;
                        result = firstInput - secondInput;
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
