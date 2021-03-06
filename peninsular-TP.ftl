<#-- reference to global functions [Required to run macros] -->
<#assign FLTFile= companyhome.childByNamePath["Data Dictionary/Web Scripts/bootstrappedFiles/functions.ftl"] > 
<#include "${FLTFile.nodeRef}" > 
<#assign channel = args["channel"] />
<#assign language = args['language']?lower_case />


<style type="text/css">

/* Full width content */
body {background: url(/alfresco/nap/webAssets/webPage/Peninsular/headerbg.jpg) center 144px repeat-x; background-color: none}
#main {width:100%;}
#header {margin:0 auto; width:950px; float:none;}
#content {width:100%!important; background:none !important}
.dropdownMenuBackground {width: 100%; background-color: #ffffff; height: 365px; display: block; position: absolute; top:0px; left:0; z-index: 900; display: none; border-bottom: 1px solid #000000;}

.holder {max-width: 950px; margin: 0 auto; position: relative;}
.cityholder {position: absolute; height: 450px}
.imageoverlay {position: absolute; top:107px; left:81px; z-index: 5; width:790px; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/overlay.jpg); background-size: 100% auto}
#peninsularplayer {position: absolute; top:107px;  z-index: 2; width: 790px; height: 482px; left: 81px }

.carousel {height: 300px; overflow: hidden; width:910px; position: absolute;left:24px; font-family:GillSans; font-size: 12px}
.carousel a {color: #000000; text-decoration: none}
.slidetext {padding: 10px 0 0 0; line-height: 14px}
.carouselholder {width: 950px; position: relative; margin-top: 20px; border-bottom: 1px solid #cccccc; height: 140px}
.carousel div {margin: 0 10px 0 0; text-align: center;; text-transform: uppercase;}
.leftarrow {width: 26px; height: 124px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/carousel-arrow_left@2x.png) no-repeat center; position: absolute; top:0; left: 0;  background-size: 100% ; z-index: 50}
.rightarrow {width: 26px; height: 124px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/carousel-arrow_right@2x.png) no-repeat center;position: absolute; top:0; left: 920px;  background-size: 100%  }
.slidefade {background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/slidefade.png); position: absolute; top: 0; left: 892px; z-index: 5; width: 38px; height: 119px}
.slidefadeleft {background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/slidefadeleft.png); position: absolute; top: 0; left: 24px; z-index: 5; width: 38px; height: 119px; display: none}

