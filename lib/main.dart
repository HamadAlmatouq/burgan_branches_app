import 'package:flutter/material.dart';
import 'branches.dart';
import 'branch_detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Branches and their details
    List<Branches> branches = [
      Branches(
          name: 'Shuwaikh branch',
          imgPath: 'assets/Images/Shuwaikh_branch.png',
          details:
              "Opening hours 5:00pm-7:00pm\nClick to view details on this branch!",
          additionalDetails:
              "Located in Shuwaikh, this branch offers a wide range of services including personal banking, loans, and investment advice. Our dedicated staff is here to help you with all your financial needs."),
      Branches(
          name: 'Alsalam branch',
          imgPath: 'assets/Images/Alsalam_branch.jpeg',
          details:
              "Opening hours 8:30am-3:00pm\nClick to view details on this branch!",
          additionalDetails:
              "Located in Alsalam, this branch is known for its exceptional customer service. We provide a comfortable environment to discuss your banking options."),
      Branches(
          name: 'Head office branch',
          imgPath: 'assets/Images/Head_branch.jpg',
          details:
              "Opening hours 8:30am-3:00pm\nClick to view details on this branch!",
          additionalDetails:
              "The head office branch, located in the city center, offers full services including corporate banking, wealth management, and financial planning. Visit us for expert advice and personalized service."),
      Branches(
          name: 'Adailiya branch',
          imgPath: 'assets/Images/Adailiya_branch.jpg',
          details:
              "Opening hours 8:30am-3:00pm\nClick to view details on this branch!",
          additionalDetails:
              "Located in Adailiya, this branch is known for its customer service excellence and community involvement. We host regular workshops and seminars to educate our clients about financial literacy."),
      Branches(
          name: 'Bayan branch',
          imgPath: 'assets/Images/Bayan_branch.jpg',
          details:
              "Opening hours 8:30am-3:00pm\nClick to view details on this branch!",
          additionalDetails:
              "Located in Bayan, this branch specializes in providing financial solutions tailored for small businesses and entrepreneurs. We offer consulting services, business loans, and investment guidance to help you grow your enterprise. Our team is committed to your success."),
      Branches(
          name: 'Qurain branch',
          imgPath: 'assets/Images/Qurain_branch.jpg',
          details:
              "Opening hours 8:30am-3:00pm\nClick to view details on this branch!",
          additionalDetails:
              "Located in Qurain, this branch is dedicated to providing high-quality customer service. We offer a full range of banking products, including savings accounts, loans, and tailored investment options."),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Image.asset(
              "Assets/Images/Logo.png",
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A network of 29 branches located in all areas throughout Kuwait to get our best-in-class services closer to you.",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(height: 5), // Add space between text and border
                    Container(
                      height: 2.0, // Height of the blue border
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: branches.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        color: Colors.white,
                        elevation: 0,
                        child: ListTile(
                          leading: Image.asset(
                            branches[index].imgPath,
                            width: 70,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(branches[index].name),
                          subtitle: Text(branches[index].details),
                          onTap: () {
                            // Navigate to the detail screen, showing additional details
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BranchDetailScreen(branch: branches[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
