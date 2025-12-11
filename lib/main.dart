import 'package:flutter/material.dart';


// ==========================================
// MAIN ENTRY POINT
// ==========================================

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GakumonHub Integrated',
      theme: ThemeData(
        // Default theme
        primaryColor: const Color(0xFF102A43),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0097A7),
          primary: const Color(0xFF102A43),
          secondary: const Color(0xFF0097A7),
        ),
      ),
      home: const RoleSelectionPage(),
    );
  }
}

// ==========================================
// ROLE SELECTION PAGE (NEW)
// ==========================================

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school, size: 80, color: Color(0xFF102A43)),
            const SizedBox(height: 20),
            const Text(
              "GakumonHub",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF102A43),
              ),
            ),
            const SizedBox(height: 10),
            const Text("Pilih Akses Masuk"),
            const SizedBox(height: 40),
            
            // Tombol Siswa
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.person),
                label: const Text("Masuk Aplikasi Siswa"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0097A7),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StudentLandingPage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            
            // Tombol Admin
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.admin_panel_settings),
                label: const Text("Masuk Halaman Admin"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AdminLoginPage()),
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

// =============================================================================
// BAGIAN 1: KODE VERSI SISWA
// (Class renamed: LoginPage -> StudentLoginPage, HomePage -> StudentHomePage, etc.)
// =============================================================================

