(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/discussgonggaoxinxi/add-or-update"],{"1c52":function(e,t,n){"use strict";(function(e){n("50a7");r(n("66fd"));var t=r(n("ffd3"));function r(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,n("543d")["createPage"])},"689a":function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=u(n("a34a"));function u(e){return e&&e.__esModule?e:{default:e}}function a(e,t,n,r,u,a,i){try{var o=e[a](i),c=o.value}catch(s){return void n(s)}o.done?t(c):Promise.resolve(c).then(r,u)}function i(e){return function(){var t=this,n=arguments;return new Promise((function(r,u){var i=e.apply(t,n);function o(e){a(i,r,u,o,c,"next",e)}function c(e){a(i,r,u,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(function(){return resolve(n("6830"))}.bind(null,n)).catch(n.oe)},c={data:function(){return{ruleForm:{refid:"",userid:"",content:"",reply:""},user:{}}},components:{wPicker:o},computed:{},onLoad:function(t){var n=this;return i(r.default.mark((function u(){var a,i,o,c;return r.default.wrap((function(u){while(1)switch(u.prev=u.next){case 0:return a=e.getStorageSync("nowTable"),u.next=3,n.$api.session(a);case 3:if(i=u.sent,n.user=i.data,n.ruleForm.userid=e.getStorageSync("userid"),t.refid&&(n.ruleForm.refid=t.refid),!t.id){u.next=13;break}return n.ruleForm.id=t.id,u.next=11,n.$api.info("discussgonggaoxinxi",n.ruleForm.id);case 11:i=u.sent,n.ruleForm=i.data;case 13:if(!t.cross){u.next=32;break}o=e.getStorageSync("crossObj"),u.t0=r.default.keys(o);case 16:if((u.t1=u.t0()).done){u.next=32;break}if(c=u.t1.value,"refid"!=c){u.next=21;break}return n.ruleForm.refid=o[c],u.abrupt("continue",16);case 21:if("userid"!=c){u.next=24;break}return n.ruleForm.userid=o[c],u.abrupt("continue",16);case 24:if("content"!=c){u.next=27;break}return n.ruleForm.content=o[c],u.abrupt("continue",16);case 27:if("reply"!=c){u.next=30;break}return n.ruleForm.reply=o[c],u.abrupt("continue",16);case 30:u.next=16;break;case 32:n.styleChange();case 33:case"end":return u.stop()}}),u)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=this;return i(r.default.mark((function t(){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.ruleForm.refid){t.next=3;break}return e.$utils.msg("关联表id不能为空"),t.abrupt("return");case 3:if(e.ruleForm.userid){t.next=6;break}return e.$utils.msg("用户id不能为空"),t.abrupt("return");case 6:if(e.ruleForm.content){t.next=9;break}return e.$utils.msg("评论内容不能为空"),t.abrupt("return");case 9:if(!e.ruleForm.id){t.next=14;break}return t.next=12,e.$api.update("discussgonggaoxinxi",e.ruleForm);case 12:t.next=16;break;case 14:return t.next=16,e.$api.add("discussgonggaoxinxi",e.ruleForm);case 16:e.$utils.msgBack("提交成功");case 17:case"end":return t.stop()}}),t)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,n=t.getFullYear(),r=t.getMonth()+1,u=t.getDate();return"start"===e?n-=60:"end"===e&&(n+=2),r=r>9?r:"0"+r,u=u>9?u:"0"+u,"".concat(n,"-").concat(r,"-").concat(u)},toggleTab:function(e){this.$refs[e].show()}}};t.default=c}).call(this,n("543d")["default"])},"7cff":function(e,t,n){"use strict";var r=n("cbe9"),u=n.n(r);u.a},cbe9:function(e,t,n){},ea5b:function(e,t,n){"use strict";n.r(t);var r=n("689a"),u=n.n(r);for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);t["default"]=u.a},fdd2:function(e,t,n){"use strict";var r;n.d(t,"b",(function(){return u})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return r}));var u=function(){var e=this,t=e.$createElement;e._self._c},a=[]},ffd3:function(e,t,n){"use strict";n.r(t);var r=n("fdd2"),u=n("ea5b");for(var a in u)"default"!==a&&function(e){n.d(t,e,(function(){return u[e]}))}(a);n("7cff");var i,o=n("f0c5"),c=Object(o["a"])(u["default"],r["b"],r["c"],!1,null,"af51b47c",null,!1,r["a"],i);t["default"]=c.exports}},[["1c52","common/runtime","common/vendor"]]]);