<header class="header" data-preview-item="header" data-menu-style="" data-menu-type="header__nav--overlay"
        data-section-uid="page_header">
        <div id="skip-link">
            <a href="#main-content">
                Skip to main content
            </a>
        </div>
        <div class="header__container">
            <div class="header__wrapper">
                <section class="header__logo header__logo___2909e">

                    <h1 class="header__school-name">
                        <a href={{ url('/') }}>
                            Youtube Dissected
                        </a>
                    </h1>

                </section>

                <button class="header__mobile-button hidden-print" aria-expanded="false"
                    aria-controls="header-dropdown-menu">
                    <span class="header__mobile-button__toggle-icon">
                        <span>Toggle menu</span>
                    </span>
                    <span class="header__mobile-button__label sr-only">
                        Menu
                    </span>
                </button>
                <nav class="header__nav hidden-print


">
                    <ul>
                        <li class="header__nav-item">
                            <a href="{{ url('/') }}" target="_self">Home</a>
                        </li>
                        <li class="header__nav-item">
                            <a href="#" target="_self">All Product</a>
                        </li>

                        <li class="header__nav-item header__nav-sign-in">
                            <a href="{{ route('login') }}">
                                Sign In
                            </a>
                        </li>


                    </ul>
                </nav>

            </div>
        </div>
    </header>