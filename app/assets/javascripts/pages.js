$(document).off('keyup', '#query-input');
$(document).on('keyup', '#query-input', function() {
  let queryValue = this.value;

  window.clearTimeout(window.searchTimeout);
  window.searchTimeout = setTimeout(function() {
    executeSearch(queryValue);
  }, 250);
});

$(document).off('keydown', '#query-input');
$(document).on('keydown', '#query-input', function() {
  window.clearTimeout(window.searchTimeout);
});

function executeSearch(string) {
  console.log(`Searching for string ${string}`)
  $.get(`/search?query=${string}`)
}