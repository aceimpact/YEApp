!function(s){var a={animation:"dissolve",separator:",",speed:2e3};s.fx.step.textShadowBlur=function(t){s(t.elem).prop("textShadowBlur",t.now).css({textShadow:"0 0 "+Math.floor(t.now)+"px black"})},s.fn.textrotator=function(t){var r=s.extend({},a,t);return this.each(function(){var n=s(this),e=[];s.each(n.text().split(r.separator),function(t,a){e.push(a)}),n.text(e[0]),setInterval(function(){switch(r.animation){case"dissolve":n.animate({textShadowBlur:20,opacity:0},500,function(){(a=s.inArray(n.text(),e))+1==e.length&&(a=-1),n.text(e[a+1]).animate({textShadowBlur:0,opacity:1},500)});break;case"flip":0<n.find(".back").length&&n.html(n.find(".back").html());var t=n.text();(a=s.inArray(t,e))+1==e.length&&(a=-1),n.html(""),s("<span class='front'>"+t+"</span>").appendTo(n),s("<span class='back'>"+e[a+1]+"</span>").appendTo(n),n.wrapInner("<span class='rotating' />").find(".rotating").hide().addClass("flip").show().css({"-webkit-transform":" rotateY(-180deg)","-moz-transform":" rotateY(-180deg)","-o-transform":" rotateY(-180deg)",transform:" rotateY(-180deg)"});break;case"flipUp":0<n.find(".back").length&&n.html(n.find(".back").html());t=n.text();(a=s.inArray(t,e))+1==e.length&&(a=-1),n.html(""),s("<span class='front'>"+t+"</span>").appendTo(n),s("<span class='back'>"+e[a+1]+"</span>").appendTo(n),n.wrapInner("<span class='rotating' />").find(".rotating").hide().addClass("flip up").show().css({"-webkit-transform":" rotateX(-180deg)","-moz-transform":" rotateX(-180deg)","-o-transform":" rotateX(-180deg)",transform:" rotateX(-180deg)"});break;case"flipCube":0<n.find(".back").length&&n.html(n.find(".back").html());t=n.text();(a=s.inArray(t,e))+1==e.length&&(a=-1),n.html(""),s("<span class='front'>"+t+"</span>").appendTo(n),s("<span class='back'>"+e[a+1]+"</span>").appendTo(n),n.wrapInner("<span class='rotating' />").find(".rotating").hide().addClass("flip cube").show().css({"-webkit-transform":" rotateY(180deg)","-moz-transform":" rotateY(180deg)","-o-transform":" rotateY(180deg)",transform:" rotateY(180deg)"});break;case"flipCubeUp":0<n.find(".back").length&&n.html(n.find(".back").html());var a;t=n.text();(a=s.inArray(t,e))+1==e.length&&(a=-1),n.html(""),s("<span class='front'>"+t+"</span>").appendTo(n),s("<span class='back'>"+e[a+1]+"</span>").appendTo(n),n.wrapInner("<span class='rotating' />").find(".rotating").hide().addClass("flip cube up").show().css({"-webkit-transform":" rotateX(180deg)","-moz-transform":" rotateX(180deg)","-o-transform":" rotateX(180deg)",transform:" rotateX(180deg)"});break;case"spin":0<n.find(".rotating").length&&n.html(n.find(".rotating").html()),(a=s.inArray(n.text(),e))+1==e.length&&(a=-1),n.wrapInner("<span class='rotating spin' />").find(".rotating").hide().text(e[a+1]).show().css({"-webkit-transform":" rotate(0) scale(1)","-moz-transform":"rotate(0) scale(1)","-o-transform":"rotate(0) scale(1)",transform:"rotate(0) scale(1)"});break;case"fade":n.fadeOut(r.speed,function(){(a=s.inArray(n.text(),e))+1==e.length&&(a=-1),n.text(e[a+1]).fadeIn(r.speed)})}},r.speed)})}}(window.jQuery);