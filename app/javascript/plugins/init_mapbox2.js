import mapboxgl from 'mapbox-gl';


const mapElement = document.getElementById('map2');
const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map2',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkerToMap = (map, marker) => {

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
};

const fitMapToMarker = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  marker = bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox2 = () => {
  if (mapElement) {
    const map = buildMap();
    const marker = JSON.parse(mapElement.dataset.marker);
    addMarkerToMap(map, marker);
    fitMapToMarker(map, marker);
  }
};

export { initMapbox2 };
