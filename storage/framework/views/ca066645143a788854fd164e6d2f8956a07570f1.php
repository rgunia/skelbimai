
<?php use Carbon\Carbon; ?>
<?php $__env->startSection('content'); ?>
    <div class="container">
        <div>
            <h1> Admin Panel </h1>

            <a class="btn btn-secondary" href="<?php echo e(route('city.index')); ?>">
                City
            </a>
            <a class="btn btn-secondary" href="<?php echo e(route('category.index')); ?>">
                Category
            </a>
            <a class="btn btn-secondary" href="<?php echo e(route('admin.Messages')); ?>">
                Messages
            </a>
            <a class="btn btn-secondary" href="<?php echo e(route('attributeset.index')); ?>">
                Attribute Sets
            </a>
            <a class="btn btn-secondary" href="<?php echo e(route('attribute.index')); ?>">
                Attributes
            </a>
        </div>

    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/Admin/adminPanel.blade.php ENDPATH**/ ?>