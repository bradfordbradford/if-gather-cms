// jPlayer for Unleash Page
$(document).ready(function(){var e=$("#jquery_jplayer"),t=$("#player-wrap .track-name"),n=$("#player-wrap .play-state"),r=$("#player-wrap .extra-play-info"),i=!1,s=!0,o="Now playing",u="Track selected",a=!0;$.jPlayer.timeFormat.padMin=!1;$.jPlayer.timeFormat.padSec=!1;$.jPlayer.timeFormat.sepMin=" min ";$.jPlayer.timeFormat.sepSec=" sec";n.text(u);e.jPlayer({ready:function(){$("#player-wrap .track-default").click()},timeupdate:function(e){r.text(parseInt(e.jPlayer.status.currentPercentAbsolute,10)+"%")},play:function(e){n.text(o)},pause:function(e){n.text(u)},ended:function(e){n.text(u)},swfPath:"js",cssSelectorAncestor:"#player-wrap",supplied:"mp3",wmode:"window"});$("#player-wrap .track").hover(function(n){t.text($(this).text());e.jPlayer("setMedia",{mp3:$(this).attr("href")});e.jPlayer("play");a=!1;$(this).blur();return!1});$("#player-wrap .track").mouseout(function(n){t.text($(this).text());e.jPlayer("setMedia",{mp3:$(this).attr("href")});e.jPlayer("stop");a=!1;$(this).blur();return!1})});