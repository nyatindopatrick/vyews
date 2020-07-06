$(function () {
  $('#pictureInput').on('change', function (event) {
    var files = event.target.files;
    var image = files[0];
    var reader = new FileReader();
    reader.onload = function (file) {
      var img = new Image();
      img.src = file.target.result;
      $('#target').html(img);
    };
    reader.readAsDataURL(image);
  });
});

$('#mydiv').click(function () {
  $('#searchinput').toggleClass('show-search hide-search');
});

$('.nav-tabs li a').click(function () {
  $('.nav-tabs li').removeClass('active');
  $(this).parent().addClass('active');
});


