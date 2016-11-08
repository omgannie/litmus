// $(document).ready(function(){
//   $(".select-genre").hide();
//   displayGenreOption();
// });

// function displayGenreOption(){
//   $(".passage form").on("submit", function(event){
//     event.preventDefault();
//     var text = $("#passage-body").text();
//     // console.log(text);

//     // var ajaxRequest = $.ajax({
//     //   url: "/passages",
//     //   method: "POST",
//     //   data: { passage: {body: text } }
//     // })

//     // $(".select-genre").show();
//     // $(".passage").hide();
//   })
// }

// function ajaxFormHandler() {
//   $('.new_passage').on('submit', function(event) {
//     event.preventDefault();

//     var text = $('.new_passage').text();

//     $.ajax({
//       url: '/passages',
//       method: 'POST',
//       data: { passage: {body: text} }
//     }).done(function(response) {
//       $('.passage').hide();
//       $('body').append(response);
//       createGradient();
//     }).fail(function(event) {
//       console.log('error');
//     }).always(function(event) {
//       console.log('complete');
//     });

//   });
// };
