$(function(){
  function buildHTML(comment) {
    var img = comment.user_icon ? `<img src= ${ comment.user_icon }>` : ""; 
    var html = `<div class="comments-huro__list">
                  <div class="comment-user">${img}
                    <div class="comment-nickname">${comment.user_nickname}</div>
                  </div>
                  <div class="comment-text">
                    <div class="comment-text__box">
                      <p>${comment.text}</p>
                    </div>
                  </div>
                <div>`
    return html;
  }
  $("#submit_btn").on("submit",function(e){
    e.preventDefault();
    var formDate = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formDate,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comments-huro').append(html)
      $('#comment_text').val('')
    })
    .fail(function(){
      alert('error');
    })
  });
});