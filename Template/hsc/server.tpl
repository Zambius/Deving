[main]
<!— Модуль Статус Серверов —>
{item}
[/main]

[item]

		<div id="progressbar-first" class="progressbar">
			<span class="online" id="online1">Soon...</span>
			<p class="progressbar-text"><span>X50k</span> Interlude Mega PvP</p>
		</div>
		<div id="progressbar-second" class="progressbar">
			<span class="online" id="online2">Soon...</span>
			<p class="progressbar-text"><span>X1200</span> Interlude PvP</p>
		</div>
<script type="text/javascript">
$(function() {
var online;
document.getElementById('online1').innerHTML='';var temp_date=new Date();var hours=temp_date.getHours();if(hours<1)
{online=Math.floor(Math.random()*(7700-7500+1))+7500;}else
if(hours<2)
{online=Math.floor(Math.random()*(7300-7100+1))+7100;}else
if(hours<3)
{online=Math.floor(Math.random()*(6500-6300+1))+6300;}else
if(hours<4)
{online=Math.floor(Math.random()*(5800-5600+1))+5600;}else
if(hours<9)
{online=Math.floor(Math.random()*(4700-4500+1))+4500;}else
if(hours<12)
{online=Math.floor(Math.random()*(6100-5800+1))+5800;}else
if(hours<15)
{online=Math.floor(Math.random()*(7000-6800+1))+6800;}else
if(hours<20)
{online=Math.floor(Math.random()*(7900-7700+1))+7700;}else
if(hours>=20)
{online=Math.floor(Math.random()*(8300-8100+1))+8100;}
document.getElementById('online1').innerHTML='ONLINE';


var online1,online2,online3;
var startColor = '#3d302a';
var endColor = '#3d302a';
var optsBar = {
	color: startColor,
	strokeWidth: 10,
	trailWidth: 0,
	duration: 1000,
	easing: 'linear',
	text: {
	value: "",
	autoStyle: false
	}
};

//online1 = document.getElementById('online1').innerText / 100 / 100;
online = online / 100 / 100;
var first = new ProgressBar.Circle('#progressbar-first', optsBar);
first.animate(online, function() {first.animate(online);});

var second = new ProgressBar.Circle('#progressbar-second', optsBar);
second.animate(online2, function() {second.animate(online2);});
});
</script>
[/item]