// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery-ui/widgets/draggable
//= require popper
//= require bootstrap
//= require turbolinks
//= require_tree .
$.ajaxSetup({
    headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }
});

function reload_cards() {
    $(".card").draggable({
        stop: function (event, ui) {
            // Create element object
            var card = {};
            card["element_id"] = event.target.id;
            card["position_top"] = ui.position.top;
            card["position_left"] = ui.position.left;
            console.log(ui.position);
            $.ajax({
                url: "/dashboard",
                type: 'PUT',
                data: card,
                success: function(result) {
                    console.log(JSON.stringify(card))
                }
            });
        }
    });
}
