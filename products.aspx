<%@ Page Title="Products | Uday Reshellers & cast Alloys LLp." Language="C#" MasterPageFile="~/uday-reshellers/MasterParent.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <%-- <style>
        #nav-container {
            position: absolute;
            top: 500px;
            width: 100%;
            z-index: 1000;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            visibility: hidden;
            transition: visibility 0.3s ease-in-out;
        }

        #prodnav {
            list-style: none;
            margin: 0;
            padding: 0;
        }

            #prodnav li {
                display: inline-block;
                margin-right: 15px;
            }

                #prodnav li a {
                    text-decoration: none;
                    color: #333;
                    display: block;
                    padding: 10px; /* Adjust the padding as needed */
                }
    </style>

    <script>
        window.addEventListener("scroll", function () {
            var mainNavbarHeight = parent.document.getElementById("main-navbar").clientHeight;
            var navContainer = document.getElementById("nav-container");
            var scrollPosition = window.scrollY;

            if (scrollPosition > mainNavbarHeight) {
                navContainer.style.position = "fixed";
                navContainer.style.top = "500px";
                navContainer.style.width = "100%";
                navContainer.style.visibility = "visible";
            } else {
                navContainer.style.position = "absolute";
                navContainer.style.top = "0";
                navContainer.style.visibility = "hidden";
            }
        });

    </script>--%>

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
    <span class="space30"></span>

    <%-- Reshellers product starts --%>
    <section id="reshellerproducts">
        <div class="container">
            <div class="text-center">
                <div class="section-title">
                    <h2 class="text-center">Products</h2>
                </div>
                <p class="fontRegular small line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                <span class="space10"></span>
               <%-- <div id="">
                    <div class="bg-white">
                        <ul id="prodnav">
                            <li><a href="sugar-mill-rollers.aspx">Sugar Mill Rollers</a></li>
                            <li><a href="#canehandling">Cane Handling</a></li>
                            <li><a href="#canerpreparation">Cane Preparation </a></li>
                            <li><a href="#canemilling">Cane Milling</a></li>
                            <li><a href="#prohouseequip">Process House Equipment</a></li>
                          
                        </ul>
                    </div>
                </div>--%>
                <div id="nav-container">
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
                </div>
<!-- Add more content to scroll -->
<div id="content">
    <!-- Your page content here -->
