require(['jquery','lazy_load','svg_replace'],
  function ( $,    lazyload,   SvgReplace ) {
  'use strict';
  var svg = new SvgReplace();
  svg.replaceAll();
  $("img.lazy").show().lazyload({ effect : "fadeIn", event: 'kick' });
  setTimeout(function () {
    $("img.lazy").trigger('kick');
  }, 210);
});
