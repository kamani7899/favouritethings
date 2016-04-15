$(function(){

  var $container = $('#picture');

  $container.imagesLoaded(function(){
    $container.masonry({
      itemSelector: '.box',
      columnWidth: 100
    });
  });
});