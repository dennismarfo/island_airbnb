import "bootstrap";


import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { initMapbox2 } from '../plugins/init_mapbox2';
initMapbox2();

import { typedHome } from '../components/typed';
if (window.location.href === "http://localhost:3000/" ){
 typedHome();
};

import "../plugins/flatpickr"

