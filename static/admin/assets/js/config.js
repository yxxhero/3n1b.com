layui.config({
    base: "/static/admin/assets/js/modules/",
    version: (new Date).getTime()
}).use("adminMain",
function(e) {
    e.init(),
    form.render(),
    form.on("checkbox(allChoose)",
    function(e) {
        $(e.elem).parents("table").find('tbody input[type="checkbox"]').each(function(n, o) {
            o.checked = e.elem.checked
        }),
        form.render("checkbox")
    })
});
