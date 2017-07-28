{strip}
{include file='header.tpl' title='Главная'}
<div class="main_header">
	<h1>cИСТЕМА ВЫПЛАТ | РЕФЕРАЛЬНЫЕ БОНУСЫ | рассчитать прибыль</h1>
	<p>Текущий язык : <a href="{_link module='system'}">{$current_lang}</a></p>
</div>
<div class="calc_box">
{include file='depo/calc.box.tpl'}
<br>
{include file='depo/calc.result.tpl'}
</div>

{include file='footer.tpl'}
{/strip}