class StudentLandingPage extends StatelessWidget {
  const StudentLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Colors specific to this page design
    const Color darkNavy = Color(0xFF102A43);
    const Color tealAccent = Color(0xFF0097A7);
    const Color greenAccent = Color(0xFF43A047);
    const Color lightMintBg = Color(0xFFF1F8E9);
    const Color lightGreyBg = Color(0xFFFAFAFA);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: darkNavy,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.menu_book_rounded, color: Colors.white, size: 20),
            SizedBox(width: 8),
            Text(
              "Gakumonhub",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: darkNavy, size: 20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- SECTION 1: HERO SECTION ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
              child: Column(
                children: [
                  const Text(
                    "Unlock Your\nPotential\nwith Gaku!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Your journey to mastering new skills begins here. Explore our diverse courses and expert-led programs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentCoursePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tealAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Start Learning Today",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- SECTION 2: TESTIMONIALS ---
            Container(
              width: double.infinity,
              color: lightGreyBg,
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "What Our Students Say",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Testimonial Card
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Stars
                        Row(
                          children: List.generate(
                              5,
                              (index) => const Icon(Icons.star,
                                  color: Color(0xFF0097A7), size: 20)),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          '"Gakumonhub transformed my career! The content is practical and the mentors are amazing."',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                            fontSize: 15,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80'),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Aisha Rahman",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  "Lead Developer at TechCorp",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- SECTION 3: CTA (Call to Action) ---
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
                decoration: BoxDecoration(
                  color: lightMintBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: greenAccent, width: 2),
                      ),
                      child: const Icon(Icons.check, color: greenAccent, size: 24),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Ready to Get Started?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Join thousands of learners today and begin your free trial!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StudentLoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greenAccent,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Sign Up for Free",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // --- SECTION 4: FOOTER ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: darkNavy,
              child: const Text(
                "© 2024 Gakumonhub. Semua Hak Dilindungi.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkNavy = Color(0xFF102A43);
    const Color tealAccent = Color(0xFF0097A7);
    const Color greyText = Color(0xFF627D98);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 1. Custom Header
          Container(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            color: darkNavy,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Text(
                    "Selamat Datang, Fitra!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80',
                  ),
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          ),

          // 2. Scrollable Main Content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Selamat Datang di\nBimbingan Belajar\nKami!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Tempat terbaik untuk meningkatkan\nPengetahuan dan Keterampilan Anda.",
                      style: TextStyle(
                        fontSize: 16,
                        color: greyText,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 32),

                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade200),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Gakumonhub",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Gakumonhub adalah platform bimbingan belajar terkemuka yang membantu Anda mencapai potensi penuh melalui pembelajaran interaktif.",
                            style: TextStyle(
                              fontSize: 14,
                              color: greyText,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 20),
                          
                          const Text(
                            "Kelas Anda :",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 12),

                          Container(
                            height: 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE0F2F1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                'https://cdni.iconscout.com/illustration/premium/thumb/web-development-2974925-2477356.png', 
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Center(child: Icon(Icons.image, size: 50, color: Colors.grey));
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),

                          const Text(
                            "USER INTERFACE DESIGN",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87,
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 20),

                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                debugPrint("Akses Kelas Clicked");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: tealAccent,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                "Akses Kelas",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 3. Footer
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            color: darkNavy,
            child: const Text(
              "© 2024 Gakumonhub. Semua Hak Dilindungi.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StudentCoursePage extends StatelessWidget {
  const StudentCoursePage({super.key});

  final Color darkBlue = const Color(0xFF13304A);
  final Color tealColor = const Color(0xFF028A94);
  final Color greenColor = const Color(0xFF5EA84D);
  final Color lightGreenBg = const Color(0xFFF4FAF4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.menu_book, color: Colors.white, size: 20),
            SizedBox(width: 8),
            Text(
              'Gakumonhub',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Popular Courses & Features',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            
            const SizedBox(height: 16),

            StudentCourseCard(
              imageUrl: 'https://images.unsplash.com/photo-1587620962725-abab7fe55159?q=80&w=600&auto=format&fit=crop',
              title: 'Advanced Web Development',
              description: 'Dive deep into modern web frameworks and build scalable applications with hands-on projects.',
              buttonText: 'Explore Course',
              buttonColor: tealColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentLoginPage()),
                );
              },
            ),
            StudentCourseCard(
              imageUrl: 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?q=80&w=600&auto=format&fit=crop',
              title: 'Data Science with Python',
              description: 'Learn data analysis, machine learning, and visualization techniques using Python libraries.',
              buttonText: 'View Details',
              buttonColor: tealColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentLoginPage()),
                );
              },
            ),
            StudentCourseCard(
              imageUrl: 'https://images.unsplash.com/photo-1557838923-2985c318be48?q=80&w=600&auto=format&fit=crop',
              title: 'Digital Marketing Fundamentals',
              description: 'Master SEO, social media marketing, email campaigns, and content strategy for business growth.',
              buttonText: 'Enroll Now',
              buttonColor: tealColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentLoginPage()),
                );
              },
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: lightGreenBg,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Icon(Icons.check_circle_outline, color: greenColor, size: 48),
                  const SizedBox(height: 12),
                  const Text(
                    'Ready to Get Started?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Join thousands of learners today and begin your free trial!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentLoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: greenColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      ),
                      child: const Text(
                      'Sign Up for Free',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              color: darkBlue,
              child: const Text(
                '© 2024 Gakumonhub. Semua Hak Dilindungi.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentCourseCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;

  const StudentCourseCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 150,
                color: Colors.grey[300],
                child: const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudentLoginPage extends StatelessWidget {
  const StudentLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StudentCommonAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Selamat Datang\nKembali',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Masuk untuk melanjutkan pembelajaran Anda',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 40),

              const StudentInputLabel(text: 'Email'),
              const StudentCustomTextField(
                hintText: 'Masukkan email Anda',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),

              const StudentInputLabel(text: 'Kata Sandi'),
              const StudentCustomTextField(
                hintText: 'Masukkan kata sandi Anda',
                icon: Icons.lock_outline,
                obscureText: true,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lupa Kata Sandi?',
                    style: TextStyle(
                      color: Color(0xFF028A94),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentHomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF028A94),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Masuk'),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentRegisterPage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF028A94),
                    side: const BorderSide(color: Color(0xFF028A94), width: 2),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Daftar'),
                ),
              ),

              const SizedBox(height: 24),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const StudentFooter(),
    );
  }
}

class StudentRegisterPage extends StatelessWidget {
  const StudentRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StudentCommonAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Buat Akun Baru Anda\nSekarang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Masuk untuk melanjutkan pembelajaran Anda',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 30),

              const StudentInputLabel(text: 'Nama Lengkap'),
              const StudentCustomTextField(
                hintText: 'Masukkan Nama Lengkap Anda',
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 16),

              const StudentInputLabel(text: 'Email'),
              const StudentCustomTextField(
                hintText: 'Masukkan email Anda',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 16),

