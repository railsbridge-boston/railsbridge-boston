
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



        $("h2:contains('Next Step'),h2:contains('All Done'), h2:contains('Finished')").before(html);

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

    } else {
        if ( location.href.search("/curriculum_toc" ) != -1 ) {

            $.get("/student", function(rawdata){
                var data = JSON.parse(rawdata);

                  // ☐ ☑

                  var link = $(".content li:not(:has(em))");
                  link.prepend("<span class='check'>☐</span> ").
                    find("a").
                    after( "<span class='completionCount'></span>");

                  var completions = data["completions"];

                  for (var i = 0, g = completions.length; i < g; i++) {
                      var pieces = completions[i].page.split("/");
                      var last = pieces[pieces.length -1];
                      var element = $(".content a[href$='" + last + "']").parent();
                      element.html( element.html().replace("☐", "☑") )
                  }
                drawPieCharts();
                setInterval(drawPieCharts, 2000);

            });
        }
    }



  });

  function drawPieCharts()  {
    $.get("/completions", function(rawdata) {
              var summary = JSON.parse(rawdata); 
              var completions = summary.completions;
              var total_students = summary.total_students;
              for (var i = 0, g = completions.length; i < g; i++) {
                  var pieces = completions[i].page.split("/");
                  var last = pieces[pieces.length -1];
                  var aTag = $(".content a[href$='" + last + "']");
                  var li = aTag.parent();
                  var spanTag = li.find("span.completionCount");
                  spanTag.sparkline([ completions[i].count, total_students ] , {type: 'pie', sliceColors: ['#F00', '#CCC' ] });
              }

      });
  }
  

}(jQuery));
