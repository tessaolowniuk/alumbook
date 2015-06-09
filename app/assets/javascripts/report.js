// author: Brett Bush

// Hides all report form divs when selecting a report to run
function hide_all_report_form_divs()
{
  for(var i = 1; i <= 8; i++)
  {
    var div_to_hide = "report_type_form_" + i;
    document.getElementById(div_to_hide).style.display = "none";
  }
}

// Displays the selected div and hides all others when a report is selected
function onchange_report_type_handler()
{
  hide_all_report_form_divs();
  var div_to_show = "report_type_form_" + document.getElementById('report_type').value;
  document.getElementById(div_to_show).style.display = "block";
}

// Toggles between hiding/revealing the form to create a new saved list
function toggle_saved_list_form()
{
  if(!$('#saved_list_form').is(':visible'))
  {
    document.getElementById("saved_list_form").style.display = "block";
  }
  else
  {
    document.getElementById("saved_list_form").style.display = "none";
  }
}

// Transforms 'show' page into a printable page and opens print prompt
function report_print_page()
{
  // Store if saved list form is visible
  var saved_list_form_visible = $('#saved_list_form').is(':visible');

  to_report_print_layout();

  // Hide non-printable elements, prompt for printing, display non-printable elements
  // Code provided by: Professor St. Clair (North Central College)
  $('.noprint').hide();
  window.print();
  $('.noprint').show();

  undo_report_print_layout();

  // If saved list form disappeared/appeared during print, toggle it back
  if(saved_list_form_visible != $('#saved_list_form').is(':visible'))
  {
    toggle_saved_list_form();
  }
}

// Transforms 'show' page into a printable format
function to_report_print_layout()
{
  // Create table border
  var table = document.getElementsByClassName("report_results_table");
  table[0].style.border = "1px solid black";

  // Create table entry borders
  var th = document.getElementsByClassName("report_results_td");
  for(var i = 0; i < th.length; i++)
  {
    th[i].style.border = "1px solid black";
  }

  // Display the current date and time in a hidden header
  document.getElementById("print_date").innerHTML = Date();
}

// Transform 'show' page from printable format back to regular format
function undo_report_print_layout()
{
  // Remove table border
  var table = document.getElementsByClassName("report_results_table");
  table[0].style.border = "none";

  // Remove table entry borders
  var th = document.getElementsByClassName("report_results_td");
  for(var i = 0; i < th.length; i++)
  {
    th[i].style.border = "none";
  }

  // Erase current date and time
  document.getElementById("print_date").innerHTML = "";
}

// Reset the report selection tag to default
function report_form_reset()
{
  var select_tag = document.getElementById("report_type");
  select_tag.selectedIndex = 0;
}
