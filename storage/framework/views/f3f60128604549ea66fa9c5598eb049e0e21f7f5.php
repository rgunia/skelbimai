<select id="model-input" name="super_attribute_model" class="large-input">
    <option>Modelis</option>
    <?php $__currentLoopData = $models; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $model): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <option value="<?php echo e($model->id); ?>"><?php echo e($model->lable); ?></option>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/adverts/additional/modelSelect.blade.php ENDPATH**/ ?>