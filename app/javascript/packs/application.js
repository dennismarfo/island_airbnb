import "bootstrap";


import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { initMapbox2 } from '../plugins/init_mapbox2';
initMapbox2();

import { typedHome } from '../components/typed';
if (window.location.href === "https://island-airbnb.herokuapp.com/" ){
 typedHome();
};

import "../plugins/flatpickr"

const button = document.getElementById('book')

button.addEventListener('click', () => {
  const popup = document.getElementById('popup')
  const price = parseInt(popup.dataset.price)

  const checkin = document.getElementById('booking_check_in_date')
  const checkout = document.getElementById('booking_check_out_date')

  console.log(checkin)
  console.log(checkout)

  // Price OK
  // Date de fin - date de début (check transforme tes date etc)
  // opération
  // Dans Popup addAdjacentHTML ( => )
})
