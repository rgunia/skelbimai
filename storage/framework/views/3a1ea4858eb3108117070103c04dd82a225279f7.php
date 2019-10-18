<?php use Carbon\Carbon; ?>
<?php $__env->startSection('content'); ?>



    <div class="d-flex justify-content-around">

        <div class="container">

            <!-- Page Heading -->
            <h1 class="my-4">Naujausi Skelbimai
            </h1>

            <hr class="border-info">




            <div class="container ">
                <div class="row ">

            <?php $__currentLoopData = $adverts->reverse(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advert): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                    <div class="car-card col-xs-12 col-sm-4 mt-3">
                        <div class="card">
                            <a class="img-card" style="position: relative; text-align: center; color: white;" href="<?php echo e(route('advert.show', $advert->slug)); ?>">
                                <img src="<?php echo e($advert->image); ?>">
                                <div style="font-size: 20px; position: absolute; bottom: 8px; left: 16px; text-shadow: 2px 1px 2px rgba(0,0,0,0.4), 0px -5px 35px rgba(255,255,255,0.3);"><b><?php echo e($advert->price); ?>€</b></div>
                            </a>
                            <div class="card-content">
                                <h4 class="card-title">
                                    <a style="font-size: 15px; color: #2CB2BC;" href="<?php echo e(route('advert.show', $advert->slug)); ?>">

                                        <?php $__currentLoopData = $advert->attributeValues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                           <?php if($value->attribute_id == 33 || $value->attribute_id == 34): ?>
                                               <?php echo e($value->value); ?>

                                           <?php elseif($value->attribute_id == 35): ?>
                                                <?php echo e($value->value); ?>m.
                                            <?php endif; ?>

                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    </a>
                                </h4>
                                <div class="" >

                                    <?php $__currentLoopData = $advert->attributeValues; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <?php if($value->attribute_id == 37 || $value->attribute_id == 38): ?>
                                            <?php echo e($value->value); ?>,
                                        <?php elseif($value->attribute_id == 39): ?>
                                            <?php echo e($value->value); ?>.
                                        <?php endif; ?>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                        Last Update: <?php echo e($advert->updated_at->diffForHumans()); ?>

                                </div>
                            </div>
                        </div>
                    </div>

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>

        </div>

    </div>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/home.blade.php ENDPATH**/ ?>