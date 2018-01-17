var toggleFullScreen, $,element, form, laydate, adminCommon,table;
layui.define(["element", "form", "laydate", "adminCommon","table"],
function(a) {
    $ = layui.jquery,
    element = layui.element,
    form = layui.form,
    table=layui.table,
    laydate = layui.laydate,
    adminCommon = layui.adminCommon,
    element.on("nav(navBar)",
    function(a) {
        adminCommon.initNavForTabUrlHash($(this), a)
    }),
    element.on("tab(tabMain)",
    function(a) {
        adminCommon.setHashByLayId()
    }),
    a("adminMain", {
        init: function() {
            adminCommon.homePageTpl();
            toggleFullScreen = adminCommon.toggleFullScreen
        }
    })
});
