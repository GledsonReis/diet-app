// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import Chart from 'chart.js'
import '../src/sidebar'
global.toastr = require("toastr")

require("@nathanvda/cocoon")

Rails.start()
ActiveStorage.start()

$(document).ready(function () {
  let chart = document.getElementById('weightChart');
  if (chart) {
    let data = JSON.parse($(chart).attr("data"));
    let weightChart = new Chart(chart, {
      type: 'line',
      data: data,
      options: {
        responsive: true,
        plugins: {
          legend: {
            position: 'top',
          },
        },
        scales: {
          yAxes: [{
            scaleLabel: {
              display: true,
              labelString: 'kg'
            }
          }]
        }
      },
    });
  }  
});