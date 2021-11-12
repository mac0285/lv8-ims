@foreach($komputer as $komputer)
<div class="border-solid border-4 border-light-blue-500"> 

    <p class="price">Hostname: {{$komputer->hostname_comp}} | {{ $komputer->os_comp}}</p> 
    {!! DNS1D::getBarcodeHTML($komputer->ip_comp, "C128",1.4,22) !!}
    <p class="price">IP Address: {{$komputer->ip_comp}} Dept: {{ $komputer->dept_comp}}</p> 
   
  
</div>
  @endforeach