.peninsular_ImageRepeater {width: 316px; height:316px; float:left; position: relative;}
.peninsular_ImageHoverBox {position: absolute;width: 316px; height: 316px;  z-index: 10; top: 0; left:0; background-color: rgba(0,0,0,0.25);}
.peninsular_ImagesCaption {position: absolute; top:318px; left:0px; width: 316px; padding: 6px; background-color: rgba(255,255,255,0.6); font-size: 14px; height:16px; white-space: nowrap;font-family: ModernNAP-TextItalic; color:#333333;z-index: 7;overflow: hidden}
.peninsularImageHolder {position: absolute; width: 560px; height:316px; overflow: hidden; z-index: 5; top: 0; left:0;}
.photoRow {display: none; clear:both}
#row0, #row1, #row2, #row3 {display:block}

.peninsularProductRepeater {width: 230px; margin-right: 7px; height:360px; float:left; position: relative;overflow: hidden; position: relative; text-align: center}
.peninsularProductImage {width: 237px; float:left; margin:0 3px;overflow: hidden;width:230px; height: 265px }
.peninsularProductTitle {font-family: GillSans !important ; font-size: 12px; font-weight: bold; text-align: left; width: 237px;margin:25px 0 0 0; float: left;}
.peninsularProductDescription, .peninsularProductPrice {font-family: arial; font-size: 12px; text-align: left; width: 217px; margin:2px 0 0 0;}
.peninsularProductTitle a, .peninsularProductDescription a{color: #000000; text-decoration: none}
.peninsularProducts {margin-left: 10px}

.slug {font-family: gillsans; border: 1px solid #999;color:#666;font-size: 10px;padding: 1px 5px;position: relative;top: 4px;text-transform: uppercase;letter-spacing: 1px; margin:0 auto; display: none}

.peninsularImageHolder img {margin-right: 60px; float: left}

.productHolder {margin-top: 30px; position: relative;}
.videoAndTileHolder {height: 589px}
.peninsulartitle {position: absolute; top: 18px; width: 100%; height: 30px; font-family: "ModernNAP-Subhead",'MSung PRC Medium', Arial, "Microsoft YaHei", Hei, Hei Ti, SimHei, STXihei, sans-serif !important; font-size: 24px; text-align: center; text-transform: uppercase;}
.peninsularStrapline { width: 90%; left:5%; font-family: gillsanslight; position: absolute; top: 52px; text-align: center; font-size: 16px}

.contentslide {width: 950px; height: 528px; position: relative;margin-top: 20px;}
.imagearea1 {position: absolute; top:0; left:0; z-index: 2}
.imagearea2 {position: absolute; top:0; left:0; z-index: 2}
.contentslidetext {position: absolute; left: 580px; top:50px; padding:40px; background-color: #ffffff; border: 1px solid #a1a1a1; height: 320px; width: 240px; z-index: 5 }
.contentcarouselholder {position: relative; width: 100%; float: left}

.leftarrowcontent {width: 26px; height: 500px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_left@2x.png) no-repeat center;  position: absolute; top:0; left: 0; background-size: 50% ; z-index: 10; display: none}
.rightarrowcontent {width: 26px; height: 500px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_right@2x.png) no-repeat center;position: absolute; top:0; left: 920px; background-size: 50%; z-index: 10 }
.contentslidetitle {font-size: 24px;font-family: "ModernNAP-Text"; margin-bottom: 50px }
.contentslidecontent {font-family: gillsanslight; font-size: 14px; line-height: 19px}

.cityImageHolder {z-index: 1; position: absolute;top:0; left: 0}
.peninsularoverlaytitle{width: 100%;font-size: 38px;font-family: "ModernNAP-Display";text-align: center;color: #000000.;position: absolute;text-transform: uppercase;z-index: 12; line-height: 37px;top: 16px;}
.peninsularoverlaysubtitle {width: 90%;font-size: 14px;font-family: "ModernNAP-DisplayItalic";text-align: center;color: #000000;position: absolute;top: 90px;z-index: 12; line-height: 16px;padding: 0 5%;}
.peninsularTextHolder {width: 60%;background-color: #ffffff;position: absolute;top: 140px;z-index: 10;height: 165px;left: 20%; box-shadow: 3px 3px 5px #000000;}

.advertLine1 {position: absolute; width: 140px; height: 45px; top: 240px; left: 25px; font-family: gillsanslight; font-size: 13px; color: #ffffff}
.advertLine2 {position: absolute; width: 140px; height: 45px; top: 275px; left: 25px; font-family: "ModernNAP-Display"; font-size: 22px; color: #ffffff; line-height: 19px}

.advertMobile {display: none}
.contentsliderVideo {width: 49%; margin-left: 7%; padding-bottom: 30.8%; position: relative;height: 0; margin-top: 11%}


.contentsliderVideo iframe {  position: absolute; top: 0; left: 0; width: 100%; height: 100%;}
.productIntro {width: 100%; text-align: center; font-family: gillSans; font-size: 13px; padding: 15px 0; text-transform: uppercase; }
.slick-slider {border-bottom: 1px solid #cccccc;padding-bottom: 6px;}

@media (max-width: 768px) {

  .productHolder {margin-top: 30px; position: relative}

  .carousel {height: 170px}

  .peninsularoverlaytitle {font-size: 21px; line-height: 24px; top:16px;}
  .peninsularoverlaysubtitle {width: 90%;font-size: 14px;font-family: "ModernNAP-DisplayItalic";text-align: center;color: #000000;position: absolute;top: 90px;z-index: 12; line-height: 19px;padding: 0 5%;}
  .productHolder {margin-top: 0px}
  .advertMobile {width: 60%;margin: 0 auto 30px auto;border: 1px solid #cccccc;border-radius: 4px;font-family: gillsanslight;font-size: 13px;color: #000000;display: block;float: left;margin-left: 15%;padding: 5%;text-align: center;}
  .peninsularAdvert {display: none}

  .peninsularImageHolder img {width: 110px; margin-right: 430px;}

.peninsularTextHolder {width: 90%;background-color: #ffffff;position: absolute;top: 140px;z-index: 10;height: 245px;left: 5%; box-shadow: 3px 3px 5px #000000;}

    .videooverlaytitle {font-size: 36px}
.videooverlaysubtitle {font-size: 36px}

.leftarrowcontent, .rightarrowcontent  {height: 150px; background-position: center}
.rightarrowcontent  {right:10px; left:auto;}

.contentcarousel {width: 100%}
.contentslide {width: 100%; height: auto; position: relative;}
.imagearea1 {position: relative; top:auto; left:auto; z-index: 2; float: left; background-size: 100% auto}
.imagearea2 { position: relative; top:auto; left:auto; z-index: 2; float: left; background-size: 100% auto}
.contentslidetext {position: relative; left: auto; top:auto; padding:10px; background-color: #ffffff; border: none; height: auto; width: 97%; z-index: 5; float: left ;}
.contentsliderVideo {width: 70%; margin-left: 15%; padding-bottom: 46.8%; position: relative;height: 0; margin-top: 1%}
.contentcarouselholder {position: relative; width: 96%; left: 2%}

.contentcarouselholder {display: none !important}


  body {background: none !important; background-color: none}
  .holder{float: left}
  .videoAndTileHolder {height: auto; width:96%; margin-left:2%;}
  .peninsulartitle {position: relative; width: 100%; top:auto; float: left; font-family: "ModernNAP-Text"; font-size: 14px; text-align: center; text-transform: uppercase; margin-top: 20px; left:auto;}
  .peninsularStrapline { width: 100%; font-family: gillsanslight; position: relative; top:auto; text-align: center; font-size: 14px; left:auto; margin-bottom: 20px}

  .holder {max-width: 100%; margin: 0 auto; position: relative;}
  .carouselholder {width: 96%; position: relative; margin: 480px 0 20px 2%; border-bottom: 1px solid #cccccc; height: 150px; }
  #peninsularplayer {width: 100%; left:0;  float:left; top:auto;}
  .cityholder {position: relative; left:0; float:left; width: 100%; height: auto}
  .imageoverlay {left:0; width: 100%; top:auto; position: relative; float: left}
  .leftarrow  {display: none !important}
  .rightarrow {display: none !important}
  .slidefade {right:9px; height: 89px}
  .slidefadeleft {height: 89px; left: -6px}
  .carousel {width: 100%; position: relative; float: left; left:auto;}
  .carousel img {width: 99%; }
  .carousel div {margin: 0 0;}


  .peninsularProductRepeater {width: 150px; height: 310px}
  .peninsularImageHolder img {width: 110px; margin-left: 18px}
  .peninsularProductDescription, .peninsularProductPrice, .peninsularProductTitle    {width: 150px; text-align: center;}
  .peninsularProductDescription {text-transform: none;}
  .peninsularProductImage {height: 150px}

}


@media (max-width: 450px) {


.contentcarouselholder {display: none !important}


  .videooverlaytitle {font-size: 22px}
.videooverlaysubtitle {font-size: 22px}

}
</style>

  <div class="dropdownMenuBackground"></div>
    <div class="holder">
      <div class="videoAndTileHolder">
        <div class="peninsulartitle">${message("page.title_" + language)}</div>
        <div class="peninsularStrapline">${message("page.subtitle_" + language)}</div>
        <div class="cityholder">
          <div class="imageoverlay">
            <div class="peninsularTextHolder">
              <div class="peninsularoverlaytitle"></div>
              <div class="peninsularoverlaysubtitle"></div>
            </div>
            <div class="cityImageHolder"></div>
          </div>
         </div>
      </div>
    <div class="carouselholder">
        <div class="slidefadeleft"></div>
        <div class="slidefade"></div>
        <a class="leftarrow" href="javascript:void(0)" onclick="$('.carousel').slickPrev();"><a>
      <div class="carousel">
        <div><a href="#"><img src="/alfresco/nap/webAssets/webPage/Peninsular/1_${message(language)}.jpg" width="150px" height="84px"   /><div class="slidetext">${message("city1.title_" + language)}</div></a></div>
        <div><a href="#"><img src="/alfresco/nap/webAssets/webPage/Peninsular/2_${message(language)}.jpg" width="150px" height="84px"  /><div class="slidetext">${message("city2.title_" + language)}</div></a></div>
        <div><a href="#"><img src="/alfresco/nap/webAssets/webPage/Peninsular/3_${message(language)}.jpg" width="150px" height="84px" /><div class="slidetext">${message("city3.title_" + language)}</div></a></div>
        <div><a href="#"><img src="/alfresco/nap/webAssets/webPage/Peninsular/4_${message(language)}.jpg" width="150px" height="84px" /><div class="slidetext">${message("city4.title_" + language)}</div></a></div>
        <div><a href="#"><img src="/alfresco/nap/webAssets/webPage/Peninsular/5_${message(language)}.jpg" width="150px" height="84px" /><div class="slidetext">${message("city5.title_" + language)}</div></a></div>
       <!-- <div><a href="javascript:swapCity(6)"><img src="/alfresco/nap/webAssets/webPage/Peninsular/6.jpg" width="150px" height="84px" /><div class="slidetext">${message("city6.title_" + language)}</div></a></div>
        <div><a href="javascript:swapCity(7)"><img src="/alfresco/nap/webAssets/webPage/Peninsular/7.jpg" width="150px" height="84px" /><div class="slidetext">${message("city7.title_" + language)}</div></a></div>
        <div><a href="javascript:swapCity(8)"><img src="/alfresco/nap/webAssets/webPage/Peninsular/8.jpg" width="150px" height="84px" /><div class="slidetext">${message("city8.title_" + language)}</div></a></div>
        <div><a href="javascript:swapCity(9)"><img src="/alfresco/nap/webAssets/webPage/Peninsular/9.jpg" width="150px" height="84px" /><div class="slidetext">${message("city9.title_" + language)}</div></a></div>
        <div><a href="javascript:swapCity(10)"><img src="/alfresco/nap/webAssets/webPage/Peninsular/10.jpg" width="150px" height="84px" /><div class="slidetext">${message("city10.title_" + language)}</div></a></div>-->

      </div>
      <a class="rightarrow"  href="javascript:void(0)" onclick="$('.carousel').slickNext();"><a>
    </div>

        <div class="contentcarouselholder">
      <a class="leftarrowcontent" href="javascript:void(0)" onclick="$('.contentcarousel').slickPrev();"><a>
    <div class="contentcarousel">
        <div class="contentslide" id="slide1"> 
          <img src="/alfresco/nap/webAssets/webPage/Peninsular/slide_1_1_${message(language)}.jpg" usemap="#Paris1">
          
        </div>

        <div class="contentslide" id="slide2"> 
         <img src="/alfresco/nap/webAssets/webPage/Peninsular/slide_1_2_${message(language)}.jpg" usemap="#Paris2">
       
        </div>

        <div class="contentslide" id="slide3"> 
          <img src="/alfresco/nap/webAssets/webPage/Peninsular/slide_1_3_${message(language)}.jpg" usemap="#Paris3">
        
       </div>

       <div class="contentslide" id="slide4"> 
         <img src="/alfresco/nap/webAssets/webPage/Peninsular/slide_1_4_${message(language)}.jpg"  usemap="#Paris4">
       </div>
       
  </div>
  <a class="rightarrowcontent" href="javascript:void(0)" onclick="$('.contentcarousel').slickNext();"><a>
      </div>


      <div class="productIntro">${message("product_intro_" + language)} </div>

    <div class="productHolder"><a class="leftarrow" href="javascript:void(0)" onclick="$('.peninsularProducts').slickPrev();" ><a>
      <div class="peninsularProducts">

       
   
      </div><a class="rightarrow" href="javascript:void(0)" onclick="$('.peninsularProducts').slickNext();"><a>
    </div>


  </div>
   <map name="Paris1" id="Paris1">
  <area shape="rect" coords="354,464,614,511" href="http://pubads.g.doubleclick.net/gampad/clk?id=407896391&amp;iu=/9237/netaporter/creativesolutions" target="_blank" />
</map>

  <map name="Paris2" id="Paris2">
  <area shape="rect" coords="113,117,299,204" href="http://pubads.g.doubleclick.net/gampad/clk?id=407896391&amp;iu=/9237/netaporter/creativesolutions" target="_blank" />
  <area shape="rect" coords="719,156,877,194" href="http://lapatisseriedesreves.com/" target="_blank" />
  <area shape="rect" coords="718,213,877,237" href="http://www.lespinces.com/" target="_blank" />
  <area shape="rect" coords="718,261,880,315" href="http://lestablettesjeanlouisnomicos.com/" target="_blank" />
  <area shape="rect" coords="722,351,888,401" href="http://cristalroom.com/" target="_blank" />
</map>

  <map name="Paris3" id="Paris3">
  <area shape="rect" coords="382,418,690,487" href="http://www.fondationlouisvuitton.fr/" target="_blank" />
  <area shape="rect" coords="719,218,887,264" href="http://www.palaisgalliera.paris.fr/" target="_blank" />
  <area shape="rect" coords="715,319,894,358" href="http://www.clublebaron.com/" target="_blank" />
  <area shape="rect" coords="720,389,889,425" href="http://www.noel-paris.com/" target="_blank" />
  <area shape="rect" coords="718,461,887,507" href="http://www.pad-fairs.com/paris/" target="_blank" />
</map>

<map name="Paris4" id="Paris4">
  <area shape="rect" coords="793,154,929,191" href="http://reciproque.fr/" target="_blank" />
  <area shape="rect" coords="717,227,906,259" href="http://paris.peninsula.com/en/spa-wellness" target="_blank" />
</map>
    <script>

cityOverlayTitles = [ "${message("city1.strapline_" + language)}", "${message("city2.strapline_" + language)}", "${message("city3.strapline_" + language)}", "${message("city4.strapline_" + language)}", "${message("city5.strapline_" + language)}", "${message("city6.strapline_" + language)}", "${message("city7.strapline_" + language)}", "${message("city8.strapline_" + language)}", "${message("city9.strapline_" + language)}", "${message("city10.strapline_" + language)}"];

cityOverlaySubTitles = [ "${message("city1.description_" + language)}", "${message("city2.description_" + language)}", "${message("city3.description_" + language)}", "${message("city4.description_" + language)}", "${message("city5.description_" + language)}", "${message("city6.description_" + language)}", "${message("city7.description_" + language)}", "${message("city8.description_" + language)}", "${message("city9.description_" + language)}","${message("city10.description_" + language)}"];

cityProductLists = ["/Shop/List/The_Peninsula_Paris", "/Shop/List/The_Peninsula_Paris","/Shop/List/The_Peninsula_Paris","/Shop/List/Heroine_pieces","/Shop/Designers/adidas_by_Stella_McCartney","/Shop/Designers/adidas_by_Stella_McCartney","/Shop/Designers/adidas_by_Stella_McCartney","/Shop/Designers/adidas_by_Stella_McCartney","/Shop/Designers/adidas_by_Stella_McCartney","/Shop/Designers/adidas_by_Stella_McCartney",]


if ($('.l-service-message-extended-wrapper').length < 1) {
  $('body').css('background', 'url(/alfresco/nap/webAssets/webPage/adidas-McCartney/headerbg.jpg) center 109px repeat-x')
}


$("#top-nav li").on('mouseenter',function(){
  $(".dropdownMenuBackground").fadeIn()
})

$("#top-nav ul").on('mouseleave',function(){
  $(".dropdownMenuBackground").fadeOut()
})
      
    

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

var wrapEveryN = function(n, elements, wrapper) {
   for (var i=0; i< elements.length; i+=n) {
       elements.slice(i,i+n).wrapAll(wrapper);
   }
}

function productHover(productID) {
  $('#product' + productID +' .peninsularImageHolder').css('left', '-240px')
  $('#'+ productID +' .peninsularProductTitle a').css('background-color', '#000000')
  $('#'+ productID +' .peninsularProductTitle a').css('color', '#ffffff')
  $('#product' + productID).css('cursor','pointer');

}

function productHoverOut(productID) {
  $('#product' + productID +' .peninsularImageHolder').css('left', '-0px')
  $('#'+ productID +' .peninsularProductTitle a').css('background-color', '#ffffff')
  $('#'+ productID +' .peninsularProductTitle a').css('color', '#000000')
  $('#product' + productID).css('cursor','pointer');
}

function swapCityImage(cityID){

  $(".cityImageHolder").html("<img src='/alfresco/nap/webAssets/webPage/Peninsular/big" + cityID + ".jpg' />")
}

function swapCityText(cityID) {

  cityID = cityID - 1

  $(".peninsularoverlaytitle").html(cityOverlayTitles[cityID])
  $(".peninsularoverlaysubtitle").html(cityOverlaySubTitles[cityID])

}

function swapCityslides(cityID) {

  $('#slide1').html("<img src='/alfresco/nap/webAssets/webPage/Peninsular/slide_" + cityID + "_1_" + "${message(language)}.jpg' usemap='#Paris1'>")
  $('#slide2').html("<img src='/alfresco/nap/webAssets/webPage/Peninsular/slide_" + cityID + "_2_" + "${message(language)}.jpg' usemap='#Paris2'/>")
  $('#slide3').html("<img src='/alfresco/nap/webAssets/webPage/Peninsular/slide_" + cityID + "_3_" + "${message(language)}.jpg' usemap='#Paris3'/>")
  //'#slide4').html("<img src='/alfresco/nap/webAssets/webPage/Peninsular/slide_" + cityID + "_4_" + "${message(language)}.jpg' />")

}

function swapCity(cityID) {

  swapCityImage(cityID);
  swapCityText(cityID);
  loadProducts(cityID) ;
  swapCityslides(cityID);
  $('.contentcarousel').slickGoTo('0');

}


function carouselTheProducts() {

    if ($(window).width() >768) {
  
    $(".peninsularProducts").slick({
    dots:false,
    infinite: true,
    slidesToShow: 4,
    onAfterChange: function(e){
   
      if (e.currentSlide == 0) {
        //$(".leftarrow").fadeOut()
        //$(".rightarrow").fadeIn()
       
     
      if (e.currentSlide == 1) {
      // $(".leftarrow").fadeIn()
      // $(".rightarrow").fadeIn()
       
      }

      if (e.currentSlide == 2) {
       //$(".leftarrow").fadeIn()
       // $(".rightarrow").fadeOut()
       
      }
    }},
    responsive: [
    
    {
      breakpoint: 890,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: false
      }
    },
     {
      breakpoint: 500,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        arrows: false
      }
    }
  ]
  });
    }
}



function loadProducts(listID) {

soldout = String("${message("peninsular_soldout_" + language)}")

  $(".peninsularProducts").html("")
  listID = listID -1


if ($(window).width() > 767){




$.ajax({
      type: "GET",
        dataType: "xml",
        cache: false,
        url: cityProductLists[listID] + "?view=xml",
        success: function(data) {

          var i = 0
          $(data).find("product").each(function(){

          i = i+1
        
        
        
          altimage = $(this).attr("altImage").substr(0, 2);

          if (altimage == 'el') {altimage = 'l'}


          if ( $(this).attr("slugImage") != null){ 


            $(".peninsularProducts").prepend("<div class='peninsularProductRepeater' id='product"+ $(this).attr("id") +"''><div class='peninsularProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' id='product"+$(this).attr("id")+"' ><a class='peninsularExlusive' href='/product/" + $(this).attr("id") + "'></a><div class='peninsularImageHolder' ><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_ou_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='peninsularProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='peninsularProductDescription'>" + $(this).attr("title") + "</div><div class='peninsularProductPrice'>" + $(this).attr("currentPrice") + "</div><span class='slug'>"+ soldout + "</span></div>")
            
  
          } else {

            $(".peninsularProducts").prepend("<div class='peninsularProductRepeater'><div class='peninsularProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' id='product"+$(this).attr("id")+"' ><div class='peninsularImageHolder'><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_ou_sl.jpg'/></a></div> </div><div id="+ $(this).attr("id") +"><div class='peninsularProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='peninsularProductDescription'>" + $(this).attr("title") + "</div><div class='peninsularProductPrice'>" + $(this).attr("currentPrice") + "</div></div>")    
                };  
          if (i  > 5) {
              carouselTheProducts();
            return false;} 

      }
        
    )  
    
    }
    });

}

if ($(window).width() < 768){

$.ajax({
      type: "GET",
        dataType: "xml",
        cache: false,
         url: cityProductLists[listID] + "?view=xml",
        success: function(data) {
            var i = 0
      $(data).find("product").each(function(){

         i = i+1
        
        

        
        altimage = $(this).attr("altImage").substr(0, 2);

        if (altimage == 'el') {altimage = 'l'}


        if ( $(this).attr("slugImage") != null){ 

          $(".peninsularProducts").prepend("<div class='peninsularProductRepeater' id='product"+ $(this).attr("id") +"''><div class='peninsularProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' onclick='getHref(" + $(this).attr("id") + ")' id='product"+$(this).attr("id")+"' ><a class='peninsularExlusive' href='/product/" + $(this).attr("id") + "'></a><div class='peninsularImageHolder' ><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='peninsularProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='peninsularProductDescription'>" + $(this).attr("title") + "</div><div class='peninsularProductPrice'>" + $(this).attr("currentPrice") + "</div><span class='slug'>"+ soldout + "</span></div>")
            
  
        } else {

          $(".peninsularProducts").prepend("<div class='peninsularProductRepeater'><div class='peninsularProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' onclick='getHref(" + $(this).attr("id") + ")' id='product"+$(this).attr("id")+"' ><div class='peninsularImageHolder'><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='peninsularProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='peninsularProductDescription'>" + $(this).attr("title") + "</div><div class='peninsularProductPrice'>" + $(this).attr("currentPrice") + "</div></div>")    
                };   
        
          if (i  > 5) {
  carouselTheProducts();
            return false;}

      }
        
                )  
    
    }
    });
}

}

function fixSocialMedia() {
  $("#social-media-bar").html("<div class='line'></div><ul id='social-media-links'><li class='facebook'><a href='https://www.facebook.com/netaporter' target='_blank'><span>NET-A-PORTER FACEBOOK</span></a></li><li class='twitter'><a href='https://twitter.com/#!/NETAPORTER' target='_blank'><span>NET-A-PORTER TWITTER</span></a></li><li class='pinterest'><a href='http://pinterest.com/netaporter/' target='_blank'><span>NET-A-PORTER PINTEREST</span></a></li><li class='tumblr'><a href='http://editors-photo-diary.net-a-porter.com/' target='_blank'><span>NET-A-PORTER TUMBLR</span></a></li><li class='googleplus'><a href='https://plus.google.com/115458014935766479911/posts' target='_blank'><span>NET-A-PORTER GOOGLE+</span></a></li><li class='youtube'><a href='http://www.youtube.com/netaporter' target='_blank'><span>NET-A-PORTER YOUTUBE</span></a></li></ul>")
}

function setAspectRatios() {
   if ($(window).width() <768) {
    pushLeft = $(window).width() - 40
    $(".slidefade").css("left", pushLeft)
  }

  $(".imageoverlay").height($("#peninsularplayer").width() * aspect_ratio );
  $(".cityholder").height($("#peninsularplayer").width() * aspect_ratio );

}

function getHref(product){  
  location.href="/product/" + product
}

function loadCarousels() {

  $(".carousel").slick({
    dots:false,
    infinite: false,
    slidesToShow: 5.5,
    onAfterChange: function(e){
   
   if ($(window).width() > 767) {
   
      if (e.currentSlide == 0) {
        $(".leftarrow").fadeOut()
        $(".rightarrow").fadeIn()
        $(".slidefadeleft").fadeOut()
      }
      if (e.currentSlide > 0 && e.currentSlide < 6) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeIn()
        $(".slidefade").fadeIn()
        $(".slidefadeleft").fadeIn()
      }
      if (e.currentSlide == 5) {
     
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeOut()
        $(".slidefade").fadeOut()
        $(".slidefadeleft").fadeIn()
      }
      }
      if ($(window).width() < 768 && $(window).width() > 339 ) {
     
      if (e.currentSlide == 0) {
        $(".leftarrow").fadeOut()
        $(".rightarrow").fadeIn()
        $(".slidefadeleft").fadeOut()
      }
      if (e.currentSlide > 0 && e.currentSlide < 6) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeIn()
        $(".slidefade").fadeIn()
        $(".slidefadeleft").fadeIn()
      }
      if (e.currentSlide == 6) {
     
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeOut()
        $(".slidefade").fadeOut()
        $(".slidefadeleft").fadeIn()
      }
      }

      if ($(window).width() < 340) {
     
      if (e.currentSlide == 0) {
        $(".leftarrow").fadeOut()
        $(".rightarrow").fadeIn()
        $(".slidefadeleft").fadeOut()
      }
      if (e.currentSlide > 0 && e.currentSlide < 8) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeIn()
        $(".slidefade").fadeIn()
        $(".slidefadeleft").fadeIn()
      }
      if (e.currentSlide == 8) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeOut()
        $(".slidefade").fadeOut()
        $(".slidefadeleft").fadeIn()
      }
      }



    },
    responsive: [
    
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 4.5,
        slidesToScroll: 2,
        arrows: false
      }
    },
    {
      breakpoint: 340,
      settings: {
        slidesToShow: 2.5,
        slidesToScroll: 1,
        arrows: false
      }
    }
  ]
  });



  $(".contentcarousel").slick({
    dots:false,
    infinite: false,
    slidesToShow: 1,
    onAfterChange: function(e){
   
      if (e.currentSlide == 0) {
        $(".leftarrowcontent").fadeOut()
        $(".rightarrowcontent").fadeIn()
       
      }
     
      if (e.currentSlide == 1) {
        $(".leftarrowcontent").fadeIn()
        $(".rightarrowcontent").fadeIn()
       
      }

      if (e.currentSlide == 3) {
        $(".leftarrowcontent").fadeIn()
        $(".rightarrowcontent").fadeOut()
      
      }
    },

    responsive: [
    
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false
      }
    }
    ]
  });
}

var aspect_ratio = 0.5625
var holder_ratio = 0.9

jQuery(window).resize(function() {

  if ($(window).width() <768) {
    pushLeft = $(window).width() - 40
    $(".slidefade").css("left", pushLeft)
  }

   $("#peninsularplayer").height($("#peninsularplayer").width() * aspect_ratio );
   $(".imageoverlay").height($("#peninsularplayer").width() * aspect_ratio );
   $(".cityholder").height($("#peninsularplayer").width() * aspect_ratio );
   //$(".videoAndTileHolder").height($("#peninsularplayer").width() * holder_ratio );
});

  $( ".close" ).click(function() {
  
 if ($('.service-messages-extended').length < 1 ) {
    $("body").css('background-position', 'center 108px'); 
      } 
    
      else  {
    $("body").css('background-position', 'center 144px'); 
      }
});

$(document).ready(function(){

  fixSocialMedia();
  setAspectRatios();
  loadCarousels();
  swapCity(1);
  loadProducts();


});

  
$(window).load(function() {
  
  if ($('.service-messages-extended').length < 1 && $('.cookie-policy').length  < 1 ) {
    $("body").css('background-position', 'center 108px'); 
      } 
      else if ($('.service-messages-extended').length > 0 && $('.cookie-policy').length  > 0) {
          $("body").css('background-position', 'center 198px'); 
      }
      else  {
    $("body").css('background-position', 'center 144px'); 
      }

$(".inner").bind( "click", function() {
   if ($('.service-messages-extended').length < 1 ) {
    $("body").css('background-position', 'center 108px'); 
      } 
      else  {
    $("body").css('background-position', 'center 144px'); 
      }
});



  });
  

    </script>
  </body>
</html>