! function(n, t) {
    var e = function(n, t, e) {
        var o;
        return function() {
            function i() {
                e || n.apply(a, s), o = null
            }
            var a = this,
                s = arguments;
            o ? clearTimeout(o) : e && n.apply(a, s), o = setTimeout(i, t || 100)
        }
    };
    jQuery.fn[t] = function(n) {
        return n ? this.bind("resize", e(n)) : this.trigger(t)
    }
}(jQuery, "smartModalResize"),
function(n) {
    "use strict";
    var t = {
        init: function(t) {
            var e = {
                top: "auto",
                left: "auto",
                autoOpen: !1,
                overlayOpacity: .5,
                overlayColor: "#000",
                overlayClose: !0,
                overlayParent: "body",
                closeOnEscape: !0,
                closeButtonClass: ".close",
                transitionIn: "",
                transitionOut: "",
                onOpen: !1,
                onClose: !1,
                zIndex: function() {
                    return function(n) {
                        return n === -(1 / 0) ? 0 : n + 1
                    }(Math.max.apply(Math, n.makeArray(n("*").map(function() {
                        return n(this).css("z-index")
                    }).filter(function() {
                        return n(this)
                    }).map(function() {
                        return parseInt(this, 10)
                    }))))
                },
                updateZIndexOnOpen: !1,
                hasVariableWidth: !1
            };
            return t = n.extend(e, t), this.each(function() {
                var e = t,
                    o = n('<div class="lean-overlay"></div>'),
                    i = n(this);
                o.css({
                    display: "none",
                    position: "fixed",
                    "z-index": 1e5,
                    top: 0,
                    left: 0,
                    height: "100%",
                    width: "100%",
                    background: e.overlayColor,
                    opacity: e.overlayOpacity,
                    overflow: "auto"
                }).appendTo(e.overlayParent), i.css({
                    display: "none",
                    position: "fixed",
                    "z-index": e.updateZIndexOnOpen ? 0 : e.zIndex() + 1,
                    left: parseInt(e.left, 10) > -1 ? e.left + "px" : "50%",
                    top: parseInt(e.top, 10) > -1 ? e.top + "px" : "50%"
                }), i.bind("openModal", function() {
                    var n = e.updateZIndexOnOpen ? e.zIndex() : parseInt(o.css("z-index"), 10),
                        t = n + 1;
                    "" !== e.transitionIn && "" !== e.transitionOut && i.removeClass(e.transitionOut).addClass(e.transitionIn), i.css({
                        display: "block",
                        "margin-left": (parseInt(e.left, 10) > -1 ? 0 : -(i.outerWidth() / 2)) + "px",
                        "margin-top": (parseInt(e.top, 10) > -1 ? 0 : -(i.outerHeight() / 2)) + "px",
                        "z-index": t
                    }), o.css({
                        "z-index": n,
                        display: "block"
                    }), e.onOpen && "function" == typeof e.onOpen && e.onOpen(i[0])
                }), i.bind("closeModal", function() {
                    "" !== e.transitionIn && "" !== e.transitionOut ? (i.removeClass(e.transitionIn).addClass(e.transitionOut), i.one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function() {
                        i.css("display", "none"), o.css("display", "none")
                    })) : (i.css("display", "none"), o.css("display", "none")), e.onClose && "function" == typeof e.onClose && e.onClose(i[0])
                }), o.click(function() {
                    e.overlayClose && i.trigger("closeModal")
                }), n(document).keydown(function(n) {
                    e.closeOnEscape && 27 === n.keyCode && i.trigger("closeModal")
                }), n(window).smartModalResize(function() {
                    e.hasVariableWidth && i.css({
                        "margin-left": (parseInt(e.left, 10) > -1 ? 0 : -(i.outerWidth() / 2)) + "px",
                        "margin-top": (parseInt(e.top, 10) > -1 ? 0 : -(i.outerHeight() / 2)) + "px"
                    })
                }), jQuery && !jQuery.fn.live && i.on("click", e.closeButtonClass, function(n) {
                    i.trigger("closeModal"), n.preventDefault()
                }), e.autoOpen && i.trigger("openModal")
            })
        }
    };
    n.fn.easyModal = function(e) {
        return t[e] ? t[e].apply(this, Array.prototype.slice.call(arguments, 1)) : "object" != typeof e && e ? void n.error("Method " + e + " does not exist on jQuery.easyModal") : t.init.apply(this, arguments)
    }
}(jQuery);