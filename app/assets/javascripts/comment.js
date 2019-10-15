$(function(){
  function buildHTML(comment) {
    var html = `<div class="comments-huro__list">
                  <div class="comment-user"> <img class="user-icon" src="${ comment.user_icon }" width="40px" height="40px">
                    <div class="comment-nickname">${comment.user_nickname}</div>
                  </div>
                  <div class="comment-text">
                    <div class="comment-text__box">
                      <p>${comment.text}</p>
                    </div>
                  </div>
                </div>`
    return html;
  }
  $("#submit_btn").on("submit",function(e){
    e.preventDefault();
    var formDate = new FormData(this);
    var href = window.location.href + '/comments'
    $.ajax({
      url: href,
      type: "POST",
      data: formDate,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      console.log(data);
      var html = buildHTML(data);
      $('.comments-huro').append(html)
      $('#comment_text').val('')
      $('form')[0].reset();
    })
    .fail(function(){
      alert('error');
    })
    .always(() => {
      $(".comment-btn").removeAttr("disabled");
    });
  });
});