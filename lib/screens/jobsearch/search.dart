import 'package:flutter/material.dart';
import 'package:job_locater/model/Api_service.dart';
import 'package:job_locater/model/user_model.dart';


class SearchUser extends SearchDelegate {
  FetchUserList _userList = FetchUserList();

  @override
  List<Widget> buildActions(BuildContext context) {
   
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close,color: Colors.orange,))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      
      icon: Icon(Icons.arrow_back_ios,color: Colors.orange,),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<Userlist>>(
        future: _userList.getuserList(query: query),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Userlist>? data = snapshot.data;
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
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search User'),
    );
  }
}
