import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_map_polyline/google_map_polyline.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission/permission.dart';

class GoogleLocation extends StatefulWidget {
  @override
  _GoogleLocationState createState() => _GoogleLocationState();
}

class _GoogleLocationState extends State<GoogleLocation> {

  Completer<GoogleMapController> _controller = Completer();


  getlocation()async {

  Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
return position;
  }
// Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

//drowing polylines

final Set<Polyline> polyline = {};
// GoogleMapController _controller;

  List<LatLng> routeCoords;
  GoogleMapPolyline googleMapPolyline =
      new GoogleMapPolyline(apiKey: "AIzaSyBx4pPCTEVCblBcUfS1_naeUELebnJfHn4");

  getsomePoints() async {
    var permissions =
        await Permission.getPermissionsStatus([PermissionName.Location]);
    if (permissions[0].permissionStatus == PermissionStatus.notAgain) {
      var askpermissions =
          await Permission.requestPermissions([PermissionName.Location]);
    } else {
      routeCoords = await googleMapPolyline.getCoordinatesWithLocation(
          origin: LatLng(40.6782, -73.9442),
          destination: LatLng(40.6944, -73.9212),
          mode: RouteMode.driving);
    }
  }

  getaddressPoints() async {
    routeCoords = await googleMapPolyline.getPolylineCoordinatesWithAddress(
            origin: '55 Kingston Ave, Brooklyn, NY 11213, USA',
            destination: '178 Broadway, Brooklyn, NY 11211, USA',
            mode: RouteMode.driving);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getaddressPoints();
  }


//method for calling map








 void onMapCreated(GoogleMapController controller) {
    setState(() {
      // _controller = controller;

      polyline.add(Polyline(
          polylineId: PolylineId('route1'),
          visible: true,
          points: routeCoords,
          width: 4,
          color: Colors.blue,
          startCap: Cap.roundCap,
          endCap: Cap.buttCap));
    });
  }

//static locations
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);






  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.height / 2.7,
      width: MediaQuery.of(context).size.width,
      // child: Image.network(
      //   "https://2.bp.blogspot.com/-rAvZDK7KWWU/W4GIDCyrHTI/AAAAAAAAAFI/cn250kQYsD8_u8P-6FkrBixQ3QZ4ApsxACLcBGAs/s320/route_google_map.png",
      //   fit: BoxFit.cover,
      // ),



child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
          CameraPosition(target: LatLng(40.6782, -73.9442), zoom: 14.0),
        myLocationEnabled: true,
        polylines: polyline,
        
        // cameraTargetBounds: getlocation(),

// indoorViewEnabled: getlocation(),
        
        // initialCameraPosition: CameraPosition(
        // getlocation(),
        //   zoom: 11,
        // ),
        onMapCreated: onMapCreated,
      ),

    );
  }
 

}
