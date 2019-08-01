@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
            <div class="card-header">Todo</div>
                <div class="card-body">
                    <form action="{{url('todo')}}" method="post">
                     {{csrf_field()}}
                      <div class="form-group">
                        <label for="exampleInputEmail1">Title</label>
                        <input type="text" class="form-control" name="name" placeholder="Enter title">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Description</label>
                        <input type="text" class="form-control" name="details" placeholder="details">
                      </div>
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>


            
        </div>

        <div class="col-md-12">
            <div class="card">
            <div class="card-header">Todo List</div>
                <div class="card-body">
                    <table width="100" class="table">
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Permited User</th>
                            <th>Action</th>
                        </tr>
                        @foreach($todo_list as $todo)
                        <tr>
                            <td>{{$loop->iteration ?? null}}</td>
                            <td>{{$todo->name ?? null}}</td>
                            <td>{{$todo->details ?? null}}</td>
                            <td>{{$todo->permited_user ?? null}}</td>
                            <td>Action</td>
                        </tr>
                        @endforeach
                        
                    </table>
                </div>
            </div>
           
        </div>
    </div>
</div>
@endsection
