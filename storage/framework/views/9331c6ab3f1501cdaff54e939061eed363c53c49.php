

<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Skelbimai</div>

                    <div class="card-body">
                        <form action="<?php echo e(route('advert.createsteptwo')); ?>" method="post">
                            <?php echo csrf_field(); ?>
                            <select name="category_id" class="form-control mb-2 mt-2">
                                <option >Kategorija</option>
                                <?php $__currentLoopData = $categories->where('parent_id', 0); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($category->id); ?> " class="font-weight-bold"><?php echo e($category->title); ?></option>
                                    <?php $__currentLoopData = $category->subCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($sub->id); ?>"><?php echo e($sub->title); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/adverts/create.blade.php ENDPATH**/ ?>