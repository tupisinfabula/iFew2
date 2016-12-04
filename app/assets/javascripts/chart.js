$(function() {
    $.ajax({
      url: "/history",
      method: "POST",
      data: {},
      dataType:"json"
    }).done(function(responseData){
      console.log(responseData);

      drawChart('myChart', responseData.labels,
        [{label:'length', data: responseData.values, backgroundColor: "rgba(153,255,51,0.4)"},
        {label:'time', data: responseData.values, backgroundColor: "rgba(153,200,51,0.4)"}]);
         drawChart('myChart2', responseData.labels,
           [{label:'Run2', data: responseData.values, backgroundColor: "rgba(153,255,51,0.4)"},
            {label:'Run2', data: responseData.values, backgroundColor: "rgba(153,200,51,0.4)"}]);
      console.log(responseData.labels);
      console.log(responseData.values);
      //location.reload();
    }).fail(function(){
      console.log('Fail');
    }).always(function(){
      console.log("Always");
    })

    var drawChart = function (id, labels, datasets/*label, labels, data,backgroundColor*/){
      var ctx = document.getElementById(id).getContext('2d');
      var myChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: labels,
        datasets: datasets/*[{
          label: label,
          data: data,
          backgroundColor: backgroundColor
        }]*/
      }
      });
    }

  })
