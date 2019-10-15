$(function(){
  $(".sub-image").on("mouseover",function(){
    var image = $(this).attr('src');
    var changeImage = `<img class="main-image" src="${image}" width="600px" height="400px">`
    $(".main-image").remove();
    $(".list_contents__main__photo__list").prepend(changeImage);
  });
});