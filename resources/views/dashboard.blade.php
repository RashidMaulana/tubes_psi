@extends('layouts.template')
@section('title','Home')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Dashboard</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-header border-0">
              <div class="d-flex justify-content-between">
                <h3 class="card-title">Grafik Pengunjung</h3>
                <a href="javascript:void(0);">View Report</a>          
              </div>
            </div>
            <div class="card-body">
              <div class="d-flex">
                <p class="d-flex flex-column">
                  <span>Total Pengunjung</span>
                  <span class="text-bold text-lg" id="total_visitor"></span>
                </p>
              </div>
              <!-- /.d-flex -->
              <div class="position-relative mb-4">
                <canvas id="visitors" height="200"></canvas>
              </div>
            </div>
          </div>
          <!-- /.card -->

          
          <!-- /.card -->
        </div>
        <!-- /.col-md-6 -->
        <div class="col-lg-6">
          <div class="card">
            <div class="card-header border-0">
              <div class="d-flex justify-content-between">
                <h3 class="card-title">Keuntungan Penjualan</h3>
                <a href="javascript:void(0);">View Report</a>
              </div>
            </div>
            <div class="card-body">
              <div class="d-flex">
                <p class="d-flex flex-column">
                  <span class="text-bold text-lg">
                    @php
                      $hasil_rupiah = "Rp " . number_format($total,2,',','.');    
                    @endphp
                    {{$hasil_rupiah}}
                  </span>
                </p>
              </div>
              <!-- /.d-flex -->
              <div class="position-relative mb-4">
                <canvas id="transactions" height="200"></canvas>
              </div>
              <div class="d-flex flex-row justify-content-end">
                <span class="mr-2">
                  <i class="fas fa-square text-primary"></i> Keuntungan perbulan
                </span>
              </div>
            </div>
          </div>
          <!-- /.col-lg-6 -->
        </div>
        <!-- /card -->
            <!-- /.card -->
          {{-- </div> --}}
          <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </div>
  
  <!-- /.content -->
</div>
@endsection
@push('custom-script')
<script src="{{ asset('assets/plugins/chart.js/Chart.min.js') }}"></script>
<script src="{{ asset('assets/dist/js/demo.js') }}"></script>
<script src="{{ asset('assets/dist/js/pages/dashboard3.js') }}"></script>
<script>
  var ticksStyle = {
     fontColor: '#495057',
     fontStyle: 'bold'
   }
   var mode = 'index'
   var intersect = true
   var get_bulan = {!!$bulan!!}
   var bulan = get_bulan.map(bulan => bulan.bulan);
    var get_profit = {!!$profit!!}
    var profit = get_profit.map(profit => profit.profit);
 
   var $salesChart = $('#transactions')
   // eslint-disable-next-line no-unused-vars
   var salesChart = new Chart($salesChart, {
     type: 'bar',
     data: {
       labels: bulan,
       datasets: [
         {
           backgroundColor: '#007bff',
           borderColor: '#007bff',
           data: profit
         },
       ]
     },
     options: {
       maintainAspectRatio: false,
       tooltips: {
         mode: mode,
         intersect: intersect
       },
       hover: {
         mode: mode,
         intersect: intersect
       },
       legend: {
         display: false
       },
       scales: {
         yAxes: [{
           display: true,
           gridLines: {
             display: true,
             lineWidth: '5px',
             color: 'rgba(0, 0, 0, .2)',
             zeroLineColor: '#000'
           },
           ticks: $.extend({
             beginAtZero: true,
 
             // Include a dollar sign in the ticks
             callback: function (value) {
               if (value >= 100000) {
                value = new Intl.NumberFormat('id-ID',{ style: 'currency', currency: 'IDR', minimumFractionDigits: 0 }).format(value);
               }
               return  value
             }
           }, ticksStyle)
         }],
         xAxes: [{
           display: true,
           gridLines: {
             display: true,
           },
           ticks: ticksStyle
         }]
       }
     }
   });

  //  visitor chart
  
  var get_bulan = {!!$bulan!!}
  var bulan = get_bulan.map(bulan => bulan.bulan);
  var get_visitor = {!!$visitor!!}
  var visitor = get_visitor.map(visitor => visitor.visitor);
  var $visitorsChart = $('#visitors')
  // eslint-disable-next-line no-unused-vars
  var visitorsChart = new Chart($visitorsChart, {
    data: {
      labels: bulan,
      datasets: [{
        type: 'line',
        data: visitor,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        pointBorderColor: '#007bff',
        pointBackgroundColor: '#007bff',
        fill: false
      },

    ]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          display: true,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,
            suggestedMax: 200
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: true
          },
          ticks: ticksStyle
        }]
      }
    }
  });
  var count = 0;
  for(var i = 0; i < visitor.length; i++){
  count = count + visitor[i];}
  console.log(count);
  var span = document.getElementById("total_visitor");
  span.textContent = count;
   </script>
   <!--Responsive DataTable-->
   <script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
@endpush