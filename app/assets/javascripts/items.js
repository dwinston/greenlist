jQuery.fn.submitOnClick = function() {
  this.find('input[type=submit]').remove();
  this.find('label').click(function() {
    $(this).parent('form').submit();
  });
  return this;
}

$(function() {
  $('.edit_item').submitOnClick();
});
