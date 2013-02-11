{*


*}
<!--end body panes-->
		</td>
		</tr>
	  </table>
    </div>
    <div class="clear"></div>
</div>
<div id="bottomLinks">
{if $AUTHENTICATED}
{$BOTTOMLINKS}
{/if}
</div>
<div id="footer" style='display:none'>
    {$STATISTICS}
    <div id="copyright" style='display:none'>
        {$COPYRIGHT}
    </div>
</div>
<div id="footer" >
 <a href="http://ecrm.co.in" target="_blank" class="copyRightLink">ECRM Solutions</a> <br>
</div>
<script>
{literal}
if(SUGAR.util.isTouchScreen()) {
	setTimeout(resizeHeader,10000);
}
{/literal}
</script>

</body>
</html>
