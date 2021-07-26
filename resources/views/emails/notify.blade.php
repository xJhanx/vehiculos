<div>
    Los usuarios registrados el día de hoy es:
    @foreach ($users as $user)
    <div class="row">
        {{$user->name}}
    </div> 
     @endforeach
</div>
