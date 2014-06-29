requirejs.config({
  baseUrl: ""
  paths:
    es5shim: "../bower_components/es5-shim"
    jquery: "../bower_components/jquery/dist/jquery"
    flight: "../bower_components/flight/lib"
})

require([
  "jquery"
  "flight/debug"
  "./test"
  "es5shim/es5-shim"
  "es5shim/es5-sham"
], ($, debug, test) ->
  debug.enable(true)
  test.attachTo(document)
)
