

<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-11 d-flex bd-highlight">


                <div class="card">


                    <div >

                        <div class="card-header h5" style="color: #2CB2BC;">
                            <?php if($advert->category->id == 100 || $advert->category->id == 101): ?>
                                <?php $__currentLoopData = $attributesValue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributeValue): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                     <?php if($attributeValue->attribute_id == 33): ?>
                                     <?php echo e($attributeValue->value); ?>

                                    <?php endif; ?>
                                         <?php if($attributeValue->attribute_id == 34): ?>
                                             <?php echo e($attributeValue->value); ?>

                                         <?php endif; ?>
                                         <?php if($attributeValue->attribute_id == 35): ?>
                                             <?php echo e($attributeValue->value); ?>m
                                         <?php endif; ?>
                                         <?php if($attributeValue->attribute_id == 37): ?>
                                             <?php echo e($attributeValue->value); ?>

                                         <?php endif; ?>
                                         <?php if($attributeValue->attribute_id == 38): ?>
                                             <?php echo e($attributeValue->value); ?>

                                         <?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                             <?php endif; ?>

                        </div>
                        <?php if($advert->user_id == Auth::user()->id): ?>
                            <a href="<?php echo e(route('advert.edit', $advert->id)); ?>"  class="btn btn-primary btn-lg btn-block mb-2"> Edit Advert </a>
                        <?php endif; ?>

                        <div class="d-flex bd-highlight pb-3">

                            

                            <div class="container rounded mt-1">
                                <hr class="bg-white">
                                <div class="d-block d-flex bd-highlight h4 text-info ">
                                    <div class="p-2 flex-fill bd-highlight blue-text" style="color: white;">Kaina:</div>
                                    <div class="p-2 flex-fill bd-highlight"><?php echo e($advert->price); ?>€</div>
                                </div>
                                <hr class="bg-white">


                                <div class="d-flex bd-highlight">

                                <div class="w-100" >
                                <?php $__currentLoopData = $attributesValue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributeValue): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($attributeValue->attribute_id == 35 || $attributeValue->attribute_id == 36): ?>
                                             <div class="d-inline">
                                        <?php else: ?>
                                             <div class="d-block">
                                        <?php endif; ?>
                                            <?php if($attributeValue->attributeOfValue->type_id == 5 && $attributeValue->value == 1): ?>
                                            <?php elseif($attributeValue->attribute_id == 35): ?>
                                            <?php echo e($attributeValue->attributeOfValue->lable); ?>:
                                            <?php elseif($attributeValue->attribute_id == 36): ?>
                                            <?php elseif($attributeValue->attribute_id == 41): ?>
                                                Variklis:
                                            <?php else: ?>
                                                <?php echo e($attributeValue->attributeOfValue->lable); ?>:
                                            <?php endif; ?>
                                            </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>


                                <div class="w-100">
                                    <?php $__currentLoopData = $attributesValue; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributeValue): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($attributeValue->attribute_id == 35 || $attributeValue->attribute_id == 36): ?>
                                            <div class="d-inline font-weight-bold">
                                        <?php else: ?>
                                            <div class="d-block font-weight-bold">
                                                <?php endif; ?>
                                                <?php if($attributeValue->attributeOfValue->type_id == 5 && $attributeValue->value == 1): ?>
                                                    <?php echo e($attributeValue->attributeOfValue->lable); ?>

                                                <?php elseif($attributeValue->attribute_id == 35): ?>
                                                    <?php echo e($attributeValue->value); ?>

                                                <?php elseif($attributeValue->attribute_id == 36): ?>
                                                    /<?php echo e($attributeValue->value); ?>m.
                                                <?php else: ?>
                                                    <?php echo e($attributeValue->value); ?>

                                                <?php endif; ?>
                                            </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>


                            <div class="d-flex bd-highlight mt-5">
                                <div class="h6" style="color: #2CB2BC;">Komentaras:</div>
                                <div style="width: 100%" class="pl-2">
                                <hr class="bg-white">
                                </div>

                            </div>
                            <div>
                                <?php echo e($advert->content); ?>

                            </div>


                            <div class="d-flex bd-highlight mt-5">
                                <div class="h6" style="color: #2CB2BC;">Kontaktai:</div>
                                <div style="width: 100%" class="pl-2">
                                <hr class="bg-white">
                                </div>

                            </div>
                            <div>
                                <?php echo e($profile->phone); ?>

                            </div>
                            <div>
                                Miestas: <?php echo e($advert->city->name); ?>

                            </div>

                        </div>

    
                            <div class="card-body">
                                <img src="<?php echo e($advert->image); ?>" class="rounded mx-auto d-block mh-100 mw-100" alt="image">
                            </div>
                        </div>

                    </div>


                    <div id="comment-section" class="card-body  mt-2 rounded" style="display: none">
                        <div class="card-header comment-bg rounded">Comments</div>
                        <div class="card-body">
                            <?php if(auth()->check() && auth()->user()->hasRole('admin')): ?>
                          <form class="d-flex bd-highlight" action="<?php echo e(route('comment.store')); ?>" method="post">
                                <?php echo csrf_field(); ?>
                              <textarea name="comment" class="form-control" type="text" placeholder="Enter your Comment"></textarea>
                              <input name="advert_id" type="hidden" value="<?php echo e($advert->id); ?>">
                              <button type="submit" class="btn btn-light">Comment</button>
                          </form>
                            <?php endif; ?>
                        </div>
                        <div class="card-body mt-1">
                            <?php $__currentLoopData = $comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $comment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="rounded border border-info mb-1">
                                <div class="card-header comment-bg rounded" ><?php echo e($comment->user->name); ?>


                                    <?php if(auth()->check() && auth()->user()->hasAnyRole('client|admin')): ?>
                                    <form class="d-inline bd-highlight float-sm-right " action="<?php echo e(route('comment.destroy',  $comment->id)); ?>" method="post">
                                        <?php echo csrf_field(); ?>
                                        <?php echo method_field('DELETE'); ?>
                                        <button type="submit" class="btn btn-light btn-sm">Delete Comment</button>
                                    </form>
                                    <?php endif; ?>

                                </div>
                                <div class="card-body blue-low-opacty">
                                    <?php echo e($comment->comment); ?>

                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                </div>

            </div>
        </div>
    </div>
        </div>
    </div>
    <button id="comment-button" class="btn btn-secondary button-css" style="display: block; width: 200px; margin: 0 auto; text-align: center; color: white; font-weight: bolder;">Comments</button>

    <script>
        $(document).ready(function(){
            $("#comment-button").click(function(){
                $("#comment-section").toggle();
            });
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/adverts/single.blade.php ENDPATH**/ ?>