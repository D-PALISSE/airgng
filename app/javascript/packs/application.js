import "bootstrap";
import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'

flatpickr(".datepicker", {
  mode: "range",
  minDate: "today",
  dateFormat: "d-m-Y",
  onChange: function(selectedDates, dateStr, instance) {
    // console.log(dateStr)
    // console.log(selectedDates)
    // console.log(selectedDates[selectedDates.length-1])
    const periodChosen = selectedDates.length == 2
    if (periodChosen) {
      const totalAmountSpan = document.getElementById('total_amount')

      const beginningDate = selectedDates[0]
      const endDate = selectedDates[selectedDates.length-1]

      const goatDailyPrice = instance.element.dataset.dailyPrice

      const daysCount = (endDate - beginningDate) / 60 / 60 / 24 / 1000

      totalAmountSpan.innerText = daysCount * goatDailyPrice
      const beginningDateInput = document.getElementById('booking_beginning_date')
      const endDateInput = document.getElementById('booking_end_date')
      beginningDateInput.value = beginningDate
      endDateInput.value = endDate
    }
  },
})
