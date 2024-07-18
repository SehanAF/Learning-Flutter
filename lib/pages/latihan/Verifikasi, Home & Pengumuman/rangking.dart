// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class RangkingPengumuman extends StatelessWidget {
  const RangkingPengumuman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 10, // Adjust the width to fit the circle size
            height: 10, // Adjust the height to fit the circle size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back, color: Colors.orange,
                size: 15,
              
              ),
              onPressed: () {
                // Back button action
              },
            ),
          ),
        ),
        title: Text('Pengumuman', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: AnnouncementsList(),
    );
  }
}

class AnnouncementsList extends StatelessWidget {
  final List<Announcement> announcements = [
    Announcement('Kegiatan mengaji bersama di Kuttab Alfatih', 'Januari 1, 2024'),
    Announcement('Bermain bersama keluarga semua', 'Januari 1, 2024'),
    Announcement('Kunjungan ke pesantren sukabumi', 'September 24, 2024'),
    Announcement('Pengajian rutin anak dan keluarganya', 'September 24, 2024'),
    Announcement('Menghafal Al\'quran bersama keluarga', 'September 24, 2024'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        return AnnouncementTile(announcement: announcements[index]);
      },
    );
  }
}

class Announcement {
  final String title;
  final String date;

  Announcement(this.title, this.date);
}

class AnnouncementTile extends StatelessWidget {
  final Announcement announcement;

  AnnouncementTile({required this.announcement});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to relevant page
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.campaign, size: 30),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      announcement.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      announcement.date,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
