import 'package:get/get.dart';
import 'package:lawyer_finder/models/lawyer_model.dart';

class Lawyer {
  final String id;
  final String name;
  final String specialty;
  final String location;
  final int experience;
  final double rating;
  final String photoUrl;
  final String description;
  final String enrollmentNumber;
  final String mobileNumber;
  final String practicePlace;
  final bool isTopLawyer;

  Lawyer({
    required this.id,
    required this.name,
    required this.specialty,
    required this.location,
    required this.experience,
    required this.rating,
    required this.photoUrl,
    required this.description,
    required this.enrollmentNumber,
    required this.mobileNumber,
    required this.practicePlace,
    this.isTopLawyer = false,
  });
}

class LawyerController extends GetxController {
  var lawyers = <Lawyer>[].obs;

  // Fetching dummy data (you will later replace it with data from a backend)
  void fetchLawyers() {
    var fetchedLawyers = [
      Lawyer(
        id: '1',
        name: 'Adv. Asha Babu',
        specialty: 'Family Case',
        location: 'Ernakulam, Kerala',
        experience: 10,
        rating: 4.8,
        photoUrl:
            'https://content.jdmagicbox.com/comp/ernakulam/u8/0484px484.x484.140517140043.f1u8/catalogue/adv-asha-babu-ernakulam-ho-ernakulam-lawyers-qq9ihdraf2.jpg',
        description: 'Experienced in handling criminal defense cases.',
        enrollmentNumber: 'ENR-12345',
        mobileNumber: '08401424186',
        practicePlace: 'Ernakulam District Court',
        isTopLawyer: true,
      ),
      Lawyer(
        id: '2',
        name: 'Adv. Basil Chandy',
        specialty: 'Family Law',
        location: 'Los Angeles, USA',
        experience: 8,
        rating: 4.5,
        photoUrl:
            'https://threebestrated.in/images/AdvocateBasilChandyVavachan-Kochi-KL.jpeg',
        description: 'Expert in family disputes and divorce settlements.',
        enrollmentNumber: 'ENR-67890',
        mobileNumber: '+1 987 654 3210',
        practicePlace: 'Los Angeles County Court',
        isTopLawyer: true,
      ),
      Lawyer(
        id: '3',
        name: 'Adv. VV Suresh',
        specialty: 'Criminal Law',
        location: 'Kochi, Kerala',
        experience: 10,
        rating: 3.0,
        photoUrl:
            'https://content.jdmagicbox.com/comp/ernakulam/g8/0484px484.x484.130921044919.i3g8/catalogue/v-v-suresh-advocate-high-court-of-kerala-cochin-special-economic-zone-ernakulam-lawyers-jxtx0squ9q.jpg',
        description: 'Specializes in criminal law and defense strategies.',
        enrollmentNumber: 'ENR-34567',
        mobileNumber: '09876543210',
        practicePlace: 'High Court of Kerala',
      ),
      Lawyer(
        id: '4',
        name: 'Adv. Ramesh Nair',
        specialty: 'Corporate Law',
        location: 'Mumbai, India',
        experience: 12,
        rating: 4.7,
        photoUrl:
            'https://barcouncilstorage.blob.core.windows.net/documents-live/143/1/1688638147207.JPG',
        description: 'Expert in corporate legal matters and contracts.',
        enrollmentNumber: 'ENR-56789',
        mobileNumber: '09123456789',
        practicePlace: 'Bombay High Court',
      ),
      Lawyer(
        id: '5',
        name: 'Adv. Meena Iyer',
        specialty: 'Property Law',
        location: 'Chennai, India',
        experience: 15,
        rating: 4.9,
        photoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJYn0RQ1zsViEZD4HCry8yuR3rMFsXTehG1A&s',
        description: 'Handles property disputes and real estate legalities.',
        enrollmentNumber: 'ENR-91011',
        mobileNumber: '09098765432',
        practicePlace: 'Madras High Court',
      ),
      Lawyer(
          id: '6',
          name: 'Adv. David Williams',
          specialty: 'Immigration Law',
          location: 'London, UK',
          experience: 9,
          rating: 4.6,
          photoUrl:
              'https://content.jdmagicbox.com/comp/jamshedpur/dc/0657px657.x657.100421112039.w4m1dc/catalogue/m-b-subhrahmanyam-and-associates-sakchi-jamshedpur-lawyers-w8ulxmo2yh.jpg',
          description: 'Specializes in immigration and asylum cases.',
          enrollmentNumber: 'ENR-11223',
          mobileNumber: '+44 123 456 7890',
          practicePlace: 'London Crown Court',
          isTopLawyer: true),
      Lawyer(
          id: '7',
          name: 'Adv. Priya Sharma',
          specialty: 'Tax Law',
          location: 'Delhi, India',
          experience: 11,
          rating: 4.4,
          photoUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1A4C7m5Pu5SyqiFKrEk_OunW9hDPzWFhGJQ&s',
          description: 'Expert in tax regulations and litigation.',
          enrollmentNumber: 'ENR-33445',
          mobileNumber: '09811223344',
          practicePlace: 'Delhi High Court',
          isTopLawyer: true),
    ];

    // Update the lawyers list
    lawyers.value = fetchedLawyers;
  }

  // Filter top lawyers
  List<Lawyer> get topLawyers =>
      lawyers.where((lawyer) => lawyer.isTopLawyer).toList();
}
