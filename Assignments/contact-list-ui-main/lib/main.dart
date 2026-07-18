import 'package:flutter/material.dart';

void main() {
  runApp(const ContactListApp());
}

class ContactListApp extends StatelessWidget {
  const ContactListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List UI',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {'name': 'Jawad', 'phone': '01877-777777'},
      {'name': 'Ferdous', 'phone': '01673-777777'},
      {'name': 'Hasan', 'phone': '01745-777777'},
      {'name': 'Hasan', 'phone': '01745-777777'},
      {'name': 'Hasan', 'phone': '01745-777777'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              initialValue: 'Hasan',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: '01745-777777',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[400],
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('Add', style: TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 1,
                    margin: const EdgeInsets.only(bottom: 8),
                    color: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: Colors.grey.shade300, width: 0.5),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.brown[600],
                      ),
                      title: Text(
                        contacts[index]['name']!,
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        contacts[index]['phone']!,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 28,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}