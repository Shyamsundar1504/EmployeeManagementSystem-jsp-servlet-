function filterTable() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search");
  filter = input.value.toUpperCase();
  table = document.querySelector("table");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows in the tbody, starting from index 1 to skip the table header
  for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td");
    var matchFound = false;
    for (var j = 0; j < td.length; j++) {
      var cell = td[j];
      if (cell) {
        txtValue = cell.textContent || cell.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          matchFound = true;
          break;
        }
      }
    }
    // Show or hide row based on matchFound
    if (matchFound) {
      tr[i].style.display = "";
    } else {
      tr[i].style.display = "none";
    }
  }
}