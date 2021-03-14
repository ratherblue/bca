<#ftl strip_text=true />

<#--
  Shared, page-related macros, functions, and variables

  @namespace page
-->



<#---
  Imports
-->
<#import "seo.ftl" as seo />
<#import "social-media.ftl" as socialMedia />
<#import "header.ftl" as header />
<#import "footer.ftl" as footer />


<#---
  Shared vars
-->
<#assign titleSuffix = " — IHAG" />


<#---
  Default preamble to the page
-->
<#macro preamble>
  <!doctype html>
</#macro>


<#---
  Default page macro

  @param title the list of stylesheets
  @param bodyClass
  @param stylesheets the list of stylesheets to be included on page
  @param scripts the list of scripts to be included on the page
  @param ogData object containing open graph properties
  @param activeTab
  @param sitemap data for the sitemap
  @param itemtype
-->
<#macro page title="" bodyClass="" stylesheets=[] scripts=[] ogData={} activeTab="home" sitemap={} itemtype="https://schema.org/WebPage">
  <@collectPage title=title sitemap=sitemap />
  <#compress>
    <@preamble />
    <html lang="${c.lang}">
    <head prefix="og: http://ogp.me/ns#">
      <@charset />
      <title>${title}</title>
      <@defaultMetaTags />
      <script src="${pp.home}js/jquery.js?ver=1.12.4"></script>
      <script src="${pp.home}js/jquery-migrate.min.js?ver=1.4.1"></script>
      <script src="${pp.home}js/responsive-modernizr.js?ver=2.6.1"></script>
      <link href="https://fonts.googleapis.com/css?family=Oxygen:400,700,300" rel="stylesheet" type="text/css">
      <link rel="stylesheet" type="text/css" href="${pp.home}css/style.css">
      <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    </head>
    <body<#if bodyClass?has_content> class="${bodyClass}"</#if> itemscope itemtype="${itemtype}">
      <div id="container" class="hfeed">
        <meta itemprop="dateModified" content="${pp.now?iso("America/Los_Angeles")}">
        <div id="header">
          <@header.header />
        </div>
        <div id="wrapper" class="clearfix page-parent">
          <div id="content-full" class="grid col-940">
            </#compress><#nested /><#compress>
          </div>
        </div>
      </div>
      <#-- footer -->
      <@footer.wrapper />
      <script src="${pp.home}js/responsive-scripts.js?ver=1.2.3"></script>
      <script src="${pp.home}js/responsive-plugins.js?ver=1.2.3"></script>
      <!--<script src="${pp.home}js/wp-embed.min.js?ver=5.1.8"></script>-->
      <script src="${pp.home}js/jquery.flexslider-min.js?ver=2.0"></script>
      <script type="text/javascript">
        jQuery(document).ready(function ($) {
          $('.flexslider').flexslider({
            animation: "fade"
          });
        });

        jQuery(document).ready(function($) {
          var targetImage = $(".attachment-post-thumbnail")[0];

          $(".gallery a").click(function(e) {
            e.preventDefault();
          });

          //preload images
          var images = [];

        $(".gallery img:first").addClass("attachment-thumbnail-active");
          $(".gallery img").click(function(e) {
            e.stopPropagation();
            e.preventDefault();
            var clickedImage = e.target;
            $(".attachment-thumbnail-active").removeClass("attachment-thumbnail-active");
            $(clickedImage).addClass("attachment-thumbnail-active");
            targetImage.src = clickedImage.src.replace("-84x50", "");
            targetImage.srcset = '';
          }).each(function(index) {
            images[index] = new Image();
            images[index].src = this.src.replace("-84x50", "");
          });
        });

        jQuery(document).ready(function ($) {
          var menuImages = $(".menu-images");

          if ($(".page-item-14").hasClass("current_page_item") || $(".page-item-14").hasClass("current_page_parent")) {
            $(".menu-hover.residential").addClass("residential-hover");
          } else {
            $(".page-item-14").hover(function (e) {
              $(".menu-hover.residential").addClass("residential-hover");
            }, function (e) {
              $(".menu-hover.residential").removeClass("residential-hover");
            });
          }

          $(".residential", menuImages).hover(
            function (e) {
              $(".page-item-14 a").css({ "background-color": "#222", "color": "#FFF" });
              $(".page-item-14 > ul").css({ 'visibility': 'visible', 'top': '100%' });
            },
            function (e) {
              $(".page-item-14 a").css({ "background-color": "", "color": "" });
              $(".page-item-14 > ul").css({ 'visibility': '', 'top': '' });
            });

          if ($(".page-item-52").hasClass("current_page_item") || $(".page-item-52").hasClass("current_page_parent")) {
            $(".menu-hover.development").addClass("development-hover");
          } else {
            $(".page-item-52").hover(function (e) {
              $(".menu-hover.development").addClass("development-hover");
            }, function (e) {
              $(".menu-hover.development").removeClass("development-hover");
            });
          }

          $(".development", menuImages).hover(
            function (e) {
              $(".page-item-52 a").css({ "background-color": "#222", "color": "#FFF" });
              $(".page-item-52 > ul").css({ 'visibility': 'visible', 'top': '100%' });
            },
            function (e) {
              $(".page-item-52 a").css({ "background-color": "", "color": "" });
              $(".page-item-52 > ul").css({ 'visibility': '', 'top': '' });
            });

          if ($(".page-item-24").hasClass("current_page_item") || $(".page-item-24").hasClass("current_page_parent")) {
            $(".menu-hover.the-studio").addClass("the-studio-hover");
          } else {
            $(".page-item-24").hover(function (e) {
              $(".menu-hover.the-studio").addClass("the-studio-hover");
            }, function (e) {
              $(".menu-hover.the-studio").removeClass("the-studio-hover");
            });

          }

          $(".the-studio", menuImages).hover(
            function (e) {
              $(".page-item-24 a").css({ "background-color": "#222", "color": "#FFF" });
              $(".page-item-24 > ul").css({ 'visibility': 'visible', 'top': '100%' });
            },
            function (e) {
              $(".page-item-24 a").css({ "background-color": "", "color": "" });
              $(".page-item-24 > ul").css({ 'visibility': '', 'top': '' });
            });

          if ($(".page-item-66").hasClass("current_page_item") || $(".page-item-66").hasClass("current_page_parent")) {
            $(".menu-hover.commercial").addClass("commercial-hover");
          } else {
            $(".page-item-66").hover(function (e) {
              $(".menu-hover.commercial").addClass("commercial-hover");
            }, function (e) {
              $(".menu-hover.commercial").removeClass("commercial-hover");
            });
          }

          $(".commercial", menuImages).hover(
            function (e) {
              $(".page-item-66 a").css({ "background-color": "#222", "color": "#FFF" });
              $(".page-item-66 > ul").css({ 'visibility': 'visible', 'top': '100%' });
            },
            function (e) {
              $(".page-item-66 a").css({ "background-color": "", "color": "" });
              $(".page-item-66 > ul").css({ 'visibility': '', 'top': '' });
            });

          if ($(".page-item-76").hasClass("current_page_item") || $(".page-item-76").hasClass("current_page_parent")) {
            $(".menu-hover.media").addClass("media-hover");
          } else {
            $(".page-item-76").hover(function (e) {
              $(".menu-hover.media").addClass("media-hover");
            }, function (e) {
              $(".menu-hover.media").removeClass("media-hover");
            });

          }

          $(".media", menuImages).hover(
            function (e) {
              $(".page-item-76 a").css({ "background-color": "#222", "color": "#FFF" });
              $(".page-item-76 > ul").css({ 'visibility': 'visible', 'top': '100%' });
            },
            function (e) {
              $(".page-item-76 a").css({ "background-color": "", "color": "" });
              $(".page-item-76 > ul").css({ 'visibility': '', 'top': '' });
            });
          });
        </script>
    </body>
    </html>
  </#compress>
