<?php
$categories = \App\Category::all();

?>
<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

    <title>Skelbimai</title>

    <!-- Scripts -->
    <script src="<?php echo e(asset('js/app.js')); ?>" defer></script>

    <!-- Fonts -->

    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="http://194.5.157.99/laravel/projectlaravel/public/css/stylesheet.css?id=<?php echo e(rand(0,999999999)); ?>">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <script src="<?php echo e(asset('js/script.js')); ?>?id=<?php echo e(rand(0,999999999)); ?>"></script>

    <!-- Styles -->
    <link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet">
</head>
<body class="">
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="<?php echo e(url('/home')); ?>">
                    <img class="img-fluid" id="header-logo" src="http://194.5.157.99/laravel/projectlaravel/public/images/autoplat.png?id=<?php echo e(rand(0,999999999)); ?>" alt="">
                </a>
                <a class="btn btn-secondary mr-2 button-css" href="<?php echo e(route('advert.create')); ?>">
                    Įkelti Skelbima
                </a>
                <button  onclick="myFunction()" id="search-btn" class="btn btn-secondary mr-2 button-css">
                    Ieškoti Skelbimo
                </button>

                <div class="dropdown show">
                    <a class="btn btn-secondary mr-2 button-css" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Kategorijos
                    </a>

                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <?php $__currentLoopData = $categories->where('parent_id', 0); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <a class="dropdown-item font-weight-bold" href="<?php echo e(route('category.show', $category->slug)); ?>" class="font-weight-bold"><?php echo e($category->title); ?></a>
                            <?php $__currentLoopData = $category->subCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <a class="dropdown-item" href="<?php echo e(route('category.show', $sub->slug)); ?>"><?php echo e($sub->title); ?></a>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="<?php echo e(__('Toggle navigation')); ?>">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>


                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Authentication Links -->
                        <?php if(auth()->guard()->guest()): ?>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo e(route('login')); ?>"><?php echo e(__('Login')); ?></a>
                            </li>
                            <?php if(Route::has('register')): ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo e(route('register')); ?>"><?php echo e(__('Register')); ?></a>
                                </li>
                            <?php endif; ?>
                        <?php else: ?>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    <?php echo e(Auth::user()->name); ?> <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="http://194.5.157.99/laravel/projectlaravel/public/user">Profile</a>
                                    <?php if(auth()->check() && auth()->user()->hasRole('admin')): ?>
                                    <a class="dropdown-item" href="<?php echo e(route('admin.index')); ?>">
                                        Admin Panel
                                    </a>
                                    <?php endif; ?>
                                    <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <?php echo e(__('Logout')); ?>

                                    </a>
                                    <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                                        <?php echo csrf_field(); ?>
                                    </form>
                                </div>
                            </li>
                            <li>
                                <a href="http://194.5.157.99/laravel/projectlaravel/public/message" role="button" class="btn btn-primary btn-sm btn-block mt-1">Messages</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            jQuery(document).ready(function(){
                jQuery('#search-btn').click(function(e){
                    e.preventDefault();

                    jQuery.ajax({
                        url: "<?php echo e(route('ajax.searchBlock')); ?>",
                        method: 'post',
                        data: {markID: jQuery('#mark').val(), _token: '<?php echo e(csrf_token()); ?>'},
                        success: function (response) {
                            jQuery('#search-block').html(response);
                        },
                    });
                });
            });

            $("#search-btn").click(function(){
                $("#search-block").toggle(function(e) {
                    if ($("#search-block").is(":visible")) {
                        $("#search-block").show();
                    }
                    else {
                        $("#search-block").hide();
                    };
                });
            });



        </script>

    <div id="search-block">
    </div>

            <main class="py-4 ">
                <?php echo $__env->yieldContent('content'); ?>
            </main>
    </div>
</body>
</html>
<?php /**PATH /var/www/html/laravel/projectlaravel/resources/views/layouts/app.blade.php ENDPATH**/ ?>