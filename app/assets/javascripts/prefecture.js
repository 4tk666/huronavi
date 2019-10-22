$(function(){
  $("#prefecture").on("mouseover",function(){
    $(".prefecture-list").removeClass("prefecture-url");
    $("#prefecture").addClass("prefecture-header");
    $(".prefecture-list").addClass("prefecture-header");
  });
  $(".prefecture-url").on("mouseleave",function(){
    $(".prefecture-list").addClass("prefecture-url");
  });
});
$(function(){
  $("#search-icon").on("click",function(){
    $(".nav-header__before").hide();
    $(".prefecture-list").hide();
    $("#search-form").removeClass("search-form");
  });
  $("#times-icon").on("click",function(){
    $("#search-form").addClass("search-form");
    $(".nav-header__before").show();
    $(document).on("mouseover","#prefecture",function(){
      $(".prefecture-list").show();
    });
    $(document).on("mouseleave",".prefecture-list",function(){
      $(".prefecture-list").hide();
  });
  });
});