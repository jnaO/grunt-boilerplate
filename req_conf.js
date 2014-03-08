require.config({
  baseUrl: 'app/static/js',
  paths: {
    'underscore': 'libs/underscore-min',
    'Modernizr': 'libs/modernizr',
    'lazy_load': 'libs/jquery.lazyload.min',
    'svg_replace': 'app/svg_replace',
    'jquery': 'libs/jquery-1.11.0.min'
  },
  shim : {
    'underscore': {
      exports: '_'
    },
    'Modernizr': {
      exports: 'Modernizr'
    }
  }
});
require([app]);