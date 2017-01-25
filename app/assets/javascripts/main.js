$(document).ready(function(){
  var d = new Date();
  // var start_date = d.getFullYear() + "-";
  // var disablelocalTimes = ['2017-01-22 16:00', '2017-01-22 16:30', '2017-01-25 09:00'];

  if (typeof disableTheseTimes === 'undefined') {
    disableTheseTimes = [];
  }

  function disableDates(){
    // console.log(<%= Booking.all %>);
    // console.log(disableTheseTimes);
    // console.log(disablelocalTimes);
    $('#apt-date').datetimepicker({
        step: 30,
        disabledDates: disableTheseTimes,
        formatDate: 'Y-m-d H:i'
    });
  }
  if ($('body.bookings.new').length === 0)
  {
    disableDates();
  }
  if ($('body.bookings.edit').length === 0)
  {
    disableDates();
  }
});