</div>


            </div>
            <span class="space20"></span>
            <h2 class="semiBold colorPrime mb-5 text-center" id="canehandling">Cane Handling</h2>
            <div class="row g-0 border">
                <%-- Feeder tables --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Feeder Tables</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Uday make feeder tables are used for controlled feeding of sugarcane to the main cane carrier. As the density of the tangled cane is varied, feeder tables control the feed to the main cane carrier to avoid the shock loads on the preparatory devices.
                            <span class="space10"></span>
                            We offer complete range of cane handling & feeding arrangement for sugar mill. Our comprehensive range of cane handling equipment includes Cane Unloader, Feeder Table & Cane Carrier. Easy to operate these equipment provides long service life requiring minimum maintenance.
                            <span class="space10"></span>
                            We supply feeder tables of various size as per customer requirement and suitable to site layout. Some of the main popular sizes are 6 M wide and 7 M in length & 8 M x 8 M or 4 M x 5 M.
                            <span class="space10"></span>
                            We mainly use the quality components like chains, Gear boxes, Motors and VFDs. For the chain we use appropriate breaking load of the chain ranging from 40,000 Kg to 80,000 Kg. VFDs Drive (Variable Frequency Drives) are used to save the energy.
                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>

            <div class="row g-0 border">
                <%-- Cane Un-Loaders --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Cane Un-Loaders</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Cane un-loaders can be classified in two types, first the sling type and the grab type. The purpose of un-loaders is to un-load the sugarcane from the vehicles. Selection of un-loader mainly depend on sugarcane harvesting method and vehicles used for transportation of sugarcane to the factory from cane fields.  

                            <span class="space10"></span>
                            It can load cane in fields or at collection centers, stack up sugar cane in yard.

                            <span class="space10"></span>
                            Convenient bundles of Cane /Handle bagasse and can feed cane on to the Mill Carrier.

                            <span class="space10"></span>
                            We offer complete range of un-loaders with sling-bar, hydraulic de-hooking or hydraulic grab type system, for various loads.
                            <span class="space10"></span>
                            We offer them in capacities ranging in from 2 Tons to 20 Tons.
                            <span class="space10"></span>
                            Designed as per site condition & costumer requirement. 2 Motion, 3 Motion

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

             <%-- Main Cane Carrier  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Main Cane Carrier</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Main cane carrier is a slat type conveyor which is used to transfer the cane from unloading area to fibrizer before the prepared cane is delivered to prepared cane rake carrier.

                            <span class="space10"></span>
                             The Cane carrier are available with ample carrier depth that facilitates to feed the required capacity. These machines are highly durable which can be further customized as per the need of customers.
                            <span class="space10"></span>
                           Completely made of steel, our sugar cane carriers have adequate Column & Support


                            <span class="space10"></span>
                           cane carriers both underground and over ground depending upon site topography and customer requirement for various sizes and length. Cane carriers with complete automation solutions.

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>


             <%-- Intermediate Rake Type Carriers  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Intermediate Rake Type Carriers</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            carriers is to transfer bagasse from preceding mill to the following mill.


                            <span class="space10"></span>
                             From our experience in up-gradation of existing sugar plants. We have supply and installed first, Belt, intermediate rake-type carriers suitable to existing layout like small, long distance type carriers with suitable designing of rakes and other associated accessories.

                            <span class="space10"></span>
                          We supply mill  40x80 with TRPF system  Centre distance 10 mtr. Successfully running 7500TCD.

                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>


             <%-- Rake Carriers / Rake Elevators   --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Rake Carriers / Rake Elevators </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Special design with self aligned mounting hubs for rotors.

                            <span class="space10"></span>
                            Short space rake carriers are designed to transfer the crushed cane from first to last mill, which will help to instantaneous feeding at the mills.
                        </p>
                    </div>
                </div>
            </div>
            <span class="greyLine"></span>
            <span class="space40"></span>


            <%-- ========================== Cane Prepration ================================================= --%>
             <h2 class="semiBold colorPrime mb-5 text-center" id="canerpreparation">Cane Prepration</h2>
            <div class="row g-0 border">
                <%-- Cane Chopper & Leveller --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Cane Chopper & Leveller</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            It creates uniform Cane Mat / layer. Excess cane cuts and throws back. Choke less hood of unique design.

                            <span class="space10"></span>
                            Offering a wide range of Cane Leveller. These are made from high quality raw material. These are available in different specifications.

                            <span class="space10"></span>
                            Cane Chopper & cane levelers are the new age replacement for previously used cane kicker or cutter as it has various drawbacks like jamming & feed equity etc. To avoid such problems cane chopper & levelers are used to provide uniform feed

                            <span class="space10"></span>
                            Chopper is a cane preparatory device used for chopping the tangled Leveller further chops the cane, further increasing the density of the cane in the cane carrier.

                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>


                   <div class="row g-0 border">
                <%-- Cane Chopper & Leveller --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Cane Fibrizer</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Fibrizer is one of the most critical equipment in cane milling plant. Our Unique design for high speed drives to achieve maximum crushing & P.I. of 85 & above. Easy to install in existing cane carrier without much modifications. Statically & dynamically balanced with self balanced mounting hubs.

                            <span class="space10"></span>
                            It used for tearing the sugarcane in small fibers increasing the Index of Preparation (PI). Higher preparatory index results in higher extraction efficiency of milling plant.


                            <span class="space10"></span>
                            This also increases the bulk density of the prepared cane thereby increasing the capacity of the extraction plant. Absorbed power by milling or dewatering mills is reduced.
                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>
              <span class="greyLine"></span>
            <span class="space40"></span>

              <%-- ========================== Cane milling ================================================= --%>
             <h2 class="semiBold colorPrime mb-5 text-center" id="canemilling">Cane Milling</h2>

              <div class="row g-0 border">
                <%-- MILL HOUSE EQUIPMENTS --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Mill House Equipments</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Utilizing the latest technique, we manufacture superior quality of sugar mill machinery and sugar mill equipment used for processing sugarcane. Our comprehensive range of heavy duty mill house equipment includes cane chopper, swing type cane fibrizor, rake carriers /rake elevators, mill with DC drives and more. These sugar machinery can be designed to incorporate conventional mill gearing, using a steam turbine or electric variable speed motor as the prime mover. Shaft mounted or remote electro hydraulic or electro mechanical drives can also be utilized. Cane leveler & cane chopper, Swing type cane fibrizor, Rake carriers / Rake elevators, Mill with DC drives, Mill House Cranes, TRPF / GRPF, Rotary Juice Screen, Swing Type Rope Coupling.
                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>

            <div class="row g-0 border">
                <%-- uday make mill  --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Uday make mill </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Messchart Scraper Assembly is also fitted with bottom Stool which gets automatically adjusted while resetting the bottom rollers.
                            <span class="space10"></span>
                            Lotus Type ‘Toothed Under Feed Roller which can be provided on clients request
                            <span class="space10"></span>
                            Gives better compactness of cane blanket and avoid the slippage of cane.
                            <span class="space10"></span>
                            Rollers are hard faced with special arcing electrodes for roller roughening which helps to reduce the slippage of cane blanket.
                            <span class="space10"></span>
                            Uday make mill Apex angle is minimum and does not change even at much wider
                            <span class="space10"></span>
                             Deep Juice tray with sufficient slope to the juice gutter for reducing the cause of   Jamming.
                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>

                        <div class="row g-0 border">
                <%--TRPF / GRPF Rollers  --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">TRPF / GRPF Rollers </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           TRPF / GRPF milling system increases crushing capacity. We have specially developed our design for existing mills to install TRPF / GRPF without any modification in foundations, Drivers & Gearing. With long chutes & larger angle of contact uneven feed is regulated uniformly.

                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>

            <div class="row g-0 border">
                <%-- Swing Type Rope Coupling  --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Swing Type Rope Coupling </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           Manufacturer and supplier of swing type rope coupling for sugar cane mill. Swing type rope coupling is the advanced concept for transmitting torque form gear to mill top. This coupling completely replaces the conventional tail bar & square coupling assembly. This coupling two half’s one of is driving and another is driven. The coupling directly connects the final speed reduces of the mill drive to the top roller of the mill. The first driving half part mounts on the final speed reduces output shaft square end & second driven half part mounts on the square end of the mill top roller.
                            <span class="space10"></span>
                            <span class="semiBold semiMedium colorPrime">Advantages of Swing Type Rope Coupling</span>
                            <span class="space10"></span>
                            <ul class="">
                                <li>Reduced torque & power consumption of mill.</li>
                                <li>Improves extraction performances of the mill because of the floating of top roller. It installed on last mill it reduced final baggasse moisture.</li>
                                <li>Mis-alignment between square end of the gear shaft and the top roller either due to tilting of the top roller or initial alignment error in installation is fully absorbed by the rope coupling.</li>
                                <li>Breakage of crown pinion & top roller is completely eliminated</li>
                                <li>Negligible maintenance.</li>
                            </ul>
                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>

            <div class="row g-0 border">
                <%-- Mill House Cranes  --%>
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Mill House Cranes </h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                           We had supplied E.O.T. mill house cranes ranging from 5 Tons to 50 Tons SWL capacities or it can be designed as per Clients Requirements.

                            <span class="space10"></span>
                            <span class="semiBold semiMedium colorPrime">Advantages of Swing Type Rope Coupling</span>
                            <span class="space10"></span>
                            <ul class="">
                                <li>Reduced torque & power consumption of mill.</li>
                                <li>Improves extraction performances of the mill because of the floating of top roller. It installed on last mill it reduced final baggasse moisture.</li>
                                <li>Mis-alignment between square end of the gear shaft and the top roller either due to tilting of the top roller or initial alignment error in installation is fully absorbed by the rope coupling.</li>
                                <li>Breakage of crown pinion & top roller is completely eliminated</li>
                                <li>Negligible maintenance.</li>
                            </ul>
                        </p>
                    </div>
                </div>
            </div>
                <span class="space30"></span>


            <span class="greyLine"></span>
            <span class="space40"></span>

            <%-- ========================== Process House Equipment ================================================= --%>
            <h2 class="semiBold colorPrime mb-5 text-center" id="prohouseequip">Process House Equipment</h2>

             <%-- ROBERT EVAPORATORS  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Robert Evaporators</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Robert Evaporator design improves juice processing rates and steam economy. Robert Evaporator designs improve performance for sugar mills and refineries that are dependent on vapour bleeding for juice heating or pan stage boiling.

                            <span class="space10"></span>

                            Robert Evaporators retain all the advantages of conventional design (large volume, simple construction, easy access for maintenance and cleaning), improved through extensive factory testing and design.
                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>


              <%-- BATCH VACUUM PAN  --%>
            <div class="row g-0 border">
                <div class="col-md-6 shadow">
                    <img src="../images/products/reshellers/feeder-table.jpg" class="img-fluid w-100" />
                </div>
                <div class="col-md-6 bg-light shadow">
                    <div class="p-5">
                        <h3 class="semiBold semiMedium mb-0">Batch Vacuum Pan</h3>
                        <span class="shorline themeBGSec"></span>
                        <span class="space10"></span>
                        <p class="fontRegular small line-ht-5">
                            Evaporation  rate is increases due to fast boiling
                            <span class="space10"></span>
                            Speedy & High circulation developed resulting of uniform grain size due to decrease tube length
                            <span class="space10"></span>
                            Boiling period of massecuite is minimize & hence pan capacity utilization increases considerably (i.e. Pan Capacity increases by 20-22%)
                            <span class="space10"></span>
                            Steam consumption reduced about 24-25% than high head pan
                             <span class="space10"></span>
                            Local controller or PLC based automation is provided for Batch Vacuum Pan for operation of the pan with minimal operator interference.
                        </p>
                    </div>
                </div>
            </div>
            <span class="space30"></span>

            <span class="greyLine"></span>
            <%-- ========================== Process House Equipment ================================================= --%>
            <h2 class="semiBold colorPrime mb-5 text-center">Other Products</h2>

            <div class="row">
                <div class="col-md-3">
                    <span class="semiBold semiMedium">&#187; Crown pinions</span>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">&#187; Bearing housings</span>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">&#187; Head stocks</span>
                    <span class="space10"></span>
                </div>
                <div class="col-md-3">
                    <span class="semiBold semiMedium">&#187; Scrapper Plates</span>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">&#187; Shafts</span>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">&#187; Pinion</span>
                    <span class="space10"></span>
                    
                </div>
                <div class="col-md-3">
                    <span class="semiBold semiMedium">&#187; Sugar Hopper</span>
                    <span class="space10"></span>
                    <span class="semiBold semiMedium">&#187; Mill Head</span>
                    <span class="space10"></span>
                   
                </div>
                <div class="col-md-3">
                    <span class="semiBold semiMedium">&#187; Trash plates</span>
                    <span class="space10"></span>
                     <span class="semiBold semiMedium">&#187; Calendria</span>
                    <span class="space10"></span>
                </div>
                <span class="space20"></span> 
                <span class="semiBold semiMedium colorPrime">Some Importants features</span>
                <span class="space20"></span>
                <ul class="px-4">
                    <li>Highly level of precision and quality.</li>
                    <li>Stringent Quality checks.</li>
                    <li>Reliable suppliers.</li>
                    <li>Highly skilled work force</li>
                </ul>
            </div>
           
        </div>
    </section>
    <span class="space40"></span>
    
    <%-- Reshellers product starts --%>
</asp:Content>