              const StudentInputLabel(text: 'Kata Sandi'),
              const StudentCustomTextField(
                hintText: 'Masukkan kata sandi Anda',
                icon: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: 16),

              const StudentInputLabel(text: 'Konfirmasi Kata Sandi'),
              const StudentCustomTextField(
                hintText: 'Konfirmasi kata sandi Anda',
                icon: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentHomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF028A94),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text('Daftar'),
                ),
              ),

              const SizedBox(height: 24),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const StudentFooter(),
    );
  }
}

// Student Reusable Widgets
class StudentCommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentCommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF13304A),
      iconTheme: const IconThemeData(color: Colors.white),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.menu_book, color: Colors.white, size: 20),
          SizedBox(width: 8),
          Text(
            'Gakumonhub',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle, color: Colors.white),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class StudentInputLabel extends StatelessWidget {
  final String text;
  const StudentInputLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class StudentCustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const StudentCustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
        prefixIcon: Icon(icon, color: Colors.grey[500]),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF028A94), width: 2),
        ),
      ),
    );
  }
}

class StudentFooter extends StatelessWidget {
  const StudentFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: const Color(0xFF13304A),
      child: const Text(
        '© 2024 Gakumonhub. Semua Hak Dilindungi.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white70, fontSize: 12),
      ),
    );
  }
}
// ==========================================
// MAIN ENTRY POINT
// ==========================================


class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GakumonHub Admin',
      theme: ThemeData(
        primaryColor: const Color(0xFF102A43),
        scaffoldBackgroundColor: Colors.grey[50],
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.teal,
        ),
      ),
      // Langsung masuk ke Login Admin
      home: const AdminLoginPage(),
    );
  }
}

// ==========================================
// 1. HALAMAN LOGIN ADMIN
// Fokus: Input Widget, Container Decoration, Button Layout
// ==========================================

class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Media Query untuk Responsif Sederhana
    final isWide = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfffde2ef), Color(0xffdce9ff)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: isWide ? 400 : 320,
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.admin_panel_settings, size: 60, color: Colors.teal),
                  const SizedBox(height: 16),
                  const Text(
                    'Admin Portal',
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.teal
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Widget TextField
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Navigasi ke Dashboard
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigasi Push Replacement (Materi Assessment 2)
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(builder: (context) => const AdminDashboardPage())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Masuk'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ==========================================
// 2. HALAMAN DASHBOARD ADMIN
// Fokus: Drawer Navigation, Wrap Layout, AppBar
// ==========================================

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer Navigasi
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Dashboard Overview'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        actions: const [
           Padding(
             padding: EdgeInsets.only(right: 16.0),
             child: CircleAvatar(
               backgroundColor: Colors.white24,
               child: Icon(Icons.person, color: Colors.white),
             ),
           )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Banner (Container Layout)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.teal.shade800,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Selamat Datang, Admin!',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 22, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Pantau aktivitas belajar mengajar dan kelola data pengguna di sini.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              const Text(
                "Statistik Cepat",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              // Penggunaan Wrap untuk Layout Grid Sederhana
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: const [
                  AdminStatCard(
                    title: "Total Siswa", 
                    count: "120", 
                    icon: Icons.people, 
                    color: Colors.blue
                  ),
                  AdminStatCard(
                    title: "Tentor Aktif", 
                    count: "15", 
                    icon: Icons.school, 
                    color: Colors.orange
                  ),
                  AdminStatCard(
                    title: "Kelas", 
                    count: "8", 
                    icon: Icons.class_, 
                    color: Colors.purple
                  ),
                  AdminStatCard(
                    title: "Pesan Baru", 
                    count: "5", 
                    icon: Icons.message, 
                    color: Colors.red
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget Custom untuk Card Statistik (Modularisasi Widget)
class AdminStatCard extends StatelessWidget {
  final String title;
  final String count;
  final IconData icon;
  final MaterialColor color;

  const AdminStatCard({
    super.key, 
    required this.title, 
    required this.count, 
    required this.icon, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    // Layout Card
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.shade50,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(height: 12),
          Text(
            count,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 3. KOMPONEN NAVIGASI (DRAWER)
// Fokus: ListView Static, ListTile, Navigation PushReplacement
// ==========================================

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            accountName: Text("Administrator"),
            accountEmail: Text("admin@gakumon.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.admin_panel_settings, color: Colors.teal, size: 30),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard), 
            title: const Text('Dashboard'), 
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const AdminDashboardPage()))
          ),
          ListTile(
            leading: const Icon(Icons.people), 
            title: const Text('Kelola User'), 
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const AdminUsersPage()))
          ),
          ListTile(
            leading: const Icon(Icons.message), 
            title: const Text('Pesan Customer Service'), 
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const AdminMessagesPage()))
          ),
          ListTile(
            leading: const Icon(Icons.verified), 
            title: const Text('Verifikasi Tentor'), 
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const AdminTentorPage()))
          ),
          ListTile(
            leading: const Icon(Icons.verified), 
            title: const Text('Data Testimoni'), 
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const AdminTestimonialsPage()))
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red), 
            title: const Text('Keluar'), 
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const AdminLoginPage()))
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 4. HALAMAN KELOLA USER
// Fokus: DataTable Layout, SingleChildScrollView
// ==========================================

