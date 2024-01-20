<%@ Page Title="Uday Innovations" Language="C#" MasterPageFile="~/uday-innovations/MasterParent.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="uday_innovations_Default" %>
<%@ MasterType VirtualPath="~/uday-innovations/MasterParent.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- Banner starts --%>
    <section id="reshellerbanner">
        <div class="pgHeader3" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container">
                <div class="p-4">
                    <h1 class="semiBold colorSec text-uppercase">Uday Innovations</h1>
                    <h2 class="pgsubtitle" data-aos="fade-right" data-aos-duration="1000">About Uday Innovations</h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    </section>

    <span class="space30"></span>


    <%-- About us starts --%>
    <span class="space40"></span>
    <section id="aboutresh">
        <div class="container">
              <div class="section-title">
                <h2 class="text-center">About Uday Innovations</h2>
            </div>
            <p class="fontRegular small line-ht-5"> Our chain formula was engineered over 40 years ago with the knowledge that only making the chain hard would induce brittleness and making it malleable would make it susceptible to wear. Neither condition is acceptable for moving bulk materials; too hard and the chain link can fatigue crack causing failure, too soft and the chain is not suited to move hard aggressive materials.</p>
        </div>
    </section>
    <span class="space40"></span>
    <%-- About us ends --%>

    <%-- Our Produts --%>

    <section id="ourprodresh" class="bg-light">
        <span class="space30"></span>
        <div class="container">
            <div class="section-title">
                <h2 class="text-center">Our Products</h2>
            </div>
            <span class="space20"></span>
            <div class="row">
                <a href="products#bagasse" class="col-md-3 text-decoration-none">
                    <div class="p-2">
                        <div class="procatinnov1">
                            <div class="overlyBannr">
                                <div class="p-3 d-flex align-items-center justify-content-center" style="height:200px;">
                                    <span class="semiBold semiMedium colorWhite text-uppercase">Bagasse Carrier Chain</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                 <a href="products#dropforged" class="col-md-3 text-decoration-none">
                    <div class="p-2">
                        <div class="procatinnov2">
                            <div class="overlyBannr d-flex align-items-center justify-content-center">
                                <div class="p-3">
                                    <span class="semiBold semiMedium colorWhite text-uppercase">Drop Forged Chain</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                 <a href="products#fabricated" class="col-md-3 text-decoration-none">
                    <div class="p-2">
                        <div class="procatinnov3">
                            <div class="overlyBannr d-flex align-items-center justify-content-center">
                                <div class="p-3 ">
                                    <span class="semiBold semiMedium colorWhite text-uppercase">Fabricated /Forged Rake Carrier Chain</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                 <a href="products#canecarrier" class="col-md-3 text-decoration-none">
                    <div class="p-2">
                        <div class="procatinnov4">
                            <div class="overlyBannr d-flex align-items-center justify-content-center">
                                <span class="semiBold semiMedium colorWhite text-uppercase">Cane carrier chain</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <span class="space30"></span>
    </section>



    <span class="space40"></span>
    <%-- Reshellers product starts --%>
</asp:Content>

