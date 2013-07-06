# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#alert2').click  ->
    alert(this.getAttribute('data-message'))
    return false

  $.plot($("#placeholder2"), [ {yaxis: { max: 2 }, label: 'Dancing Phalanges', data: [[0, 0], [2, 2] ]  }]  )

  $.plot($('#mmmpie'), [{label: 'Series 1', data: 50}, {label: 'Series 2', data: 25}, {label: 'Series 3', data: 25} ], {series: {pie: { show: true }}})