</#macro>

<#---
  Adds to the list of pages for use in the sitemap and various navigations
  @param title string containing the title of the page
  @param sitemap data for the sitemap
-->
<#macro collectPage title sitemap>
  <#if !pp.s.pages??>
    <@pp.set hash=pp.s key="pages" value=pp.newWritableSequence() />
  </#if>
  <@pp.add seq=pp.s.pages
      value={
        "url": pp.pathTo(pp.outputFile),
        "title": title,
        "outputFile": pp.outputFile,
        "sitemap": sitemap
      }/>
</#macro>


<#---
  Charset meta tag
  Keep this separate from "defaultMetaTags" since it should go above the <title> tag
-->
<#macro charset>
  <meta charset="utf-8">
</#macro>


<#---
  Default meta tags
-->
<#macro defaultMetaTags>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="format-detection" content="telephone=no">
</#macro>


<#---
  @param activeTab
-->
<#macro pageNav activeTab>
  <#local links = [] />
  <nav class="main-nav" role="navigation"><#t>
    <ul><#t>
      <#list links as link>
        <li itemscope itemtype="http://schema.org/SiteNavigationElement"><#t>
          <a itemprop="url" href="${pp.pathTo(link.url)}"<#if activeTab == link.key> class="active"</#if>><span itemprop="name">${link.title}</span></a><#t>
        </li><#t>
      </#list>
    </ul><#t>
  </nav><#t>
</#macro>
