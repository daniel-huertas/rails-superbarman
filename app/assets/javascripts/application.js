//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

//= require jquery-ui

//= require_tree .

// $("input.datepicker").each(function(input) {
//   $(this).datepicker({
//     dateFormat: "yy-mm-dd",
//     altField: $(this).next()
//   })
// })
  // If you use i18n-js you can set the locale like that
  // $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);

$("input.datepicker").each(function(input) {
  $(this).datepicker({
    dateFormat: "yy-mm-dd",
    altField: $(this).next()
  })

  // If you use i18n-js you can set the locale like that
  $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
})
