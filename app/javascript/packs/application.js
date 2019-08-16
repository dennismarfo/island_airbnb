import "bootstrap";


import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { initMapbox2 } from '../plugins/init_mapbox2';
initMapbox2();

import { typedHome } from '../components/typed';
if (window.location.href === "https://ibaybeach.herokuapp.com/" || window.location.href === "http://localhost:3000/" ){
 typedHome();
};

import "../plugins/flatpickr"

const button = document.getElementById('book')
if (button) {
  button.addEventListener('click', () => {
    const popup = document.getElementById('popup')
    const price = parseInt(popup.dataset.price)

    const checkin = document.getElementById('booking_check_in_date').value
    const checkout = document.getElementById('booking_check_out_date').value

    var time = new Date(checkin).getTime() / 1000
    var time2 = new Date(checkout).getTime() / 1000

    const total = ((time2 - time) * price) /  86400
  // Price OK
  // Date de fin - date de début (check transforme tes date etc)
  // opération
  // Dans Popup addAdjacentHTML ( => )

    document.getElementById("prix").innerHTML = total
  })

}




// popup.innerHTML('beforeend', total)
// ((booking.check_out_date - booking.check_in_date) * booking.property.price).to_i
