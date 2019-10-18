

<?php $__env->startSection('content'); ?>

    <div class="tab-content">
        <div class="tab-pane active" id="inbox">

            <div class="container">
                <div class="content-container clearfix">
                    <div class="col-md-12">
                        <h1 class="content-title">Sended Messages</h1>

                        <input type="search" placeholder="Search Messages" class="form-control mail-search" />

                        <ul class="mail-list">
                            <?php $__currentLoopData = $messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a href="<?php echo e(route('message.showOne', $message->id)); ?>">
                                        <span class="mail-sender"><?php echo e($message->user->name); ?></span>
                                        <span class="mail-subject"><?php echo e($message->subject); ?></span>
                                        <span class="mail-message-preview"><?php echo e(Str::words($message->message, 3, '...')); ?></span>
                                    </a>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        @import  url(http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700);

        body {
            background-color:#F7F7F7;
            font-family: 'Open Sans', sans-serif;
        }
        h1.content-title{
            font-size:32px;
            font-weight:300;
            text-align:center;
            margin-top:0;
            margin-bottom:20px;
            font-family: 'Open Sans', sans-serif!important;
        }
        /*Compose*/
        .btn-send{
            text-align:center;
            margin-top:20px;
        }
        /*mail list*/

        ul.mail-list{
            padding:0;
            margin:0;
            list-style:none;
            margin-top:30px;
        }
        ul.mail-list li a{
            display:block;
            border-bottom:1px dotted #CFCFCF;
            padding:20px;
            text-decoration:none;
        }
        ul.mail-list li:last-child a{
            border-bottom:none;
        }
        ul.mail-list li a:hover{
            background-color:#DBF9FF;
        }
        ul.mail-list li span{
            display:block;
        }
        ul.mail-list li span.mail-sender{
            font-weight:600;
            color:#8F8F8F;
        }
        ul.mail-list li span.mail-subject{
            color:#8C8C8C;
        }
        ul.mail-list li span.mail-message-preview{
            display:block;
            color:#A8A8A8;
        }
        .mail-search{
            border-bottom-color:#7FBCC9!important;
        }
    </style>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/message/showAll.blade.php ENDPATH**/ ?>