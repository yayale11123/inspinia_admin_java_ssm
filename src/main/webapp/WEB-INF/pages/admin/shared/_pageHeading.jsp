<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/7/18
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<template id="page-header" v-if="seen">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>Data Tables</h2>
            <ol class="breadcrumb" v-for="item in breadcrumbs">
                <li class="{{item.class}}">
                    <a v-if="item.href != ''" href="{{item.href}}">{{item.name}}</a>
                    <strong v-else>{{item.name}}</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2"></div>
    </div>
</template>

<%--vue js--%>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="text/javascript">
    Vue.component("page-header",{
        template:"#page-header",
        props:{
            breadcrumbs:Object,
        },
        data:{
            seen: breadcrumbs != null && typeof(breadcrumbs) != "undefined"
        }
    })
</script>

