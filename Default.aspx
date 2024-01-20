﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Uday Group Of Industries | Uday Innovations | Uday Reshellers & cast Alloys LLp. | Uday Engineering Works</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

     <!-- Font Lato -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet"/>


    <!--<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manjari:wght@100;400;700&display=swap" rel="stylesheet">-->
    <!-- Bootstrap -->
    <link href="Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- aos -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css">-->
    <!--<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>-->
    <!-- FancyBox -->
    <link href="css/jquery.fancybox.css" rel="stylesheet" />
    <script src="js/jquery.fancybox.js"></script>

    <!-- Swiper slider -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!--Animate Css  -->
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />-->
    <!-- Main Css -->
    <link href="css/udayIndustries.css" rel="stylesheet" />

    <style>
        .height {height: 600px;}
        /*Revel Scroll animation*/
        .reveal {position: relative; transform: translateY(150px); opacity: 0; transition: all 2s ease;}
        .reveal.activate {transform: translateY(0px);opacity: 1;}
    </style>

</head>
    <body class="bg-white">
    <!-- PreLoader starts -->
    <div class="preloader-container">
        <div class="gears">
            <div class="gear"></div>
            <!--<img src="images/icons/budget.png" />-->
        </div>
        <div class="loading-text semiBold">Udya Group Of Industries...</div>
    </div>
    <!-- Preloader ends -->


    <div id="navigationBar">
        <div class="bg-white">
            <div class="container-fluid">
                <!--<div class="px-4" id="pxpad">-->
                <!--<div class="bg-white">-->
                <!--<div class="p-3">-->
                <!-- Navigations Start -->

                <a href="#bannerSp" title="Uday Group of Industries" class="txtDecNone">
                    <img src="images/uday-industries-logo.png" alt="Uday Group of Industries" class="logo" />
                    <div id="nav">
                        <div id="topNavPanel">
                            <div class="">
                                <ul id="topNav">
                                    <a href="javascript:void(0)" class="closeBtn" onclick="closeNav()">&times;</a>
                                    <li><a href="#about">Home</a></li>
                                    <li><a href="#about">About Us</a></li>
                                    <li><a href="#serv">Our Group</a></li>
                                    <li><a href="#review">Case Study</a></li>
                                    <li><a href="#review">Career</a></li>
                                    <li><a href="#review">News</a></li>
                                    <li><a href="#review">Testimonials</a></li>
                                    <li><a href="#review">Gallery</a></li>
                                    <li><a href="#contact">Contact</a></li>
                                </ul>
                                <div class="float_clear"></div>
                                <div id="mobNav">
                                    <div class="container">
                                        <div class="ms-5 mt-4">
                                            <span class="tiny upperCase text-white letter-sp-3 mrg_B_15">Phone:</span>
                                            <a href="tel:(0233) 2645128" class="fontRegular text-white light text-decoration-none mb-2">(0233) 2645128</a>
                                            <br />
                                            <a href="tel:(0233) 2645128" class="fontRegular text-white light text-decoration-none">(0233) 2645928</a>
                                            <span class="space30"></span>
                                            <span class="tiny upperCase text-white letter-sp-3 mrg_B_15">Email:</span>
                                            <a href="mailto:udayeng_5400&@gmail.com" class="text-decoration-none text-white breakWord txtDecNone">udayeng_5400&#64;gmail&#46;com</a>
                                            <a href="mailto:udayreshellers009@gmail.com" class="text-white breakWord text-decoration-none">udayreshellers009&#64;gmail&#46;com</a>
                                            <span class="space30"></span>
                                            <span class="tiny upperCase text-white letter-sp-3 mrg_B_15">Follow Us:</span>
                                            <a href="#" target="_blank" class="fb socIco" title="Follow us on facebook"></a>
                                            <a href="#" target="_blank" class="insta socIco" title="Follow us on instagram"></a>
                                            <a href="#" target="_blank" class="youTube socIco" title="Follow us on Youtube"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a id="navBtn" onclick="openNav()"></a>
                    </div>
            </div>
        </div>
        <!--<span class="space80"></span>
        <span class="space40"></span>-->
        <!-- Welcome area strat -->
        <!--<div class="container">
            <div class="col-12 mt-5">
                <h2 class="semiBold small colorSec text-uppercase letter-sp2">Welcome to </h2>
                <h1 class="bold text-white maintext text-uppercase">Uday Group of industries</h1>
            </div>
        </div>-->
        <!-- Welcome area end -->
        <!-- Home Link starts -->
        <!--<div class="container-fluid">
            <div class="px-4">
                <div class="col-md-2 bredcrumbmenu">
                    <div class="bg-white">
                        <div class="p-3">
                            <div class="d-flex align-items-start breadmenu">
                                <a href="#" class="text-decoration-none colorBlack semiBold">Home</a>
                                <div class="ms-3">
                                    <span class="">|</span>
                                </div>
                                <div class="ms-3">
                                    <div class="colorSec fontRegular semiBold">Our Companies</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Home Link End -->
    </div>



    <!-- Banner starts -->
    <span class="space30"></span>
    <section id="banner">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" data-aos="zoom-in" data-aos-duration="1000">
                    <img src="images/banner-image.jpg" class="d-block w-100" alt="...">
                    <div class="banneroverly" >
                        <div class="container">
                            <div class="row d-flex align-items-center justify-content-center bannerht">
                                <div class="col-10">
                                    <div class="overlyBannr shadow">
                                        <div class="p-4">
                                            <h5 class="semiBold large colorWhite">First slide label loem ipsum doller imposut lorem ipsum doller ipsum</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/banner-1.jpg" class="img-fluid w-100" />
                    <div class="banneroverly">
                        <div class="container animate__animated animate__backInLeft">
                            <div class="row d-flex align-items-center justify-content-center bannerht">
                                <div class="col-10">
                                    <div class="overlyBannr shadow">
                                        <div class="p-4">
                                            <h5 class="semiBold large colorWhite">First slide label loem ipsum doller imposut lorem ipsum doller ipsum</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="images/banner-1.jpg" class="img-fluid w-100" />
                    <div class="banneroverly">
                        <div class="container">
                            <div class="row d-flex align-items-center justify-content-center bannerht">
                                <div class="col-10">
                                    <div class="overlyBannr shadow">
                                        <div class="p-4">
                                            <h5 class="semiBold large colorWhite">First slide label loem ipsum doller imposut lorem ipsum doller ipsum</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>


    <!-- Banner End -->
    <!-- Group of companies start -->
    <section id="groupcom" class="lightbg">
        <span class="space60"></span>
        <div class="container text-center reveal">

            <div class="section-title">
                <h2>Group of Companies</h2>
            </div>

            <!--<h3 class="bold regular text-uppercase colorSec letter-sp2">our</h3>
            <div class="bold medium text-uppercase letter-sp2 mb-2">Group of companies</div>-->
            <p class="fontRegular line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
            <div class="row gy-3 mt-2" data-aos="fade-up" data-aos-duration="100">
                <div class="col-lg-4">
                    <a href="#" class="text-decoration-none">
                        <div class="box">
                            <div class="bg-white shadow boxheight">
                                <div class="col-first">
                                    <div class="p-3">
                                        <img src="images/uday-chains-logo.png" class="mb-2" />
                                        <div class="semiBold semiMedium colorPrime mb-3">Uday Chains</div>
                                        <p class="fontRegular small line-ht-5 colorBlack">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <!--<span class="space30"></span>-->
                                </div>
                            </div>
                            <div class="box-inner">
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#" class="text-decoration-none">
                        <div class="box">
                            <div class="bg-white shadow boxheight">
                                <div class="col-second">
                                    <div class="p-3">
                                        <img src="images/uday-reshellers-logo.png" class="mb-2" />
                                        <div class="semiBold semiMedium colorPrime mb-3">Uday Reshellers & Cast Alloys LLP.</div>
                                        <p class="fontRegular small line-ht-5 colorBlack">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>

                                </div>
                            </div>
                            <div class="box-inner">
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="#" class="text-decoration-none">
                        <div class="box">
                            <div class="bg-white shadow boxheight">
                                <div class="col-third">
                                    <div class="p-3">
                                        <img src="images/uday-engg-logo.png" class="mb-2" />
                                        <div class="semiBold semiMedium colorPrime mb-3">Uday Engineering Works</div>
                                        <p class="fontRegular small line-ht-5 colorBlack">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    </div>
                                    <!--<span class="space30"></span>-->
                                </div>
                            </div>
                            <div class="box-inner">
                            </div>
                        </div>
                    </a>
                </div>
                <span class="space50"></span>
            </div>
        </div>
        <span class="space70"></span>
        <span class="space60"></span>
    </section>
    <!-- Group of companies end -->
    <!-- About us starts -->

    <section id="about" class="mt-5">
        <div class="container reveal">
            <div class="row" data-aos="fade-left">
                <div class="section-title">
                    <h2 class="text-center">About Us</h2>
                </div>
                <div class="col-lg-4">
                    <img src="images/about-us.png" class="img-fluid w-100" />
                </div>
                <div class="col-lg-8 d-flex align-items-center justify-content-center">
                    <p class="fontRegular line-ht-5">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                        <span class="space10"></span>
                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially
                        <span class="space10"></span>
                        unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
                        <span class="space10"></span>
                        unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
                    </p>
                </div>
                <div class="text-center">
                    <a href="#" class="button-30 text-center mt-2" role="button">View More</a>
                </div>
            </div>
        </div>
    </section>
    <!-- About us end -->
    <!-- News area starts -->
    <span class="space20"></span>
    <section id="news" class="mt-5 lightbg">
        <!--<span class="space80"></span>-->
        <div class="container reveal">
            <!--<div class="text-center">
                <h3 class="bold regular text-uppercase colorSec letter-sp2">In the news</h3>
                <div class="bold medium text-uppercase letter-sp2 mb-4">Latest News</div>
            </div>-->
            <span class="space80"></span>
            <div class="row position-relative gy-5">

                <div class="col-xl-8 col-lg-12">

                    <div class="newsheading">
                        <span class="colorThr medium semiBold">In the News</span>
                    </div>

                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row g-0">
                                    <div class="col-md-6">
                                        <img src="images/chains-comp.jpg" class="img-fluid h-100 w-100" />
                                    </div>
                                    <div class="col-md-6 bg-white shadow">
                                        <div class="p-5">
                                            <span class="text-uppercase colorPrime small">Press Release</span>
                                            <span class="space20"></span>
                                            <span class="semiBold semiMedium">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                                            <p class="fontRegular line-ht-5 mt-3 nwsborderleft">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row g-0">
                                    <div class="col-md-6">
                                        <img src="images/chains-comp.jpg" class="img-fluid h-100 w-100" />
                                    </div>
                                    <div class="col-md-6 bg-white shadow">
                                        <div class="p-5">
                                            <span class="text-uppercase colorPrime small">Press Release</span>
                                            <span class="space20"></span>
                                            <span class="semiBold semiMedium">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                                            <p class="fontRegular line-ht-5 mt-3 nwsborderleft">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row g-0">
                                    <div class="col-md-6">
                                        <img src="images/chains-comp.jpg" class="img-fluid h-100 w-100" />
                                    </div>
                                    <div class="col-md-6 bg-white shadow">
                                        <div class="p-5">
                                            <span class="text-uppercase colorPrime small">Press Release</span>
                                            <span class="space20"></span>
                                            <span class="semiBold semiMedium">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                                            <p class="fontRegular line-ht-5 mt-3 nwsborderleft">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                            <img src="images/icons/arrow-prev.png" />
                            <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                            <img src="images/icons/arrow-next.png" />
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <!-- Case study -->
                <div class="col-xl-4 col-lg-12">
                    <div class="casestudyheading">
                        <span class="colorThr medium semiBold">Case study</span>
                    </div>

                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="px-4 themeBGPrime">
                                    <div class="p-4">
                                        <img src="images/icons/case-study.png" class="" />
                                        <span class="space15"></span>
                                        <span class="semiBold semiMedium text-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                                        <span class="space10"></span>
                                        <span class="text-white small semiBold text-white">By Dr. Pallavi Dhadake.</span>
                                        <p class="fontRegular small line-ht-5 text-white caseborderleft mt-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                                        <a href="#" class="float-end">
                                            <img src="images/icons/rght-icon.png" class="" />
                                        </a>
                                        <span class="space20"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="px-4 themeBGPrime">
                                    <div class="p-4">
                                        <img src="images/icons/case-study.png" class="" />
                                        <span class="space15"></span>
                                        <span class="semiBold semiMedium text-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                                        <span class="space10"></span>
                                        <span class="text-white small semiBold text-white">By Dr. demo .</span>
                                        <p class="fontRegular small line-ht-5 text-white caseborderleft mt-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                                        <a href="#" class="float-end">
                                            <img src="images/icons/rght-icon.png" class="" />
                                        </a>
                                        <span class="space20"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="px-4 themeBGPrime">
                                    <div class="p-4">
                                        <img src="images/icons/case-study.png" class="" />
                                        <span class="space15"></span>
                                        <span class="semiBold semiMedium text-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                                        <span class="space10"></span>
                                        <span class="text-white small semiBold text-white">By Dr. demo1.</span>
                                        <p class="fontRegular small line-ht-5 text-white caseborderleft mt-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                                        <a href="#" class="float-end">
                                            <img src="images/icons/rght-icon.png" class="" />
                                        </a>
                                        <span class="space20"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--<div class="px-4 themeBGPrime">
                        <div class="p-4">
                            <img src="images/icons/case-study.png" class="" />
                            <span class="space15"></span>
                            <span class="semiBold semiMedium text-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span>
                            <span class="space10"></span>
                            <span class="text-white small semiBold text-white">By Dr. Pallavi Dhadake.</span>
                            <p class="fontRegular small line-ht-5 text-white caseborderleft mt-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                            <a href="#" class="float-end">
                                <img src="images/icons/rght-icon.png" class="" />
                            </a>
                            <span class="space20"></span>
                        </div>
                    </div>-->
                </div>
                <!-- case study end -->
            </div>
        </div>
        <span class="space60"></span>
    </section>
    <!-- News area end -->
    <!-- Testimonails starts -->
    <!--<span class="space20"></span>-->
    <section id="testimonails" class="mt-5">
        <div class="container reveal">
            <div class="section-title">
                <h2 class="text-center">Client’s Say About Us</h2>
            </div>
            <!--<div class="semiBold semiMedium mb-4 text-center">Client’s Say About Us</div>-->
            <div class="row gy-3">
                <div class="col-lg-4">
                    <div class="bg-white shadow rounded-4">
                        <div class="p-5">
                            <div class="small semiBold line-ht-5 colorPrime text-uppercase mb-1">Uday Chains</div>
                            <p class="fontRegular line-ht-5 mb-3">" Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not."</p>
                            <span class="semiBold semiMedium">Pallavi Dhadake</span>
                            <div class="colorPrime semiBold fontRegular mt-0">Intellect Systems</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-white shadow rounded-4">
                        <div class="p-5">
                            <div class="small semiBold line-ht-5 colorPrime text-uppercase mb-1">Uday Engineering works</div>
                            <p class="fontRegular line-ht-5 mb-3">" Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not."</p>
                            <span class="semiBold semiMedium">Pallavi Dhadake</span>
                            <div class="colorPrime semiBold fontRegular mt-0">Intellect Systems</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-white shadow rounded-4">
                        <div class="p-5">
                            <div class="small semiBold line-ht-5 colorPrime text-uppercase mb-1">Uday Reshellers & Cast alloys llp</div>
                            <p class="fontRegular line-ht-5 mb-3">" Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make "</p>
                            <span class="semiBold semiMedium">Pallavi Dhadake</span>
                            <div class="colorPrime semiBold fontRegular mt-0">Intellect Systems</div>
                        </div>
                    </div>
                </div>
                <span class="space30"></span>
            </div>
        </div>
        <!-- HTML !-->
        <div class="text-center">
            <a href="#" class="button-30 text-center mt-4" role="button">View More</a>
        </div>
    </section>
    <span class="space60"></span>
    <!-- Testimonails end-->
    <!-- Stats Counter starts -->
    <section id="stat">
        <div class="bgTestimonial">
            <div class="overlyBannr">
                <div class="container text-center">
                    <div class="row gy-4 d-flex align-items-center justify-content-center" id="counter" style="height:400px">
                        <div class="col-xl-3 col-lg-6">
                            <img src="images/icons/product-icon.png" class="img-fluid" />
                            <div class="semiBold large count-num text-white" data-count="20">1 +</div>
                            <div class="semiBold text-white regular mt-0">Products</div>
                        </div>
                        <div class="col-xl-3 col-lg-6">
                            <img src="images/icons/happy-clients.png" />
                            <div class="semiBold large count-num text-white" data-count="1000">500 +</div>
                            <div class="semiBold text-white regular mt-0">Happy Clients</div>
                        </div>
                        <div class="col-xl-3 col-lg-6">
                            <img src="images/icons/awards-icon.png" />
                            <div class="semiBold large count-num text-white" data-count="10">1 +</div>
                            <div class="semiBold regular text-white mt-0">Awards</div>
                        </div>
                        <div class="col-xl-3 col-lg-6">
                            <img src="images/icons/exprt-members.png" />
                            <div class="semiBold large count-num text-white" data-count="200">150 +</div>
                            <div class="semiBold regular text-white mt-0">Expert Members</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Stats Counter end -->
    <!-- stats count -->
    <!--<span class="space40"></span>
    <section id="stat" class="mt-5">
        <div class="container">
            <div class="row gy-4 justify-content-center" id="counter">
                <div class="col-xl-3 col-lg-6">
                    <div class="d-flex align-items-start">
                        <img src="images/icons/stats_projects_icon.png" class="img-fluid" />
                        <div class="ms-3">
                            <div class="semiBold large count-num" data-count="20">1 +</div>
                            <div class="semiBold clrdarkgrey semiMedium mt-0">Products</div>
                        </div>
                    </div>

                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="d-flex align-items-start">
                        <img src="images/icons/stats_clients_icons.png" />
                        <div class="ms-3">
                            <div class="semiBold large count-num" data-count="1000">500 +</div>
                            <div class="semiBold clrdarkgrey fontRegular mt-0">Happy Clients</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="d-flex align-items-start">
                        <img src="images/icons/stats_awards_icon.png" />
                        <div class="ms-3">
                            <div class="semiBold large count-num" data-count="10">1 +</div>
                            <div class="semiBold fontRegular clrdarkgrey mt-0">Awards</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="d-flex align-items-start">
                        <img src="images/icons/stats_expertmember_icons.png" />
                        <div class="ms-3">
                            <div class="semiBold large count-num" data-count="200">150 +</div>
                            <div class="semiBold fontRegular clrdarkgrey mt-0">Expert Members</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!--<span class="space40"></span>-->
    <!-- stats count end -->
    <!-- our products starts-->
    <section id="products" class="mt-5">
        <div class="section-title">
            <h2 class="text-center">Our Products</h2>
        </div>
        <div class="container shadow reveal">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="images/project-slide-1.jpg" class="img-fluid" /></div>
                    <div class="swiper-slide"><img src="images/project-slide-2.jpg" class="img-fluid" /></div>
                    <div class="swiper-slide"><img src="images/project-slide-3.jpg" class="img-fluid" /></div>

                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    <span class="space50"></span>
    <!-- our products end-->
    <!-- footer start -->

    <div class="footer">
        <span class="space40"></span>

        <div class="container overflowHidden">
            <div class="row">
                <div class="col-lg-3">
                    <div class="p-2">
                        <h4 class="footerCaption clrWhite mb-2 semiBold upperCase letter-sp-2">Main Menu</h4>
                        <!-- <div class="fLine mb-3"><span class="fAbsLine"></span></div>-->
                        <ul class="footerNav">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Our Group</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Case Study</a></li>
                            <li><a href="#">Testimonials</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Career</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="p-2">
                        <h4 class="footerCaption clrWhite mb-2 semiBold upperCase letter-sp-2">Our Group</h4>
                        <!--<div class="fLine mb-3"><span class="fAbsLine"></span></div>-->
                        <div class="">
                            <ul class="footerNav">
                                <li><a href="<%=rootPath%>">Uday Innovations</a></li>
                                <li><a href="about-us">Uday Reshellers & Cast Alloys LLP.</a></li>
                                <li><a href="our-products">Uday Engineering Works</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="p-2">
                        <h4 class="footerCaption clrWhite mb-2 semiBold upperCase letter-sp-2">Get Social</h4>
                        <!--<div class="fLine mb-3"><span class="fAbsLine"></span></div>-->
                        <a href="#" target="_blank" class="foo_fb foo_socialIco" title="Follow us on facebook"></a>
                        <a href="#" target="_blank" class="foo_twitter foo_socialIco" title="Follow us on twitter"></a>
                        <a href="#" target="_blank" class="foo_insta foo_socialIco" title="Follow us on Instagram"></a>
                        <span class="space10"></span>
                        <a href="#" class="email breakWord line-ht-5 small txtDecNone">udayeng_5400&#64;gmail&#46;com</a>
                        <span class="space10"></span>
                        <a href="#" class="email breakWord line-ht-5 small txtDecNone">udayreshellers009&#64;gmail&#46;com</a>
                        <span class="space15"></span>
                        <a href="#" class="foo_call line-ht-5 small txtDecNone">(0233) 2645128</a>
                        <span class="space10"></span>
                        <a href="#" class="foo_call line-ht-5 small txtDecNone">(0233) 2645928</a>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="p-2">
                        <h4 class="footerCaption clrWhite mb-2 semiBold upperCase letter-sp-2">Contact Info</h4>
                        <!--<div class="fLine mb-3"><span class="fAbsLine"></span></div>-->
                        <span class="addr line-ht-5 small">Regd Office: Plot No. H-48, 49, M.I.D.C, Kupwad-416 436 Tal. Miraj, Dist.Sangli, (MS) Maharashtra.</span>
                        <span class="addr line-ht-5 small">Factory: Gat No. 435/1, A/p. Tanang, Tal.Miraj, Dist.Sangli Maharashtra.</span>
                        <span class="space15"></span>

                    </div>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>
        <span class="space20"></span>
        <div class="comfootbg">
            <div class="container">
                <div class="p-3">
                    <span class="clrGrey mrg_B_5 small fontRegular">&copy; <%=currentYear %> |  Uday Group Of Industries , All Rights Reserved</span>
                    <span class="clrGrey small fontRegular">Website By <a href="http://www.intellect-systems.com" target="_blank" class="intellect" title="Website Design and Development Service By Intellect Systems">Intellect Systems</a></span>
                </div>
            </div>
        </div>

    </div>
    <!-- footer end -->
    <!-- Scroll Animation Script-->


    <!--<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script>
        // Initialize AOS when the page is loaded
        AOS.init();
    </script>-->

    <script>
        function reveal() {
            //alert("function called")
            var reveals = document.querySelectorAll(".reveal");
            for (var i = 0; i < reveals.length; i++) {
                var windowHeight = window.innerHeight;
                var elementTop = reveals[i].getBoundingClientRect().top;
                var elementVisible = 150;
                if (elementTop < windowHeight - elementVisible) {
                    reveals[i].classList.add("activate");
                } else {
                    reveals[i].classList.remove("activate");
                }
            }
        }
        function loaded() {
            //alert("function loaded");
            var reveals = document.querySelectorAll(".reveal");
            for (var i = 0; i < reveals.length; i++) {
                var windowHeight = window.innerHeight;
                var elementTop = reveals[i].getBoundingClientRect().top;
                var elementVisible = 150;
                if (elementTop < windowHeight - elementVisible) {
                    reveals[i].classList.add("activate");
                } else {
                    reveals[i].classList.remove("activate");
                }
            }
            //alert("function load end");
        }
        window.addEventListener("scroll", reveal);
        window.addEventListener("load", loaded);
    </script>


    <script>
        var a = 0;
        $(window).scroll(function () {

            var oTop = $('#counter').offset().top - window.innerHeight;
            if (a == 0 && $(window).scrollTop() > oTop) {
                $('.count-num').each(function () {
                    var $this = $(this),
                        countTo = $this.attr('data-count');
                    $({
                        countNum: $this.text()
                    }).animate({
                        countNum: countTo
                    },

                        {

                            duration: 2000,
                            easing: 'swing',
                            step: function () {
                                $this.text(Math.floor(this.countNum));
                            },
                            complete: function () {
                                $this.text(this.countNum);
                                //alert('finished');
                            }

                        });
                });
                a = 1;
            }

        });
    </script>

    <script>
        var swiper = new Swiper(".mySwiper", {
            grabCursor: true,
            effect: "creative",
            autoplay: {
                delay: 2500,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".swiper-pagination",
            },
            creativeEffect: {
                prev: {
                    shadow: true,
                    translate: [0, 0, -400],
                },
                next: {
                    translate: ["100%", 0, 0],
                },
            },
        });
    </script>

    <script>
        $(function () {
            //alert("function called");
            // Check the initial Poistion of the Sticky Header
            var stickyHeaderTop = $('#navigationBar').offset().top;

            $(window).scroll(function () {
                alert("alert1");
                if ($(window).scrollTop() > stickyHeaderTop) {
                    $('#navigationBar').css({ position: 'fixed', top: '0px' });
                    $('#navigationBar').css('display', 'block');
                }
                else {
                    $('#navigationBar').css({ position: 'fixed', top: '0px' });
                    $('#navigationBar').css('display', 'block');
                }
            });
        });
    </script>


    <script type="text/javascript">
        function openNav() {
            alert("open nav called")
            document.getElementById("topNavPanel").style.width = "320px";
            document.getElementById("navBtn").style.zIndex = "0";
        }

        function closeNav() {
            document.getElementById("topNavPanel").style.width = "0";
            document.getElementById("navBtn").style.zIndex = "5";
        }
    </script>


    <script>
        setTimeout(function () {
            // Remove the preloader when loading is complete
            const preloader = document.querySelector('.preloader-container');
            preloader.style.display = 'none';
        }, 1000);
    </script>
</body>
</html>
