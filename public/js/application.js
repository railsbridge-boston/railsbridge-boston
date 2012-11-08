(function($) {

  $(function() {
    $('.show-hints').click(function() {
      $(this).closest('.hints').find('.commands').toggle();
    });
  });

}(jQuery));
