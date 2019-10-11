$(function(){

  $("#file_0").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e){
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_0" ><div class="button"><button type = "button" id = "delete_btn_0">削除</button></div> `
      $("#image_0").html(html);
      $("#photo_0").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  $("#file_1").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e) {
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_1" ><div class="button"> <button type = "button" id = "delete_btn_1">削除</button>/div> `
      $("#image_1").html(html);
      $("#photo_1").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  $("#file_2").on("change",function(e){
      var reader = new FileReader();
      reader.onload = function(e){
        var loadedImageurl = e.target.result
        var html = `<img src="" id="photo_2" ><div class="button"><button type = "button" id = "delete_btn_2">削除</button></div> `
        $("#image_2").html(html);
        $("#photo_2").attr("src", loadedImageurl);
      }
      reader.readAsDataURL(e.target.files[0]);
    });

  $("#file_3").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e) {
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_3" ><div class="button"><button type = "button" id = "delete_btn_3">削除</button>/div> `
      $("#image_3").html(html);
      $("#photo_3").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  $("#file_4").on("change",function(e){
      var reader = new FileReader();
      reader.onload = function(e){
        var loadedImageurl = e.target.result
        var html = `<img src="" id="photo_4" ><div class="button"><button type = "button" id = "delete_btn_4">削除</button></div> `
        $("#image_4").html(html);
        $("#photo_4").attr("src", loadedImageurl);
      }
      reader.readAsDataURL(e.target.files[0]);
    });

  $("#file_5").on("change",function(e){
    var reader = new FileReader();
    reader.onload = function(e) {
      var loadedImageurl = e.target.result
      var html = `<img src="" id="photo_5" ><div class="button"> <button type = "button" id = "delete_btn_5">削除</button>/div> `
      $("#image_5").html(html);
      $("#photo_5").attr("src", loadedImageurl);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
  
  $(document).on("click", "#delete_btn_0", function(e){
    e.preventDefault();
    $("#file_0").val('');
    $("#image_0").html('');
  });

  $(document).on("click", "#delete_btn_1", function(e){
    e.preventDefault();
    $("#file_1").val('');
    $("#image_1").html('');
  });

  $(document).on("click", "#delete_btn_2", function(e){
    e.preventDefault();
    $("#file_2").val('');
    $("#image_2").html('');
  });

  $(document).on("click", "#delete_btn_3", function(e){
    e.preventDefault();
    $("#file_3").val('');
    $("#image_3").html('');
  });

  $(document).on("click", "#delete_btn_4", function(e){
    e.preventDefault();
    $("#file_4").val('');
    $("#image_4").html('');
  });

  $(document).on("click", "#delete_btn_5", function(e){
    e.preventDefault();
    $("#file_5").val('');
    $("#image_5").html('');
  });


});