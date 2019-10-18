<select id="model-input" name="super_attribute_model" class="large-input">
    <option>Modelis</option>
    @foreach($models as $model)
        <option value="{{$model->id}}">{{$model->lable}}</option>
    @endforeach
</select>