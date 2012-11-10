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
        $("h2:contains('Next Step'),h2:contains('Finished')").after(html);
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

      });


    }

  });

}(jQuery));
