import 'package:flutter/material.dart';
import 'package:stopover_app/model/poi.dart';
import 'package:stopover_app/widget/list_image_container.dart';

class PoiList extends StatelessWidget {
  final List<Poi> _pois;

  PoiList(this._pois);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _createCard(_pois[index]);
      },
      itemCount: _pois.length,
    );
  }

  Widget _createCard(Poi poi) {
    return Semantics(
      child: Card(
        child: Stack(
          children: <Widget>[
            ListImageContainer(poi.imageUrl),
            Text(
              poi.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
