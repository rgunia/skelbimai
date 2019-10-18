

<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header"><?php echo e($category->title); ?></div>

                    <div class="card-body">
                        <form action="<?php echo e(route('advert.store')); ?>" method="post">
                            <?php echo csrf_field(); ?>
                            <input  type="hidden" name="category_id" value="<?php echo e($category->id); ?>" >
                            <input  type="text" name="title" placeholder="Pavadinimas" class="form-control mb-2 mt-2" >
                            <textarea class="form-control mb-2 mt-2" name="content_text" placeholder="Skelbimo turinys"></textarea>
                            <input  type="text" name="image" placeholder="Nuotrauka" class="form-control mb-2 mt-2" >
                            <input  type="number" name="price" placeholder="Kaina" class="form-control mb-2 mt-2" >

                            <select name="city_id" class="form-control mb-2 mt-2">
                                <option >Miestas</option>
                                <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($city->id); ?>"><?php echo e($city->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>

                            <hr>


                                <?php if(!empty($attributes)): ?>
                            <?php $__currentLoopData = $attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                     <?php if($attribute->attributes->type->name != 'select'): ?>
                                        <input type="<?php echo e($attribute->attributes->type->name); ?>" <?php if($attribute->attributes->type->name == 'checkbox'): ?>
                                        class="d-inline mb-2" <?php else: ?> class="form-control mb-2 mt-2" <?php endif; ?>
                                         name="super_attribute_<?php echo e($attribute->attributes->name); ?>"
                                               <?php if($attribute->attributes->type->name == 'checkbox'): ?>value="1" <?php endif; ?>
                                               placeholder="<?php echo e($attribute->attributes->lable); ?>">
                                    <?php endif; ?>

                                         <?php if($attribute->attributes->type->name == 'checkbox'): ?>
                                             <label><?php echo e($attribute->attributes->lable); ?></label>
                                         <?php endif; ?>

                                    <?php if($attribute->attributes->type->name == 'select'): ?>

                                        <div class="<?php echo e($attribute->attributes->name); ?>-wrapper">
                                        <select id="<?php echo e($attribute->attributes->name); ?>" name="super_attribute_<?php echo e($attribute->attributes->name); ?>" class="form-control mb-2 mt-2">
                                           <?php if($attribute->attributes->id == 33): ?>
                                                <option><?php echo e($attribute->attributes->lable); ?></option>
                                                <?php $__currentLoopData = $attribute->attributes->carMake; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $make): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($make->id); ?>"><?php echo e($make->lable); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php elseif($attribute->attributes->id == 34): ?>
                                                <option><?php echo e($attribute->attributes->lable); ?></option>
                                                <?php $__currentLoopData = $attribute->attributes->data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($data->id); ?>"><?php echo e($data->data); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php elseif(!empty($attribute->attributes->data)): ?>
                                                <option><?php echo e($attribute->attributes->lable); ?></option>
                                                <?php $__currentLoopData = $attribute->attributes->data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($data->data); ?>"><?php echo e($data->data); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        </select>
                                        </div>
                                    <?php endif; ?>

                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                            <hr>

                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="http://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous">
    </script>
    <script>
        jQuery(document).ready(function(){
            jQuery('#mark').change(function(e){
                e.preventDefault();

                jQuery.ajax({
                    url: "<?php echo e(route('ajax.carmodelresponse')); ?>",
                    method: 'post',
                    data: {markID: jQuery('#mark').val(), _token: '<?php echo e(csrf_token()); ?>'},
                    success: function (response) {
                        jQuery('.model-wrapper').html(response);
                    },
                });
            });
        });

    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/adverts/createStepTwo.blade.php ENDPATH**/ ?>