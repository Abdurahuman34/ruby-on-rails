$(function(){
    // alert("jquery is working ")

    $("#comment-body").on("input", function(){
   const value = $(this).value().trim();
   const submitButton = $(this).closest("form").find('input[type ="submit"]')

    if (value  === ''){
        $(this).css("border-color", "red")
        submitButton.prop("disabled", true)

    }else {
        $(this).css("border-color", " ")
        submitButton.prop("disabled", false)
    }

    });

    $("#load-comments").on('click', function() {
        const url = "/categories/3/articles/20/comments"
        console.log($.getJSON(url));
        $.getJSON(url, function(data){
            console.log(data)
        })
        data.forEach(function(comment) {
            $('#comments').append('<div>' + comment.body + 
            '</div>');
        });
    })
    .fail(function(jqXHR, textStatus, errorThrown) {
        console.error('Ajax error:', errorThrown);
        alert('Failed to load comments.');
    });

    });
       $('#like').on('click', function (){

})


   