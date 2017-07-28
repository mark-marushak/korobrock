{strip}
<div class="_block">
	<div class="navigation">

      {include file='links.tpl' elements=[ ['index', 'главная'], ['contract', 'политика соглашения и документация'], ['account', 'личный кабинет'], ['about', 'о нас'], ['faq', 'faq'], ['calculator profit', 'cИСТЕМА ВЫПЛАТ | РЕФЕРАЛЬНЫЕ БОНУСЫ | рассчитать прибыль'] ] }

              <!--
        {if _uid()}
        {include file='links.element.tpl' module='account' text=$user.aName}
        {/if}
        -->
    </div>
</div>
{/strip}