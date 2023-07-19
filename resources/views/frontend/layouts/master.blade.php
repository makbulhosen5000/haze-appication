
<!DOCTYPE html>
<!--

    Everything you need to create and launch learning products on your own site [ https://www.thinkific.com ]
-->
<html lang="en">

<head>
    @include('frontend.pertials.style')
   
</head>

<body class="page-template ">
    <a id="cst-v2-section-page_header" style="opacity: 0; width: 0 !important; display: block;"></a>

    @include('frontend.pertials.header')
    
    @yield('content')

    <script>
        $(document).ready(function() {
            var headerHeight = 0;

            function dynamicHeaderHeight() {
                var $logo = $('.logo'),
                    $header = $logo.closest('.header');

                $logo.on('load', function() {
                    headerHeight = $header.outerHeight();

                }).each(function() {
                    if (this.complete) {
                        $(this).trigger('load');
                    }
                });
            }

            var $adminBar = $('.admin-notice__bar'),
                $body = $(
                    'body.home-landing-page, body.course-landing-page, body.bundle-landing-page, body.page-template, body.coming-soon-page, body.student-certificate-page'
                ),
                $header = $('.header'),
                $main = $(
                    '.home-landing-page main, .course-landing-page main, .bundle-landing-page main, .page-template main, .coming-soon-page main, .student-certificate-page main'
                ),
                $dropdownToggle = $('.dropdown__toggle-button'),
                $mobileButton = $('.header__mobile-button'),
                $navigation = $('.header__nav');

            dynamicHeaderHeight();

            var adminBarHeight = $adminBar.outerHeight(),
                headerTop = $header.offset().top,
                isMobile = window.matchMedia("only screen and (max-width: 767px)");

            if (adminBarHeight != NaN) {
                $body.css({
                    'margin-bottom': adminBarHeight
                });
            }

            function toggleDropdownMenu() {
                $('.dropdown').toggleClass('open');
                $dropdownToggle.attr('aria-expanded', $dropdownToggle.attr('aria-expanded') == 'true' ? 'false' :
                    'true');
            }
            $dropdownToggle.on('click', toggleDropdownMenu);
            $(document).on({
                keydown: function(e) {
                    if (e.key == "Escape" && $('.dropdown').hasClass('open')) {
                        toggleDropdownMenu();
                    }
                },
                click: function(e) {
                    if (!$(e.target).closest('.open').length && $('.dropdown').hasClass('open')) {
                        toggleDropdownMenu();
                    }
                }
            });
            $mobileButton.on('click', function(e) {
                $header.attr('data-menu', $header.attr('data-menu') == 'open' ? 'closed' : 'open');
                $mobileButton.attr('aria-expanded', $mobileButton.attr('aria-expanded') == 'true' ?
                    'false' : 'true');
                $mobileButton.toggleClass('open');
                $navigation.on('focus', false);
            });

            $(window).on('resize', function() {
                dynamicHeaderHeight();




            });
        });
    </script>
   

    <a id="cst-v2-section-footer" style="opacity: 0; width: 0 !important; display: block;"></a>

    <div class="overlay"></div>
    @include('frontend.pertials.footer')
</body>

</html>

