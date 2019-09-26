$(function(){
  $('#star').raty({
    size     : 36,
    starOff: '/assets/star-off.png',
    starOn : '/assets/star-on.png',
    starHalf: '/assets/star-half.png',
    half: true,
    scoreName: 'review[rate]' 
  });
  // var e = document.getElementById('rate');
  // var score = e.getAttribute('data-review-rate');
  $(".contents-main__list__new__review__rate").raty({
    size     : 36,
    starOff: '/assets/star-off.png',
    starOn : '/assets/star-on.png',
    starHalf: '/assets/star-half.png',
    half: true,
    readOnly: true,
    // score: score,
  });
});
