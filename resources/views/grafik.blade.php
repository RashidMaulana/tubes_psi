@extends('layouts.template')
@section('title','Grafik Pengunjung')
@push('custom-script')

<script src="{{ asset('assets/plugins/chart.js/Chart.min.js') }}"></script>
<script src="{{ asset('assets/dist/js/demo.js') }}"></script>
<script src="{{ asset('assets/dist/js/pages/dashboard3.js') }}"></script>

<script>
  var get_tanggal = {!!$tanggal!!}
  var tanggal = get_tanggal.map(tanggal => tanggal.tanggal);
  var get_visitor = {!!$visitor!!}
  var visitor = get_visitor.map(visitor => visitor.visitor);
var areaChartData = {
      labels  : tanggal,
      datasets: [
        {
          label               : 'Jumlah Total Pengunjung Perhari',
          backgroundColor     : 'rgba(60,141,188,0.9)',
          borderColor         : 'rgba(60,141,188,0.8)',
          pointRadius          : true,
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data                : visitor
        }
      ]
    }

  var areaChartOptions = {
      maintainAspectRatio : false,
      responsive : true,
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          gridLines : {
            display : true,
          }
        }],
        yAxes: [{
          gridLines : {
            display : false,
          }
        }]
      }
    }
    var lineChartCanvas = $('#grafik').get(0).getContext('2d')
    var lineChartOptions = $.extend(true, {}, areaChartOptions)
    var lineChartData = $.extend(true, {}, areaChartData)
    lineChartData.datasets[0].fill = false;
    lineChartOptions.datasetFill = false;

    var lineChart = new Chart(lineChartCanvas, {
      type: 'line',
      data: lineChartData,
      options: lineChartOptions
    })
</script>

@endpush
@section('content')
<div class="content-wrapper">
    <div class="content">
      <div class="container-fluid">
        <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Grafik Harian Jumlah Pengunjung</h3>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="grafik" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
       </div>
    </div>
</div>

@endsection
          
            

