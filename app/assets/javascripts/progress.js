$(function(){
    $( ".js-edit" ).click(function(e) {
      e.preventDefault();
      // get id from edit
      var id = $(this).data('id');
    //  console.log(""id + "/edit");
      $.ajax({
        url: "progresses/" + id + "/edit",
        method: "POST",
        data: {},
        dataType:"json"
      }).done(function(responseData){
        console.log("id numero " + responseData.id)
        $("#progress_weight").val(responseData.weight);
        $("#progress_date_1i").val(responseData.year);
        $("#progress_date_2i").val(responseData.month);
        $("#progress_date_3i").val(responseData.day);
        //$(".progress_id").val(responseData.id);
      //  $("#new_progress").attr('action', '/progresses/' + id);
        $("#new_progress").attr('method', 'PUT');
          alert($(this).attr(id));
      }).fail(function(){
        console.log('Fail');
      })
  });
})
