import 'package:flutter/material.dart';

void main() {
  runApp(const WebPresentationApp());
}

class WebPresentationApp extends StatelessWidget {
  const WebPresentationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The World Wide Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PresentationScreen(),
      },
    );
  }
}

class SlideData {
  final String title;
  final String content;
  final String imageUrl;

  SlideData({
    required this.title,
    required this.content,
    required this.imageUrl,
  });
}

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({super.key});

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<SlideData> slides = [
    SlideData(
      title: "The World Wide Web",
      content: "Overview, Protocols, and Languages\n\nAssignment No 4\nLect. 28",
      imageUrl: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Overview of the World Wide Web",
      content: "The World Wide Web (WWW) is an information system where documents and other web resources are identified by Uniform Resource Locators (URLs).\n\nIt allows documents to be connected to other documents by hypertext links, enabling users to search for information by moving from one document to another.",
      imageUrl: "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Invention of the Web",
      content: "Invented by Tim Berners-Lee in 1989 at CERN.\n\nOriginally conceived and developed to meet the demand for automated information-sharing between scientists in universities and institutes around the world.",
      imageUrl: "https://images.unsplash.com/photo-1518770660439-4636190af475?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Distributed Web",
      content: "The Web is fundamentally distributed. No single computer hosts all the information.\n\nData is spread across millions of servers globally, working together to provide a seamless experience to the end user.",
      imageUrl: "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Client-Server Architecture",
      content: "The Web relies on the client-server model.\n\n• Clients (Web Browsers) request information.\n• Servers store and serve the requested information over the Internet.",
      imageUrl: "https://images.unsplash.com/photo-1550751827-4bd374c3f58b?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Addressable Web",
      content: "Every resource on the web has a unique address, known as a URL (Uniform Resource Locator) or URI (Uniform Resource Identifier).\n\nThis makes the Web 'addressable'—if a resource exists, you can point directly to it.",
      imageUrl: "https://images.unsplash.com/photo-1483817101829-339b08e8d83f?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Anatomy of a URL",
      content: "A typical URL contains several parts:\n\n• Scheme (e.g., https://)\n• Domain Name (e.g., www.example.com)\n• Path (e.g., /folder/page.html)\n• Parameters & Anchors",
      imageUrl: "https://images.unsplash.com/photo-1605152276897-4f618f831968?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Linked Web",
      content: "Hypertext is the core concept of the Web.\n\nDocuments contain hyperlinks that connect them to other documents. This creates a vast, interconnected network of information, allowing non-linear reading and discovery.",
      imageUrl: "https://images.unsplash.com/photo-1520869562399-e772f042f422?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Web Graph",
      content: "The collection of all web pages and the hyperlinks between them forms a massive mathematical structure called the Web Graph.\n\nSearch engines use the structure of this graph (e.g., PageRank) to determine the importance of pages.",
      imageUrl: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Protocols of the Web",
      content: "Protocols are the rules governing how data is transferred.\n\nThe foundational protocol of the Web is HTTP (Hypertext Transfer Protocol), and its secure version, HTTPS.",
      imageUrl: "https://images.unsplash.com/photo-1563203369-26f2e4a5ccf7?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Underlying Protocols",
      content: "While HTTP handles web documents, it relies on lower-level Internet protocols:\n\n• TCP/IP for routing packets of data across networks.\n• DNS (Domain Name System) to resolve human-readable domains into IP addresses.",
      imageUrl: "https://images.unsplash.com/photo-1544197150-b99a580bb7a8?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Searchable Web",
      content: "Because the Web contains billions of pages, finding information is critical.\n\nSearch engines act as the primary gateways, organizing the world's information and making it universally accessible.",
      imageUrl: "https://images.unsplash.com/photo-1531297172868-9f1d1b537cc8?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Crawling and Indexing",
      content: "Search engines use automated bots called 'Spiders' or 'Crawlers' to traverse the Linked Web.\n\nThey read pages and store the information in massive databases called Indexes, which are then queried when a user searches.",
      imageUrl: "https://images.unsplash.com/photo-1516116216624-53e697fedbea?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "The Languages of the Web",
      content: "Web browsers understand a specific set of languages to render pages and execute code.\n\nThe core triad of frontend web languages consists of HTML, CSS, and JavaScript.",
      imageUrl: "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "HTML: Structure",
      content: "HTML (HyperText Markup Language)\n\n• Purpose: Provides the basic structure and content of a webpage.\n• Characteristics: Uses tags to define elements like headings, paragraphs, images, and links. It is a markup language, not a programming language.",
      imageUrl: "https://images.unsplash.com/photo-1507721999472-8ed4421c4af2?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "CSS: Presentation",
      content: "CSS (Cascading Style Sheets)\n\n• Purpose: Controls the visual appearance and layout of HTML elements.\n• Characteristics: Uses rulesets containing selectors and declarations. Allows for responsive design, animations, and separation of content from design.",
      imageUrl: "https://images.unsplash.com/photo-1505685296765-3a2736de412f?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "JavaScript: Interactivity",
      content: "JavaScript (JS)\n\n• Purpose: Makes web pages interactive and dynamic.\n• Characteristics: A high-level, interpreted programming language. It can manipulate the Document Object Model (DOM), handle user events, and fetch data asynchronously.",
      imageUrl: "https://images.unsplash.com/photo-1555099962-4199c345e5dd?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "WebAssembly (Wasm)",
      content: "WebAssembly\n\n• Purpose: Runs high-performance applications in the browser.\n• Characteristics: A binary instruction format. It allows code written in languages like C, C++, and Rust to run on the web at near-native speed, complementing JavaScript.",
      imageUrl: "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Backend Web Languages",
      content: "While browsers use HTML/CSS/JS, servers use various languages to generate pages and manage databases.\n\nCommon examples include:\n• Python (Django/Flask)\n• JavaScript (Node.js)\n• PHP\n• Ruby\n• Java & C#",
      imageUrl: "https://images.unsplash.com/photo-1555066931-4365d14bab8c?q=80&w=1200&auto=format&fit=crop",
    ),
    SlideData(
      title: "Conclusion",
      content: "The World Wide Web is a distributed, addressable, and linked system.\n\nPowered by robust protocols like HTTP and dynamic languages like HTML, CSS, and JS, it has evolved into a highly searchable and interactive platform that connects the globe.",
      imageUrl: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=1200&auto=format&fit=crop",
    ),
  ];

  void _nextSlide() {
    if (_currentIndex < slides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevSlide() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: slides.length,
            itemBuilder: (context, index) {
              return SlideWidget(slide: slides[index]);
            },
          ),
          
          // Navigation Overlays
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton.filledTonal(
                  onPressed: _currentIndex > 0 ? _prevSlide : null,
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 32,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Slide ${_currentIndex + 1} of ${slides.length}',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton.filledTonal(
                  onPressed: _currentIndex < slides.length - 1 ? _nextSlide : null,
                  icon: const Icon(Icons.arrow_forward),
                  iconSize: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SlideWidget extends StatelessWidget {
  final SlideData slide;

  const SlideWidget({super.key, required this.slide});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 800;

        return Row(
          children: [
            if (!isMobile)
              Expanded(
                flex: 1,
                child: Image.network(
                  slide.imageUrl,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey[900],
                    child: const Center(child: Icon(Icons.image_not_supported, size: 64)),
                  ),
                ),
              ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(isMobile ? 32.0 : 64.0),
                decoration: BoxDecoration(
                  image: isMobile
                      ? DecorationImage(
                          image: NetworkImage(slide.imageUrl),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.85),
                            BlendMode.darken,
                          ),
                        )
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      slide.title,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      slide.content,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white70,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
