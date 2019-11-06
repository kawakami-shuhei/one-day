$(function() {
  $('.header').click(function(){
    console.log('DADA')
  })

  $(".task-content__list-box__div-card").hover(function() {
    console.log(this)
    $(this).css("background", "rgb(224, 224, 224)");
    
  }, function() {
    $(this).css("background", "");
  });
});