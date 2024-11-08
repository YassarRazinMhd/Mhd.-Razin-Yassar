import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/students.dart';

class AddStudent extends StatelessWidget {
  static const routeName = "/add-student";
  
  // Controllers for the text fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController majorController = TextEditingController();

  void _submitForm(BuildContext context) {
    final studentsProvider = Provider.of<Students>(context, listen: false);
    
    // Call the addStudent method from the provider
    studentsProvider.addStudent(
      nameController.text,
      ageController.text,
      majorController.text,
      context,
    ).then((response) {
      // Show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Student added successfully!"),
          duration: Duration(seconds: 2),
        ),
      );
      // Navigate back after adding the student
      Navigator.pop(context);
    }).catchError((error) {
      // Handle any errors during the student addition process
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to add student: $error"),
          duration: Duration(seconds: 2),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () => _submitForm(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Name"),
                textInputAction: TextInputAction.next,
                controller: nameController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Age"),
                textInputAction: TextInputAction.next,
                controller: ageController,
                keyboardType: TextInputType.number, // Optional: restrict to numbers
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Major"),
                textInputAction: TextInputAction.done,
                controller: majorController,
                onEditingComplete: () => _submitForm(context),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: () => _submitForm(context),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}