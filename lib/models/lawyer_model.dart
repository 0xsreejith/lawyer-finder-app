class Lawyer {
  final String id;
  final String name;
  final String specialty;
  final String location;
  final int experience;
  final double rating;
  final String photoUrl;
  final String description;

  Lawyer({
    required this.id,
    required this.name,
    required this.specialty,
    required this.location,
    required this.experience,
    required this.rating,
    required this.photoUrl,
    required this.description,
  });

  // Method to convert from JSON (data fetched from an API or database) to a Lawyer object
  factory Lawyer.fromJson(Map<String, dynamic> json) {
    return Lawyer(
      id: json['id'],
      name: json['name'],
      specialty: json['specialty'],
      location: json['location'],
      experience: json['experience'],
      rating: json['rating'].toDouble(),
      photoUrl: json['photoUrl'],
      description: json['description'],
    );
  }

  // Method to convert the Lawyer object to JSON (for sending data to the server)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'specialty': specialty,
      'location': location,
      'experience': experience,
      'rating': rating,
      'photoUrl': photoUrl,
      'description': description,
    };
  }
}
