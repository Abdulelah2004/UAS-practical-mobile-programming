import 'dart:convert';
import 'package:http/http.dart' as http;

class Contact {
  final int id;
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  Contact(
      {required this.id,
      required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});

  // Factory method to convert JSON data to a Contact object
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      message: json['message'],
      time: json['time'],
      imageUrl: json['image_url'],
    );
  }
}

Future<List<Contact>> fetchContacts() async {
  // Use your local machine's IPv4 address
  final response = await http
      .get(Uri.parse('http://192.168.0.116/whatsapp_app/get_contacts.php'));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return data.map((contactJson) => Contact.fromJson(contactJson)).toList();
  } else {
    throw Exception('Failed to load contacts');
  }
}
