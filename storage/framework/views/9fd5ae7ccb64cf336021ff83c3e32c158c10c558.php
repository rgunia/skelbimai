

<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="container">

            <!-- Portfolio Item Heading -->
            <h1 class="my-4">HI, <?php echo e($user->name); ?>!
                <small><?php if(auth()->check() && auth()->user()->hasRole('admin')): ?> Admin <?php endif; ?></small>
            </h1>

            <!-- Portfolio Item Row -->
            <div class="row">

                <div class="col-md-8">
                    <img class="img-fluid" src="http://194.5.157.99/laravel/projectlaravel/public/images/<?php echo e($profile->image); ?>" alt="">
                </div>

                <div class="col-md-4">
                    <h3 class="my-3">About Me:</h3>
                    <p>
                        <?php echo e($profile->about); ?>

                    </p>
                    <h3 class="my-3">Details</h3>
                    <div>Name: <?php echo e($user->name); ?></div>
                    <div>Email: <?php echo e($user->email); ?></div>
                    <div>Phone: <?php echo e($profile->phone); ?></div>
                    <div>City: <?php echo e($profile->city->name); ?></div>
                    <div>Age: <?php echo e($profile->age); ?></div>
                    <div>Status: <?php echo e($profile->status); ?></div>

                    <br>

                    <form class="d-inline" action="<?php echo e(route('user.edit', $user->id)); ?>"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                    <form class="d-inline" action="<?php echo e(route('user.destroy', $user->id)); ?>"> <?php echo method_field('DELETE'); ?> <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>


                    <form action="<?php echo e(route('profile.storeImage')); ?>" method="post" enctype="multipart/form-data" class="mt-3">
                            <label>Select Profile picture:</label>
                            <?php echo csrf_field(); ?>
                            <input type="file" name="file" id="file">
                            <input type="submit" value="Upload" name="submit">
                        </form>
                    </h4>

                </div>



            </div>
            <!-- /.row -->

            <!-- Related Projects Row -->
            <h3 class="my-4">Related Projects</h3>

            <div class="row">
                <?php $__currentLoopData = $adverts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advert): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="<?php echo e(route('advert.show', $advert->slug)); ?>">
                        <img class="img-fluid" src="<?php echo e($advert->image); ?>" alt="">
                    </a>
                </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
            <!-- /.row -->

        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/user/profile.blade.php ENDPATH**/ ?>