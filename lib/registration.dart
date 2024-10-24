import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class Registration extends StatefulWidget {
  Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController nameTEC = TextEditingController();
  final TextEditingController emailTEC = TextEditingController();
  final TextEditingController passwordTEC = TextEditingController();
  final TextEditingController confirmPasswordTEC = TextEditingController();
  final TextEditingController cellTEC = TextEditingController();
  final TextEditingController addressTEC = TextEditingController();
  final TextEditingController dobTEC = TextEditingController();
  final RadioGroupController genderController = RadioGroupController();

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Registration",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nameTEC,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailTEC,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordTEC,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: confirmPasswordTEC,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: cellTEC,
              decoration: const InputDecoration(
                labelText: "Cell Number",
                border: OutlineInputBorder(),
                icon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: addressTEC,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
                icon: Icon(Icons.location_city),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (picked != null && picked != selectedDate) {
                  selectedDate = picked;
                  String formattedDate =
                      DateFormat('dd-MM-yyyy').format(selectedDate!);
                  dobTEC.text = formattedDate;
                }
              },
              controller: dobTEC,
              decoration: const InputDecoration(
                labelText: "Date of Birth",
                border: OutlineInputBorder(),
                icon: Icon(Icons.calendar_today),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Gender"),
            const SizedBox(
              height: 10,
            ),
            RadioGroup(
              controller: genderController,
              values: ["Male", "Female", "Others"],
              indexOfDefault: 0,
              orientation: RadioGroupOrientation.horizontal,
              decoration: RadioGroupDecoration(
                spacing: 10.0,
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                activeColor: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () => {
                      //Navigator.pushNamed(context, "/home")
                    },
                child: const Text(
                  "Registration",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
