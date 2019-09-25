<select name="super_attribute_model" class="form-control mb-2 mt-2">
    <option>Modelis</option>
    @foreach($models as $model)
        <option value="{{$model->id}}">{{$model->lable}}</option>
    @endforeach
</select>