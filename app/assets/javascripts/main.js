$(document).ready(function(){
  var d = new Date();
  var start_date = d.getFullYear() + "-" +

  $('#apt-date').datetimepicker({
      step: 30,
      disabledDates: ['2017-01-22 16:00', '2017-01-22 16:30', '2017-01-25 9:00'],
      formatDate: 'Y-m-d H:i',
      startDate: new Date()

  });
});
