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

      $.get("/student", function(data){

        var html = ich.studentProgress(JSON.parse(data));
        $("h2:contains('Next Step'),h2:contains('Finished')").after(html);

        if (JSON.parse(data).name !== 'Jane Doe') {
          $("span#name").attr('contenteditable', false);
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
    $("#student-identity")
  });

}(jQuery));
