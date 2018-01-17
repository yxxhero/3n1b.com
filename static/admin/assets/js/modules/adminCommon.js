layui.define(["layer", "element"],
function(e) {
    var n = layui.jquery,
    t = layui.layer,
    a = layui.element;
    e("adminCommon", {
        homePageTpl: function() {
            n("#blogmanage").click();
        },
        reloadTpl: function(e, t, l, o) {
            n("#tpl").load(e,
            function(e) {
                a.tabAdd(t, {
                    title: l,
                    content: e,
                    id: o
                }),
                a.tabChange(t, o)
            })
        },
        //reloadHistory: function(e) {
        //    history.replaceState(null, "", location.pathname + location.search),
        //    e && e()
        //},
        initNavForTabUrlHash: function(e, l) {
            var o = e.data("url") + "?v=" + (new Date).getTime(),
            i = e.data("hash"),
            c = l.find("span").text(),
            u = l.attr("data-id"),
            m = n("#tabBody").children('li[lay-id="' + u + '"]').length;
            t.msg(c),
            m || adminCommon.reloadTpl(o, "tabMain", c, u),
            a.tabChange("tabMain", u)
            //adminCommon.reloadHistory(function() {
            //    location.hash = i
            //})
        },
        getCookie: function (cname)
{
  var name = cname + "=";
  var ca = document.cookie.split(';');
  for(var i=0; i<ca.length; i++) 
  {
    var c = ca[i].trim();
    if (c.indexOf(name)==0) return c.substring(name.length,c.length);
  }
  return "";
},
        setHashByLayId: function() {
            var e = n(".layui-tab-title").find(".layui-this").attr("lay-id"),
            t = n(".layui-nav-item").find('dd[data-id="' + e + '"]').data("hash");
            t ? location.hash = t: adminCommon.reloadHistory()
        },
        toggleFullScreen: function() {
            document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement ? document.cancelFullScreen ? document.cancelFullScreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitCancelFullScreen && document.webkitCancelFullScreen() : document.documentElement.requestFullscreen ? document.documentElement.requestFullscreen() : document.documentElement.mozRequestFullScreen ? document.documentElement.mozRequestFullScreen() : document.documentElement.webkitRequestFullscreen && document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT)
        }
    })
});
