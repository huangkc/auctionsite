$(document).ready(function() {
  $('#thank-you').hide();
  submitBid();
  addNewItem();  
  editItem();
  // submitEditForm();
});

var submitBid = function(){
	$('#bid-form').on('submit', function(event){
  $('#bid-form').toggle();
  $('#thank-you').show();
	})
}

var addNewItem = function(){
  $('.add-link').on('click', '#add-item-link', function(event){
    event.preventDefault();
    var route = '/items/new'
    var request = $.ajax({
      url: route,
      method: 'get'
    })
  request.done(function(response){
    console.log(response)
    $('.add-link').append(response);
  })    
  })
}

var editItem = function(){
  $('body').on('click', '#edit-link', function(event){
    event.preventDefault();
    var route = $(this).attr('href');
    console.log(route);
    var that = $(this).parent();
    console.log(that);
    var request = $.ajax({
      url: route,
      method: 'get'
    }) 
    request.done(function(response){
    var target = that;
    console.log(target);
    $(target).append(response);
  })    
  })
}

// var submitEditForm = function(){
//   $('.user-items-list').on('submit', '#form', function(event){
//     event.preventDefault();
//     var route = '/items/'+ target_id
//     console.log(route)
//     submitData = $(this).serialize;
//     var request = $.ajax({
//       url: route,
//       method: 'post'
//     })
//   request.done(function(response){
//     console.log(response)
//     $('#edit-item').append(response);
//   })    
//   })
// }





