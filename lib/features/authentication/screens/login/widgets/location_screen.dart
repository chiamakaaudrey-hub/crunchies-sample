import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../home/home_screen.dart';
import '../../signup/widgets/drop_down_field.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String? selectedState;
  String? selectedCity;
  String? selectedOutlet;

  final List<String> states = [
    'Enugu',
    'Lagos',
    'Abuja',
  ];

  final List<String> cities = [
    'Enugu',
    'Nsukka',
    'Awgu',
  ];

  final List<String> outlets = [
    'Crunchies Fried Chicken, Agbani Road',
    'Crunchies Fried Chicken, Independence Layout',
    'Crunchies Fried Chicken, New Haven',
  ];

  bool get isFormValid =>
      selectedState != null &&
          selectedCity != null &&
          selectedOutlet != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Text(
                'Enter Location',
                style: TextStyle(
                  color: AColors.navy,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                'Kindly choose a Crunchies outlet near you.',
                style: TextStyle(
                  color: AColors.textGrey,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 40),

              /// Location Illustration
              Center(
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: AColors.lightPink,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: AColors.primaryRed,
                    size: 70,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              /// STATE
              const Text(
                'State',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              DropdownField(
                hint: 'Select your state',
                value: selectedState,
                onTap: () => _showStatePicker(),
              ),

              const SizedBox(height: 25),

              /// CITY
              const Text(
                'City',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              DropdownField(
                hint: 'Select your city',
                value: selectedCity,
                onTap: selectedState == null
                    ? null
                    : () => _showCityPicker(),
              ),

              const SizedBox(height: 25),

              /// OUTLET
              const Text(
                'Outlet',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              DropdownField(
                hint: 'Select outlet',
                value: selectedOutlet,
                onTap: selectedCity == null
                    ? null
                    : () => _showOutletPicker(),
              ),

              const SizedBox(height: 40),

              /// BUTTON
              SizedBox(
                width: double.infinity,
                height: 62,
                child: ElevatedButton(
                  onPressed: isFormValid
                      ? () {
                    Get.offAll(
                          () => const HomeScreen(),
                    );
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AColors.buttonRed,
                    disabledBackgroundColor:
                    Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Set Location',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Support',
                    style: TextStyle(
                      color: AColors.primaryRed,
                      decoration:
                      TextDecoration.underline,
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

  void _showStatePicker() {
    _showPicker(
      title: 'Select State',
      items: states,
      onSelected: (value) {
        setState(() {
          selectedState = value;
          selectedCity = null;
          selectedOutlet = null;
        });
      },
    );
  }

  void _showCityPicker() {
    _showPicker(
      title: 'Select City',
      items: cities,
      onSelected: (value) {
        setState(() {
          selectedCity = value;
          selectedOutlet = null;
        });
      },
    );
  }

  void _showOutletPicker() {
    _showPicker(
      title: 'Select Outlet',
      items: outlets,
      onSelected: (value) {
        setState(() {
          selectedOutlet = value;
        });
      },
    );
  }

  void _showPicker({
    required String title,
    required List<String> items,
    required Function(String) onSelected,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return SafeArea(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(items[index]),
                onTap: () {
                  Navigator.pop(context);
                  onSelected(items[index]);
                },
              );
            },
          ),
        );
      },
    );
  }
}