(function($) {

  $(function() {
    $('.show-hints').click(function() {
      $(this).closest('.hints').find('.commands').toggle();
    });
  });


  $(document).ready(function(){

    if (location.href.search("/curriculum") !== -1 &&
        location.href.search("/curriculum_toc") === -1 
    ) {  /* show the progress checkbox and email field */

      $.get("/student", function(rawdata){
        var data = JSON.parse(rawdata);  
        var html = ich.studentProgress(data);
        var completions = data.completions;



        $("h2:contains('Next Step'),h2:contains('Finished')").after(html);

        // set checked attribute of the completion checkbox
        for (var i = 0, g = completions.length; i < g; i++) {
          if (completions[i].page ===  $("input#doneBox").val()) {
            // this page has been completed and checked before
            $("input#doneBox").prop('checked', true);
            break;
          } else {
            $("input#doneBox").prop('checked', false);
          }
        }

        if (data.name) {
          $("span#name").attr('contenteditable', false);
        } else {
          $("span#name").html("CHANGME");
        }

        $("span[contenteditable=true]").blur(function(){
          var field = $(this).attr('id');
          var value = $(this).text();
          $.post("/student", 
            field + "=" + value,
            function(data) {
              console.log("data: " + data);
            }
          );
        });
        $("input#doneBox").change(function() {
          if ($(this).is(':checked')) {
            var page =  $(this).val(); 
            $.post("/completions", 
              {page: page},
              function(data) {
                // console.log("data: " + data);
              }
            );
          
          }
        });

      });

    }

  });

}(jQuery));