class AdminUsersPage extends StatelessWidget {
  const AdminUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Data Pengguna'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Daftar Semua User",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    // Layout Table (Pengganti List View Dinamis)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('No')),
                          DataColumn(label: Text('Nama')),
                          DataColumn(label: Text('Role')),
                          DataColumn(label: Text('Status')),
                          DataColumn(label: Text('Aksi')),
                        ],
                        rows: [
                          // Data Statis (Dummy) untuk Layout
                          _buildDataRow(1, "Naufal", "Siswa", true, context),
                          _buildDataRow(2, "Fara", "Tentor", true, context),
                          _buildDataRow(3, "Nindya", "Siswa", false, context),
                          _buildDataRow(4, "Budi", "Siswa", true, context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(int no, String name, String role, bool isActive, BuildContext context) {
    return DataRow(cells: [
      DataCell(Text(no.toString())),
      DataCell(Text(name)),
      DataCell(Text(role)),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: isActive ? Colors.green.shade100 : Colors.red.shade100,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            isActive ? 'Aktif' : 'Nonaktif',
            style: TextStyle(
              color: isActive ? Colors.green.shade800 : Colors.red.shade800,
              fontSize: 12
            ),
          ),
        )
      ),
      DataCell(
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                // Navigasi ke Detail (Contoh Layout Form)
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminUserDetailForm()));
              },
            ),
            // Tombol Hapus (Hanya UI, tanpa Dialog Alert Assesment 3)
            const IconButton(
              icon: Icon(Icons.delete, color: Colors.grey),
              onPressed: null, // Disabled untuk Assessment 2
            ),
          ],
        )
      ),
    ]);
  }
}

// ==========================================
// 5. HALAMAN DETAIL USER (FORM)
// Fokus: Form Layout, TextField, Dropdown
// ==========================================

