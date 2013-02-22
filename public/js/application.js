
function tweetTimeStamp(createdAtStr) {
    var tTime=new Date(Date.parse(createdAtStr));
    var cTime=new Date();
    var sinceMin=Math.round((cTime-tTime)/60000);
    if(sinceMin==0){
      var sinceSec=Math.round((cTime-tTime)/1000);
      if(sinceSec<10)
        var since='less than 10 seconds ago';
      else if(sinceSec<20)
        var since='less than 20 seconds ago';
      else
        var since='half a minute ago';
    }
    else if(sinceMin==1){
      var sinceSec=Math.round((cTime-tTime)/1000);
      if(sinceSec==30)
        var since='half a minute ago';
      else if(sinceSec<60)
        var since='less than a minute ago';
      else
        var since='1 minute ago';
    }
    else if(sinceMin<45)
      var since=sinceMin+' minutes ago';
    else if(sinceMin>44 && sinceMin<60)
      var since='about 1 hour ago';
    else if(sinceMin<1440){
      var sinceHr=Math.round(sinceMin/60);
      if(sinceHr==1)
        var since='about 1 hour ago';
      else
        var since='about '+sinceHr+' hours ago';
    }
    else if(sinceMin>1439 && sinceMin<2880)
      var since='1 day ago';
    else{
      var sinceDay=Math.round(sinceMin/1440);
      var since=sinceDay+' days ago';
    }
    return since;
}

function getTweets(query) {
  if (!getTweets.seenIds) getTweets.seenIds = []; // memoize ids
  var q = escape(query);
  $.getJSON("http://search.twitter.com/search.json?q="+q+"&rpp=12&callback=?", function(data) {     
    $( $(data.results).get().reverse() ).each(function(i,v) { 
      if ( $("#tweetStream #tweet_"+v.id_str)[0] ) return;
      var time = tweetTimeStamp(v.created_at);
      v.time = time;

      var tweetWithLinks = v.text.
        replace(/[A-Za-z]+:\/\/[A-Za-z0-9-_]+\.[A-Za-z0-9-_:%&;\?\/.=]+/g, function(s){return s.link(s)}).
        replace(/[@]+[A-Za-z0-9-_]+/g, function(s){
          return s.link("http://twitter.com/"+s.replace("@",""));
        }).
        replace(/[#]+[A-Za-z0-9-_]+/, function(s){
          return s.link("http://twitter.com/search?q="+escape(s));
        }).
        replace(/[]+[A-Za-z0-9-_]+/, function(s){return s.link(s)}); // not sure if this does anything
      v.tweet_with_links = tweetWithLinks;
      var tweetHtml = ich.tweetTemplate(v);
      $("#tweetStream").prepend(tweetHtml);
    });
  });
};


(function($) {


  $(function() {
    $('.show-hints').click(function() {
      $(this).closest('.hints').find('.commands').toggle();
    });
  });


  $(document).ready(function(){

    if ( $("#tweetStream")[0] ) {
      getTweets("#railsbridge");
      setInterval(function () { getTweets("#railsbridge") }, 10000);
    }


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
          $("span#name").html("CHANGE ME");
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
