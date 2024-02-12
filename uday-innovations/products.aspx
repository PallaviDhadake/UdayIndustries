<%@ Page Title="Products | Uday Innovations." Language="C#" MasterPageFile="~/uday-innovations/MasterParent.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="uday_innovations_products" %>
<%@ MasterType VirtualPath="~/uday-innovations/MasterParent.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .productbg{background:#cbd7d6}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <%-- Banner starts --%>
    <section id="reshellerbanner">
        <div class="pgHeader3" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container">
                <div class="p-4">
                    <h1 class="semiBold colorSec text-uppercase">Products</h1>
                    <h2 class="pgsubtitle" data-aos="fade-right" data-aos-duration="1000">Our Popular Products</h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    </section>
    <%-- Products starts --%>
    <section id="productsres" class="productbg">
        <span class="space30"></span>
        <div class="container">
            <div class="text-center">
                <div class="section-title">
                    <h2 class="text-center">Products</h2>
                </div>
            </div>
            <p class="fontRegular small line-ht-5 text-center">Our chain formula was engineered over 40 years ago with the knowledge that only making the chain hard would induce brittleness and making it malleable would make it susceptible to wear. Neither condition is acceptable for moving bulk materials; too hard and the chain link can fatigue crack causing failure, too soft and the chain is not suited to move hard aggressive materials.</p>
            <span class="space20"></span>
           <%-- <div id="nav-container">
                <div class="bg-white">
                    <ul id="prodnav">
                        <li><a href="sugar-mill-rollers.aspx">Sugar Mill Rollers</a></li>
                        <li><a href="#canehandling">Cane Handling</a></li>
                        <li><a href="#canerpreparation">Cane Preparation </a></li>
                        <li><a href="#canemilling">Cane Milling</a></li>
                        <li><a href="#prohouseequip">Process House Equipment</a></li>
                        <!-- <li><a href="#contact">Features</a></li> -->
                    </ul>
                </div>
            </div>--%>

             <%-- Bagasse Carrier Chain --%>
            <div class="row g-0 border" id="bagasse">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/Bagasse-Carrier.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Bagasse Carrier Chain</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Uday supply verity of Conveyor chains are manufactured with Breaking Strength in the range from 10,000 kgf. To 120,000 kgf. Chain  Rollers are made from Medium carbon steel & are subjected to Heat Treatment process to improve the wear resistance.

                            <span class="space10"></span>
                           Pin & Bushes are made from Low Carbon alloy steel with precision machining. Case Carburizing, Hardening & Tempering processes are carried out to increase the Wear resistance & Core strength, Then ground finishing is done for perfect fitting

                            <span class="space10"></span>
                           Uday chains are also manufactured & supplied in heat treated Stainless Steel material, with 2C flights as per requirement.

                            <span class="space10"></span>
                           Return Bagasse Carrier Chain (RBC)

                            <span class="space10"></span>
                           Main Bagasse Carrier Chain (MBC)
                            <span class="space10"></span>
                          Bagasse Elevator Chain (BEC)

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

                 <%-- Drop Forged Chain --%>
            <div class="row g-0 border" id="dropforged">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/drop-forged.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Drop Forged Chain</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Uday make chain is the industry standard and cannot only be found in our conveyors, but inside the conveyors of many well-known conveyor manufacturers. Like you, these manufacturers know that putting the best chain inside the box means that the conveyor will provide the hassle-free results tough industry demands.


                            <span class="space10"></span>
                           In Sugar Industry Drop Forged chains are mainly used for Cane feeding applications in Cane washing section 

                            <span class="space10"></span>
                           Each link is individually pinned for ease of replacement.


                            <span class="space10"></span>
                          Chain links are totally carburized to provide an effective case hardness of 550-650 BHN(60Rc) — the outer casing is hard for optimum wear resistance.


                            <span class="space10"></span>
                           Chain link bores are machined to provide a full pin/bore bearing area for maximum strength.

                          
                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>


             <%-- Fabricated /Forged Rake Carrier Chain --%>
            <div class="row g-0 border" id="fabricated">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/fabricated-chain.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Fabricated / Forged Rake Carrier Chain</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            These chains are more suitable against juice corrosion. The links are block type having no roller system. Links have open lugs in the ends for joining next link. This system protect the chain from jamming bagasse in the link pocket. Chains are available with the tensile strength upto 20 ton to 80 ton capacity.



                            <span class="space10"></span>
                           The wide variety of chains are manufactured with Breaking strength in the range from 20,000 to 80,000 kgf. Chain links are made from low carbon and medium carbon steel. These links are subjected to the precision machining with their mating parts to Pin and Bush duly heat treated to avoid linear elongation and to get better strength. Shot peening is performed for links to improve the fatigue strength.


                            <span class="space10"></span>
                          Pin & Bushes are made from Stainless Steel (Austenitic & Martensitic) with precision machining followed by through hardening and tempering in case of Martensitic stainless steel to increase wear resistance and then ground finishing are done for perfect fitting (Interference-fit).



                            <span class="space10"></span>
                          Rollers are made from medium carbon steel duly heat treated then fitted with hardened and tempered linear Bush of Martensitic stainless Steel to avoid corrosion and to increase wear resistance

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

            <%-- Cane carrier chain --%>
            <div class="row g-0 border" id="canecarrier">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/cane-carrier-chain.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Cane carrier chain</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            We supply our customers with an impeccable range of Cane Carrier Chain. Products that we offer are highly accredited for their attributes like balance of performance, reliability and others.  professionals manufacture the entire range as per industry set standards and norms. Moreover, patrons can avail these in various sizes, grades and specifications.


                            <span class="space10"></span>
                          Uday make carrier chains are Breaking Strength in the range from 20,000 kgf. To 130,000 kgf. Chain links are made from Low Carbon & Medium Carbon Forged Steel



                            <span class="space10"></span>
                          Chains  links are subjected to the precision machining with their mating parts to Pin & Bush duly heat treated to avoid linear elongation & to get better strength. Shot penning is performed for links to improve fatigue strength. Pin & Bushes are made from Stainless Steel (Austenitic & Martensitic) with precision machining, followed by through Hardening & Tempering in case of Martensitic Stainless-Steel to increase the Wear Resistance & then ground finishing is done for perfect fitting. Alternative sizes are also available on request.
                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

            <%-- Rake Elevator --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/rake-elevator.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Rake Elevator</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            We offer Chain links are made from Low Carbon & Medium Carbon Forged Steel. These links are subjected to the precision machining with their mating parts to Pin & Bush duly heat treated to avoid linear elongation & to get better strength. Shot peening is performed for links to improve fatigue strength.
                            <span class="space10"></span>
                          Breaking Strength in the range from 20,000 kgf. To 130,000 kgf.
                            <span class="space10"></span>
                         Pin & Bushes are made from Stainless Steel (Austenitic & Martensitic) with precision machining.
                             <span class="space10"></span>
                            Hardening & Tempering in case of Martensitic Stainless-Steel to increase the Wear Resistance & then ground finishing is done for perfect fitting.
                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

            <%-- Feeder table/ pusher chain  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/feeder-table-pushr-chain.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Feeder table / pusher chain </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            chains are commonly used in Sugar & Steel Industries. Chain links are made from Carbon Steel. These links are subjected to operations like Blanking, Piercing & Shaving, which are carried out on highly Précised Presses.

                            <span class="space10"></span>
                          Pin & Bushes are made from Low Carbon Alloy Steel with precision machining. Case Carburizing, Hardening & Tempering processes are carried out to increase the Wear Resistance & Core Strength.

                            <span class="space10"></span>
                         Rollers are made from Medium Carbon Steel & are subjected to Heat Treatment process to improve the wear resistance

                             <span class="space10"></span>
                            Breaking Strength in the range from 20,000 kgf. To 60,000 kgf.

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

              <%-- Slats  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/slats.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Slats </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            We are having specialized facility for manufacturing of High quality slates required for Cane carrier chain, Inter carrier chain , Bagasse carrier chain and Other special applications for Material handling .

                            <span class="space10"></span>
                         Uday make slat profile are accurately formed for proper overlapping on 600 ton capacity heavy duty hydraulic presses .

                            <span class="space10"></span>
                         We can meet requirements upto 24" to 80" and thickness 4.8 mm to 8 mm. hydraulic press-brake in one stroke , gives uniform shape in overall length .

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

             <%-- TRIPLEX CHAIN  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/tripal-cahin.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Tripal Chain</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Uday Chains have vast experience in manufacturing of Triplex roller chain. They have almost triple power transmissibility capacity. So, if the length of the change need to be fixed while increasing its power transmissibility capacity than Triplex Roller Chains are used.

                            <span class="space10"></span>
                         Chains under stringent quality control which ensures its performance at high loads and in adverse conditions.
                            <span class="space10"></span>
                         Uday chains roller chains in carbon steel & stainless steel with lot of variants depending upon the requirement of customer and its working conditions and environment.
                             <span class="space10"></span>
                            Roller chain is made of three strands in comparison to normal roller chain. Our chains are highly durable, heat resistant, abrasive resistant, have low coefficient of friction, power transmissibility factor is high. They are stronger.
                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

          
             <%-- SIMPLEX ROLLER CHAIN  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/simplex-roller-chain.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Simplex Roller Chain</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Uday chains have vast experience in manufacturing of Simplex roller chain. They have almost triple power transmissibility capacity. So, if the length of the change needs to be fixed while increasing its power transmissibility capacity than Triplex Roller Chains are used.


                            <span class="space10"></span>
                         Simplex Roller Chains under stringent quality control which ensures its performance at high loads and in adverse conditions. requirement of customer and its working conditions and environment.

                            <span class="space10"></span>
                        roller chains in carbon steel & stainless steel with lot of variants 

                             <span class="space10"></span>
                            Uday chains are highly durable, heat resistant, abrasive resistant, have low coefficient of friction, power transmissibility factor is high. They are stronger.

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

             <%-- duplex CHAIN  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow bg-white">
                    <img src="../images/products/innovation/duplex-chain.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Duplex chains </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Uday Duplex – Double Strands Chains, American Standard & British Standard Roller Chains .  

                            <span class="space10"></span>
                          Chains available in MS (Zinc and Galvanized ) and SS 304 . Uday Double Strand Roller Chain  is used in combination with Sprockets.


                            <span class="space10"></span>
                       Roller chains have the highest tensile and fatigue strength along with wear performance. The “Corrosion and Moisture Resistant” section for details on plated carbon steel chain or stainless steel chain that is suitable for wash downs or exposure to chemicals or acids


                        </p>
                    </div>
                </div>
            </div>
            <span class="space40"></span>
        </div>
    </section>
</asp:Content>

