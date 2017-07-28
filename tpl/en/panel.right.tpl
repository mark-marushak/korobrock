{strip}
<div class="_block">
  <ul>
    <li><a href="#">2% в День - 730% в год</a></li>

    {if _uid()}


    {if $curr1}
    <li>
      <a href="{_link module='balance' chpu=[$curr1.cID, $curr1.wBal,2]}">{_z($curr1.wBal, $curr1.cID, 2)} Рублей на счету</a>
    </li>
    {/if}
    <li>
      <a href="">5583 Довольных инвесторов</a>
    </li>
    <li><a href="">Заработок без вложений</a></li>
    <li><a href="">3 - 7% Рефералов</a></li>


    {include file='links.element.tpl' module='account' text=$user.aName}
    {include file='links.element.tpl' module='account/login' params='out' text='Logout'}
    {else}
    {if $_cfg.RegMode >= 0}
    {include file='links.element.tpl' module='account/register' text='Registration'}
    {/if}
    {include file='links.element.tpl' module='account/login' text='Login'}

    {/if}
  </ul>
</div>
{/strip}