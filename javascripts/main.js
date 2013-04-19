// no overlap when jumping to anchors thanks to:
// https://github.com/twitter/bootstrap/issues/1768#issuecomment-6531466
var shiftWindow = function() { scrollBy(0, -40) };
window.addEventListener("hashchange", shiftWindow);
$(function(){
  if (window.location.hash) {
    shiftWindow();
  }
});
