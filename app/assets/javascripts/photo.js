$(function(){

  $("#file_0").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e){
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_0" ><button type = "button" id = "delete_btn_0">削除</button> `
      $("#image_0").html(html);
      $("#photo_0").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  $("#file_1").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e) {
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_1" > <button type = "button" id = "delete_btn_1">削除</button> `
      $("#image_1").html(html);
      $("#photo_1").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  $("#file_2").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e) {
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_2" > <button type = "button" id = "delete_btn_2">削除</button> `
      $("#image_2").html(html);
      $("#photo_2").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  $("#file_3").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e) {
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_3" > <button type = "button" id = "delete_btn_3">削除</button> `
      $("#image_3").html(html);
      $("#photo_3").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

});