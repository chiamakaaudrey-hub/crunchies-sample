import 'package:flutter/material.dart';

class LoyaltyFormScreen extends StatefulWidget {
  const LoyaltyFormScreen({super.key});

  @override
  State<LoyaltyFormScreen> createState() => _LoyaltyFormScreenState();
}

class _LoyaltyFormScreenState extends State<LoyaltyFormScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController outletCodeController = TextEditingController();

  String? selectedGender;
  bool acceptedTerms = false;

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        dobController.text =
        "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool canActivate =
        firstNameController.text.isNotEmpty &&
            lastNameController.text.isNotEmpty &&
            selectedGender != null &&
            dobController.text.isNotEmpty &&
            acceptedTerms;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),

              const Text(
                'Loyalty Program',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF17123B),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Fill in the right details here to get started',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF667085),
                ),
              ),

              const SizedBox(height: 40),

              /// First Name
              _buildLabel('First Name'),
              const SizedBox(height: 10),
              _buildTextField(
                controller: firstNameController,
                hint: 'Enter your first name',
              ),

              const SizedBox(height: 25),

              /// Last Name
              _buildLabel('Last name'),
              const SizedBox(height: 10),
              _buildTextField(
                controller: lastNameController,
                hint: 'Enter your last name',
              ),

              const SizedBox(height: 25),

              /// Gender
              _buildLabel('Gender'),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedGender,
                    isExpanded: true,
                    hint: const Text(
                      'Select a gender',
                      style: TextStyle(
                        color: Color(0xFFB8C0CC),
                        fontSize: 18,
                      ),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: const [
                      DropdownMenuItem(
                        value: 'Male',
                        child: Text('Male'),
                      ),
                      DropdownMenuItem(
                        value: 'Female',
                        child: Text('Female'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 25),

              /// DOB
              _buildLabel('Date of birth'),
              const SizedBox(height: 10),

              TextFormField(
                controller: dobController,
                readOnly: true,
                onTap: _selectDate,
                decoration: InputDecoration(
                  hintText: 'DD/MM',
                  suffixIcon: const Icon(Icons.calendar_month_outlined),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 22,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              /// Email
              _buildLabel('Email (Optional)'),
              const SizedBox(height: 10),
              _buildTextField(
                controller: emailController,
                hint: 'Enter your email',
              ),

              const SizedBox(height: 25),

              /// Outlet Code
              _buildLabel('Outlet code (optional)'),
              const SizedBox(height: 10),
              _buildTextField(
                controller: outletCodeController,
                hint: 'Enter outlet code',
              ),

              const SizedBox(height: 30),

              /// Terms Checkbox
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 26,
                    width: 26,
                    child: Checkbox(
                      value: acceptedTerms,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onChanged: (value) {
                        setState(() {
                          acceptedTerms = value!;
                        });
                      },
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF667085),
                        ),
                        children: [
                          TextSpan(
                            text: 'I have read ',
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Color(0xFF17123B),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' before activating',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              /// Activate Button
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: canActivate
                      ? () {
                    // Activate Loyalty Program
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE5093B),
                    disabledBackgroundColor: const Color(0xFFF1F1F1),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'Activate program',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color(0xFF475467),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
  }) {
    return TextFormField(
      controller: controller,
      onChanged: (_) => setState(() {}),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFFB8C0CC),
          fontSize: 18,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 22,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}