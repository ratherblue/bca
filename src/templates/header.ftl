<#---
  @namespace header
-->


<#macro header>
  <#compress>
    <div id="logo">
      <a href="/"></a>
    </div>
    <div class="menu-images">
      <a class="menu-hover commercial" href="/commercial/"></a>    
      <a class="menu-hover residential" href="/residential/"></a>
      <a class="menu-hover development" href="/development/"></a>
      <a class="menu-hover media" href="/media/"></a>
      <a class="menu-hover the-studio" href="/studio/"></a>
    </div>
    <@menu />
  </#compress>
</#macro>

<#macro menu>
  <div class="main-nav">
    <div id="responsive_current_menu_item">Home</div>
    <ul class="menu">
      <li class="current_page_item"><a href="/">Home</a></li>
      <li class="page_item page-item-66 page_item_has_children">
        <a href="/commercial/">Commercial</a>
        <ul class="children">
          <li class="page_item page-item-74"><a href="/commercial/solterra-winery/">Solterra Winery</a></li>
          <li class="page_item page-item-662"><a href="/commercial/park-101/">Park 101</a></li>
          <li class="page_item page-item-72"><a href="/commercial/dos-palmas-panaderia/">Dos Palmas</a></li>
          <li class="page_item page-item-706"><a href="/commercial/pizzaport-deck/">Pizzaport Deck</a></li>
        </ul>
      </li>
      <li class="page_item page-item-14 page_item_has_children">
        <a href="/residential/">Residential</a>
        <ul class="children">
          <li class="page_item page-item-692"><a href="/residential/heather-lane/">Heather Lane</a></li>
          <li class="page_item page-item-34"><a href="/residential/coast-blvd/">Coast Blvd</a></li>
          <li class="page_item page-item-729"><a href="/residential/15th-street/">15th Street</a></li>
          <li class="page_item page-item-727"><a href="/residential/santa-fe-drive/">Santa Fe Drive</a></li>
          <li class="page_item page-item-30"><a href="/residential/east-house/">East House</a></li>
          <li class="page_item page-item-737"><a href="/residential/moonlight-beach-2/">Moonlight Beach</a></li>
          <li class="page_item page-item-542"><a href="/residential/sema-4/">Sema 4</a></li>
          <li class="page_item page-item-16"><a href="/residential/church-house/">CHURCH HOUSE</a></li>
        </ul>
      </li>
      <li class="page_item page-item-52 page_item_has_children">
        <a href="/development/">Development</a>
        <ul class="children">
          <li class="page_item page-item-54"><a href="/development/sema-4/">Sema 4</a></li>
          <li class="page_item page-item-698"><a href="/development/park-101/">Park 101</a></li>
          <li class="page_item page-item-68"><a href="/development/international-market-place/">International Market Place</a></li>
          <li class="page_item page-item-61"><a href="/development/harbor-island/">Harbor Island</a></li>
          <li class="page_item page-item-56"><a href="/development/jason-street/">Jason Street</a></li>
        </ul>
      </li>
      <li class="page_item page-item-76 page_item_has_children">
        <a href="/media/">Press</a>
        <ul class="children">
          <li class="page_item page-item-744"><a href="/media/httpsdigital-modernluxury-compublicationi395294verhtml5p80/">2017 – Modern Luxury San Diego</a></li>
          <li class="page_item page-item-585"><a href="/media/2015-cmacn-honor-award/">2015 – Concrete Masonry Association of California &amp; Nevada</a></li>
          <li class="page_item page-item-592"><a href="/media/2013-honor-award/">2013 – AIA Best Mixed-Use Project</a></li>
          <li class="page_item page-item-599"><a href="/media/2012-merit-award/">2012 – Western Red Cedar Association</a></li>
          <li class="page_item page-item-751"><a href="/media/2012-riviera-san-diego/">2012 – Riviera San Diego</a></li>
        </ul>
      </li>
      <li class="page_item page-item-24"><a href="/studio/">The Shack</a></li>
    </ul>
    <a id="responsive_menu_button"></a>
  </div>
</#macro>