class AdminUserDetailForm extends StatelessWidget {
  const AdminUserDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit User")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Nama Lengkap",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Role",
                border: OutlineInputBorder()
              ),
              items: const [
                DropdownMenuItem(value: "Siswa", child: Text("Siswa")),
                DropdownMenuItem(value: "Tentor", child: Text("Tentor")),
              ], 
              onChanged: (val) {},
              value: "Siswa",
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Batal"),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
                    child: const Text("Simpan"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ==========================================
// 6. HALAMAN PESAN (MESSAGES)
// Fokus: ListView Static dengan Custom Card Layout
// ==========================================

class AdminMessagesPage extends StatelessWidget {
  const AdminMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Pesan Customer Service'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          // Item Pesan 1 (Static Layout)
          MessageCard(
            sender: "Dewi (Mahasiswa)",
            email: "dewi@example.com",
            message: "Apakah ada voucher diskon untuk pendaftaran bulan ini?",
            time: "10:30 AM",
          ),
          SizedBox(height: 10),
          // Item Pesan 2
          MessageCard(
            sender: "Budi Santoso",
            email: "budi@example.com",
            message: "Saya mengalami kendala saat login di aplikasi siswa.",
            time: "Yesterday",
          ),
          SizedBox(height: 10),
          // Item Pesan 3
          MessageCard(
            sender: "Siti Aminah",
            email: "siti@example.com",
            message: "Bagaimana cara mendaftar menjadi tentor?",
            time: "2 Days ago",
          ),
        ],
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String sender;
  final String email;
  final String message;
  final String time;

  const MessageCard({
    super.key, 
    required this.sender, 
    required this.email, 
    required this.message, 
    required this.time
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(sender, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
            Text(email, style: TextStyle(color: Colors.teal.shade700, fontSize: 13)),
            const Divider(height: 24),
            Text(message),
            const SizedBox(height: 16),
            // Tombol Aksi Layout
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton.icon(
                  onPressed: () {}, 
                  icon: const Icon(Icons.reply, size: 16), 
                  label: const Text("Balas")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ==========================================
// HALAMAN TESTIMONI (VERSI ASSESSMENT 2)
// Fokus: ListView.builder dengan Data Statis
// ==========================================

class AdminTestimonialsPage extends StatelessWidget {
  const AdminTestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data Dummy untuk Tampilan (Pengganti API)
    final List<Map<String, dynamic>> testimonials = [
      {
        'id': 1,
        'name': 'Wenny Puteri',
        'comment': 'UI di web ini perlu perbaikan sedikit agar lebih ramah pengguna.',
        'rating': 3,
        'status': 'Pending',
      },
      {
        'id': 2,
        'name': 'Nindy',
        'comment': 'Materinya sangat bagus dan mudah dipahami! Terima kasih.',
        'rating': 5,
        'status': 'Approved',
      },
      {
        'id': 3,
        'name': 'Fara',
        'comment': 'Respon admin cepat, tapi videonya kadang buffering.',
        'rating': 4,
        'status': 'Rejected',
      },
    ];

    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Data Testimoni'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: testimonials.length,
        itemBuilder: (context, index) {
          final t = testimonials[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bagian Kiri: Konten Testimoni
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t['name'],
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        Text(t['comment']),
                        const SizedBox(height: 8),
                        // Menampilkan Bintang Rating
                        Row(
                          children: List.generate(
                            5,
                            (i) => Icon(
                              Icons.star,
                              size: 16,
                              color: i < t['rating'] ? Colors.amber : Colors.grey.shade300,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Badge Status
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: _getStatusColor(t['status']),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Status: ${t['status']}",
                            style: const TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Bagian Kanan: Tombol Aksi
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(80, 30),
                        ),
                        child: const Text("Setujui", style: TextStyle(fontSize: 12)),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.red,
                          minimumSize: const Size(80, 30),
                        ),
                        child: const Text("Tolak", style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Fungsi helper kecil untuk warna status
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Approved': return Colors.green;
      case 'Rejected': return Colors.red;
      default: return Colors.orange;
    }
  }
}

// ==========================================
// 7. HALAMAN VERIFIKASI TENTOR
// Fokus: Card Layout dengan ButtonBar
// ==========================================

class AdminTentorPage extends StatelessWidget {
  const AdminTentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: AppBar(
        title: const Text('Verifikasi Tentor'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Card Permohonan 1
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Text("A")),
                  title: const Text("Agus Setiawan"),
                  subtitle: const Text("Matematika • Pengalaman 3 Tahun"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    color: Colors.grey.shade100,
                    child: const Text("CV: Pernah mengajar di Bimbel X selama 2 tahun. Lulusan S1 Matematika UI."),
                  ),
                ),
                ButtonBar(
                  children: [
                    TextButton(onPressed: () {}, child: const Text("TOLAK", style: TextStyle(color: Colors.red))),
                    ElevatedButton(onPressed: () {}, child: const Text("SETUJUI")),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Card Permohonan 2
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Text("R")),
                  title: const Text("Rina Wati"),
                  subtitle: const Text("Bahasa Inggris • Fresh Graduate"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    color: Colors.grey.shade100,
                    child: const Text("CV: TOEFL Score 600. Aktif di organisasi kampus."),
                  ),
                ),
                ButtonBar(
                  children: [
                    TextButton(onPressed: () {}, child: const Text("TOLAK", style: TextStyle(color: Colors.red))),
                    ElevatedButton(onPressed: () {}, child: const Text("SETUJUI")),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}