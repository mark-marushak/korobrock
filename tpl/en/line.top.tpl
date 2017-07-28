{strip}
<div class="header" id="header">
  <div class="logotip_header">
    <div class="logo_img"></div>
    <div class="logo">
      <h1><a href="#" target="_blank">Corporate Perfect</a></h1>
      <p>Corporate Web Template by TemplatesPerfect.com</p>
    </div>
  </div>
  <div class="navigation">
    
    {include file='links.tpl' elements=[ ['index', 'главная'], ['news', 'политика соглашения и документация'], ['account', 'личный кабинет'], ['about', 'о нас'], ['faq', 'faq'], ['bonus', 'cИСТЕМА ВЫПЛАТ | РЕФЕРАЛЬНЫЕ БОНУСЫ | КАЛЬКУЛЯТОР ПРИБЫЛИ'] ] }
   
<!--
    {if _uid()}
    {include file='links.element.tpl' module='account' text=$user.aName}
    {/if}
-->
  </div>
</div>
{/strip}
