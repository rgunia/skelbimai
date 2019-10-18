
<?php use Carbon\Carbon; ?>
<?php $__env->startSection('content'); ?>



    <div class="d-flex justify-content-around">

        <div class="container">

            <!-- Page Heading -->
            <h1 class="my-3">Skelbimai pagal paieška
            </h1>
            <?php $__currentLoopData = $adverts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advert): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="container py-2">

                <div class="row">
                    <div class="col-lg-10 mx-auto">

                        <!-- List group-->
                        <ul class="list-group shadow">

                            <!-- list group item-->
                            <li class="list-group-item blackBackroung" style="height: 200px; position: relative;">
                                <!-- Custom content-->
                                <div class="media align-items-lg-center flex-column flex-lg-row blackBackroung" style="position: absolute; width: 95%; top: 50%; left: 50%; transform: translate(-50%,-50%);">
                                    <div class="media-body order-2 order-lg-1">
                                        <h5 class="mt-0 font-weight-bold mb-2" style="color: #2CB2BC; text-shadow: 0px -5px 35px rgba(255,255,255,0.3);">

                                            <?php $__currentLoopData = $advert->attributeValues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                                <?php if($value->attribute_id == 33 || $value->attribute_id == 34): ?>
                                                    <?php echo e($value->value); ?>

                                                <?php elseif($value->attribute_id == 35): ?>
                                                    <?php echo e($value->value); ?>m.
                                                <?php endif; ?>

                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                        </h5>
                                        <p class="font-italic text-muted mb-0 small">
                                            <?php $__currentLoopData = $advert->attributeValues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                                <?php if($value->attribute_id == 37 || $value->attribute_id == 38): ?>
                                                    <?php echo e($value->value); ?>,
                                                <?php elseif($value->attribute_id == 39): ?>
                                                    <?php echo e($value->value); ?>.
                                                <?php endif; ?>

                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                            Last Update: <?php echo e($advert->updated_at->diffForHumans()); ?>

                                        </p>
                                        <div class="d-flex align-items-center justify-content-between mt-1">
                                            <h6 class="font-weight-bold my-2" ><?php echo e($advert->price); ?>€</h6>
                                        </div>
                                    </div><img src="<?php echo e($advert->image); ?>" style="max-height: 180px;" alt="" width="200" class="ml-lg-5 order-1 order-lg-2">
                                </div>
                                <!-- End -->
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


        <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>

        </div>

        <div class="commertial rounded mr-3">
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/search/results.blade.php ENDPATH**/ ?>