import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleMapController _mapController;

  void onmapcreated(GoogleMapController mapController){
    _mapController=mapController;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _mapController.animateCamera(CameraUpdate.newLatLng(LatLng(-18.032192, -70.274102)));

        },
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: onmapcreated,
            onTap: (latLng) {
              var latitude = latLng.latitude;
              var longitude = latLng.longitude;
              print("$latitude , $longitude");
            },
            initialCameraPosition: CameraPosition(target: LatLng(-12.0485,-76.9711)),
          ),
          Center(child: FlatButton(
              onPressed: (){},
              child: Container(color: Colors.red,height: 100,width: 100,child: Text("hola"),)),)
        ],
      ),
    );
  }
}