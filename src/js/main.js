requirejs.config({
  baseUrl: '/src',
  paths: {
    'es5shim': '../bower_components/es5-shim',
    'jquery': '../bower_components/jquery/dist/jquery',
    'flight': '../bower_components/flight/lib'
  }
});

require(['jquery', 'flight/debug', './clickable', 'es5shim/es5-shim', 'es5shim/es5-sham'], function ($, debug, clickable) {
  debug.enable(true);
  console.log('Started');

  clickable.attachTo('h1');
});
