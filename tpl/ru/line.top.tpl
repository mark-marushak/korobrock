{strip}
<div class="header" id="header">
  <div class="logotip_header">
    <div class="clock">
      <!-- clock widget start -->
      <script type="text/javascript"> var css_file=document.createElement("link"); css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href","//s.bookcdn.com//css/cl/bw-cl-180x170r7.css"); document.getElementsByTagName("head")[0].appendChild(css_file); </script> <div id="tw_17_885541004"><div style="width:75px; height:90px; margin: 0 auto;"><a href="http://nochi.com/time/donetsk-4396">Донецк</a><br/></div></div> <script type="text/javascript"> function setWidgetData_885541004(data){ if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = ''; var params = data.results[i]; objMainBlock = document.getElementById('tw_'+params.widget_type+'_'+params.widget_id); if(objMainBlock !== null) objMainBlock.innerHTML = params.html_code; } } } var clock_timer_885541004 = -1; </script> <script type="text/javascript" charset="UTF-8" src="https://widgets.booked.net/time/info?ver=2&domid=589&type=17&id=885541004&scode=124&city_id=4396&wlangid=20&mode=2&details=0&background=ffffff&color=000000&add_background=ffffff&add_color=333333&head_color=ffffff&border=0&transparent=0"></script>
      <!-- clock widget end -->

    </div>
    <div class="logo_img"></div>
    <div class="admin_panel">
    	{if _uid()}
    	{include file='links.element.tpl' module='account' text=$user.aName}
	    {include file='links.element.tpl' module='account/login' params='out' text='Выход'}
	    {else}
	    {if $_cfg.RegMode >= 0}
	    {include file='links.element.tpl' module='account/register' text='Регистрация'}
	    {/if}
	    {include file='links.element.tpl' module='account/login' text='Логин'}
	    
	    {/if}
    </div>
  </div>
</div>
		 
          <!-- <td align="right">
		  {if _uid()}
		    {include file='links.element.tpl' module='account' text=$user.aName}
		    {if $curr1}
		      {include file='links.element.tpl' module='balance' text='Баланс'}
		      {_z($curr1.wBal, $curr1.cID, 2)}
		    {/if}
		    {include file='links.element.tpl' module='account/login' params='out' text='Выход'}
		  {else}
		    {if $_cfg.RegMode >= 0}
		      {include file='links.element.tpl' module='account/register' text='Регистрация'}
		    {/if}
		    {include file='links.element.tpl' module='account/login' text='Вход'}
		  {/if}
		</td>
		<td align="right" width="100px">
		  {include file='widget/clock/index.tpl'}
		</td> -->
	
{/strip}