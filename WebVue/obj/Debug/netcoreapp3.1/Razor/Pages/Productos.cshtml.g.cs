#pragma checksum "C:\Users\Computer\Desktop\RAPPI\WebVue\Pages\Productos.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2c7ab22fea66cf3ff05d58dcb1d0b872f8d9b2a7"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(WebVue.Pages.Pages_Productos), @"mvc.1.0.razor-page", @"/Pages/Productos.cshtml")]
namespace WebVue.Pages
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\Computer\Desktop\RAPPI\WebVue\Pages\_ViewImports.cshtml"
using WebVue;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2c7ab22fea66cf3ff05d58dcb1d0b872f8d9b2a7", @"/Pages/Productos.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a7d98199a44a3d05e7d0b258002a6ee2adece75e", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Productos : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
<div id=""app"">
    <h4>Productos</h4>
    <hr />
    <div class=""row"">
        <div class=""card col-sm-3 text-center border-0"" v-for=""item in productos"">
            <div class=""card-body"">
                <img v-bind:src=""'./img/productos/' + item.imagen"" width=""160"" height=""180"" class=""img-thumbnail"" />
                <h5>{{item.nomProd}}</h5>
                <span>S/{{item.precio}}</span>
            </div>
        </div>
    </div>
    <div class=""alert alert-danger"" role=""alert"" v-if=""productos.length == 0"">
        No se encontraron resultados.
    </div>
    <div class=""loading show"" v-if=""!loading"">
        <div class=""spin""></div>
    </div>
</div>

<script>
    new Vue({
        el: ""#app"",
        data: {
            urlBase: ""http://localhost:1468/api"",
            productos: [],
            idCat: 0,
            loading: false
        },
        mounted: function () {
            const urlParams = new URLSearchParams(window.location.search);
            this.idCa");
            WriteLiteral(@"t = urlParams.get(""id"");

            this.listarProductos();
        },
        methods: {
            listarProductos: function () {
                this.loading = false;
                var url = this.urlBase + ""/producto/listar?id="" + this.idCat;
                this.$http.get(url).then(function (response) {
                    this.productos = response.body;
                    this.loading = true;
                });
            }
        }
    });
</script>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<WebVue.Pages.ProductosModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<WebVue.Pages.ProductosModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<WebVue.Pages.ProductosModel>)PageContext?.ViewData;
        public WebVue.Pages.ProductosModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
