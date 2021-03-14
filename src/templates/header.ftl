<#---
  @namespace header
-->


<#macro header>
  <#compress>
    <div id="logo">
      <a href="${pp.home}"></a>
    </div>
    <div class="menu-images">
      <a class="menu-hover commercial" href="${pp.home}commercial/"></a>    
      <a class="menu-hover residential" href="${pp.home}residential/"></a>
      <a class="menu-hover development" href="${pp.home}development/"></a>
      <a class="menu-hover media" href="${pp.home}media/"></a>
      <a class="menu-hover the-studio" href="${pp.home}studio/"></a>
    </div>
    <@menu />
  </#compress>
</#macro>

<#macro menu>
  <div class="main-nav">
    <ul class="menu">
      <li class="current_page_item"><a href="${pp.home}">Home</a></li>
      <li class="page_item page-item-66 page_item_has_children">
        <a href="${pp.home}commercial/">Commercial</a>
        <ul class="children">
          <li class="page_item page-item-74"><a href="${pp.home}commercial/solterra-winery/">Solterra Winery</a></li>
          <li class="page_item page-item-662"><a href="${pp.home}commercial/park-101/">Park 101</a></li>
          <li class="page_item page-item-72"><a href="${pp.home}commercial/dos-palmas-panaderia/">Dos Palmas</a></li>
          <li class="page_item page-item-706"><a href="${pp.home}commercial/pizzaport-deck/">Pizzaport Deck</a></li>
        </ul>
      </li>
      <li class="page_item page-item-14 page_item_has_children">
        <a href="${pp.home}residential/">Residential</a>
        <ul class="children">
          <li class="page_item page-item-692"><a href="${pp.home}residential/heather-lane/">Heather Lane</a></li>
          <li class="page_item page-item-34"><a href="${pp.home}residential/coast-blvd/">Coast Blvd</a></li>
          <li class="page_item page-item-729"><a href="${pp.home}residential/15th-street/">15th Street</a></li>
          <li class="page_item page-item-727"><a href="${pp.home}residential/santa-fe-drive/">Santa Fe Drive</a></li>
          <li class="page_item page-item-30"><a href="${pp.home}residential/east-house/">East House</a></li>
          <li class="page_item page-item-737"><a href="${pp.home}residential/moonlight-beach-2/">Moonlight Beach</a></li>
          <li class="page_item page-item-542"><a href="${pp.home}residential/sema-4/">Sema 4</a></li>
          <li class="page_item page-item-16"><a href="${pp.home}residential/church-house/">CHURCH HOUSE</a></li>
        </ul>
      </li>
      <li class="page_item page-item-52 page_item_has_children">
        <a href="${pp.home}development/">Development</a>
        <ul class="children">
          <li class="page_item page-item-54"><a href="${pp.home}development/sema-4/">Sema 4</a></li>
          <li class="page_item page-item-698"><a href="${pp.home}development/park-101/">Park 101</a></li>
          <li class="page_item page-item-68"><a href="${pp.home}development/international-market-place/">International Market Place</a></li>
          <li class="page_item page-item-61"><a href="${pp.home}development/harbor-island/">Harbor Island</a></li>
          <li class="page_item page-item-56"><a href="${pp.home}development/jason-street/">Jason Street</a></li>
        </ul>
      </li>
      <li class="page_item page-item-76 page_item_has_children">
        <a href="${pp.home}media/">Press</a>
        <ul class="children">
          <li class="page_item page-item-744"><a href="${pp.home}media/httpsdigital-modernluxury-compublicationi395294verhtml5p80/">2017 – Modern Luxury San Diego</a></li>
          <li class="page_item page-item-585"><a href="${pp.home}media/2015-cmacn-honor-award/">2015 – Concrete Masonry Association of California &amp; Nevada</a></li>
          <li class="page_item page-item-592"><a href="${pp.home}media/2013-honor-award/">2013 – AIA Best Mixed-Use Project</a></li>
          <li class="page_item page-item-599"><a href="${pp.home}media/2012-merit-award/">2012 – Western Red Cedar Association</a></li>
          <li class="page_item page-item-751"><a href="${pp.home}media/2012-riviera-san-diego/">2012 – Riviera San Diego</a></li>
        </ul>
      </li>
      <li class="page_item page-item-24"><a href="${pp.home}studio/">The Shack</a></li>
    </ul>
  </div>
</#macro>
