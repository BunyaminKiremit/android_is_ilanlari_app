import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:job_locater/model/Api_service.dart';

import 'package:job_locater/model/jobs_model.dart';
import 'package:job_locater/model/user_model.dart';
import 'package:job_locater/screens/jobsearch/search.dart';

import '../createresume/create_resume.dart';

class JobLocaterHome extends StatefulWidget {
  const JobLocaterHome({Key? key}) : super(key: key);

  @override
  _JobLocaterHomeState createState() => _JobLocaterHomeState();
}

class _JobLocaterHomeState extends State<JobLocaterHome> {
  FetchUserList _userList = FetchUserList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 102, 0),
        title: Text('İşim Cepte'),
        automaticallyImplyLeading: false,    
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchUser());
            },
            icon: Icon(Icons.search_sharp),
          )
        ],
      ),
      body: Center(
        child: FutureBuilder<List<Userlist>>(
            future: _userList.getuserList(),
            builder: (context, snapshot) {
              var data = snapshot.data;
              return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return Card(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          ListTile(
                            leading: Image.asset(
                              'assets/images/person.png',
                              height: 80,
                            ),
                            title: Text(
                              '${data?[index].jobTitle}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            subtitle: Text('${data?[index].date}'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.business_center_outlined,
                              size: 30,
                              color: Colors.orangeAccent,
                            ),
                            title: Text(
                              
                              'Şirket',
                              
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('${data?[index].companyMame}'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.location_on,
                              size: 30,
                              color: Colors.orangeAccent,
                            ),
                            title: Text(
                              'Lokasyon',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('${data?[index].location}'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.work,
                              size: 30,
                              color: Colors.orangeAccent,
                            ),
                            title: Text(
                              'Çalışma Şekli',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('${data?[index].jobType}'),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            //width: 100,
                            height: 50,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 255, 123, 0),
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                primary: Color.fromARGB(255, 255, 123, 0),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.open_in_new_sharp,
                                  color: Colors.black),
                              label: const Text(
                                'Başvur',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }),
      ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 102, 0),
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
    );
  }
}
