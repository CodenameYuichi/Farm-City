$(document).ready(function() {
  if($('#map').length != 0) {
    handler = Gmaps.build('Google');
    handler.buildMap({ internal: {id: 'map'}}, function(){
      var markers = handler.addMarkers(nodes);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(12);
      }
    );
  }
});
