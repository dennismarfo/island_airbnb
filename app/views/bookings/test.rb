 <%# @bookings.each do |booking| %>

<!--     <%# if  booking.check_in_date <= Date.today &&  booking.check_out_date >= Date.today  do %>

      <h3> Current voyages </h3>
      <div class="col-4">
        <%#= link_to property_path(property) do %>
          <div class="card-trip rounded-lg">
            <%= cl_image_tag booking.property.photo, width: 400, height: 300, crop: :fill%>
            <div class="d-flex">
              <div class="card-trip-infos">
                <div>
                  <h2>
                    <%=link_to booking.property.name, property_path(property) %>
                  </h2>
                  <p>
                    <%= booking.property.country %>
                    <p> <%= booking.check_in_date %> - <%= booking.check_out_date %></p>
                  </p>
                </div>
              </div>

              <div class="" style="align-items: center;
      display: flex;     margin-left: auto; padding-right: 5px;">
                <h6><%= booking.property.price %> € </h6>
              </div>
            </div>
          </div>
        <%# end %>
      </div>

    <%# elsif  booking.check_in_date > Date.today do %>

    <h3>Future Voyages</h3>

      <div class="card-product col-6">
        <%= cl_image_tag booking.property.photo %>
        <div class="d-flex">
          <div class="card-product-infos">
            <h2> <%#= booking.property.name %></h2>
            <p> <%#= booking.check_in_date %> - <%#= booking.check_out_date %></p>
          </div>
          <div class="" style="align-items: center;
      display: flex; padding-right: 5px; margin-left: auto;">
            <h4> <%#= booking.total_price %></h4>
          </div>
        </div>
      </div>


    <%# elsif booking.check_out_date < Date.today  do %>
    <h3>Past voyages</h3>
      <div class="card-product col-6">
        <%= cl_image_tag booking.property.photo %>
        <div class="d-flex">
          <div class="card-product-infos">
            <h2> <%= booking.property.name %></h2>
            <p> <%= booking.check_in_date %> - <%= booking.check_out_date %></p>
          </div>
          <div class="" style="align-items: center;
      display: flex; padding-right: 5px; margin-left: auto;">
            <h4> <%= booking.total_price %></h4>
          </div>
        </div>
      </div>

    <%# end %>
  <%# end %> -->
