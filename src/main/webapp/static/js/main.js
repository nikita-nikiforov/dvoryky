var mly = new Mapillary.Viewer(
    'mly',
    // Replace this with your own client ID from mapillary.com
    'dS0xakRsTmFMbW40VzdEOG9EeG40UTpiMjZmYjcwOTQ0MmE5ZGRl',
    'QyKETfeUiifXX3dbKiRt8g',
    {
        component: {
            cover: false
        }
    });

mapboxgl.accessToken = 'pk.eyJ1IjoibmlraWZvcm92cGl6emEiLCJhIjoiY2o5ajE2dDVmMHpqOTJxcDd4MHJ5YW5rbSJ9.mIuGjdr5w1vXbyTshvHcww';

var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [24.0319, 49.8414],
    zoom: 15
});

var geojson = {
    "type": "FeatureCollection",
    "features": [
        {
            "type": "Feature",
            "properties": {
                "mlyKey": "QyKETfeUiifXX3dbKiRt8g"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [
                    24.0319, 49.8414
                ]
            }
        },
        {
            "type": "Feature",
            "properties": {
                "mlyKey": "uW9famW94TL_2kS1kV6x9w"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [
                    24.0300, 49.8416
                ]
            }
        }
    ]
};

geojson.features.forEach(function(marker) {
    var el = document.createElement('div');
    el.className = 'marker';

    el.addEventListener('click', function () {
        mly.moveToKey(marker.properties.mlyKey);
        
    })

    new mapboxgl.Marker(el)
        .setLngLat(marker.geometry.coordinates)
        .addTo(map);
})