$(function(){
  $('#star').raty({
    size     : 36,
    starOff: 'https://i.gyazo.com/4c59d744351300e40105a0aaaf4a44ee.png',
    starOn : 'https://i.gyazo.com/95f15d51ece8113e8d24973d47a57cac.png',
    starHalf: 'https://i.gyazo.com/7822e4957b99bab445f913b0864f5b7c.png',
    half: true,
    scoreName: 'review[rate]' ,
  });
  // var e = document.getElementById('rate');
  // var score = e.getAttribute('data-review-rate');
  $(".contents-main__list__new__review__rate").raty({
    size     : 36,
    starOff: 'https://i.gyazo.com/4c59d744351300e40105a0aaaf4a44ee.png',
    starOn : 'https://i.gyazo.com/95f15d51ece8113e8d24973d47a57cac.png',
    starHalf: 'https://i.gyazo.com/7822e4957b99bab445f913b0864f5b7c.png',
    half: true,
    readOnly: true,
    // score: score,
  });
});
