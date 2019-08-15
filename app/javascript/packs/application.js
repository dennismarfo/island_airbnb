import "bootstrap";


import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { typedHome } from '../components/typed';
typedHome();

import "../plugins/flatpickr"

