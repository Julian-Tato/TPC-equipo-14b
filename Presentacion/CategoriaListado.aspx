<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoriaListado.aspx.cs" Inherits="Presentacion.CategoriaListado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <!-- 1. Título y Botón "Nuevo" -->
        <div class="flex flex-wrap items-center justify-between gap-4 mb-8">
            <h1 class="text-slate-900 dark:text-white text-4xl font-black leading-tight tracking-[-0.033em]">Gestión de Categorías</h1>
            
            <asp:HyperLink ID="btnNuevaCategoria" runat="server" NavigateUrl="~/CategoriasForm.aspx"
                CssClass="flex items-center justify-center rounded-lg h-12 bg-primary text-white gap-2 text-sm font-bold leading-normal tracking-[0.015em] px-5 hover:bg-primary/90 transition-colors">
                <span class="material-symbols-outlined">add_circle</span>
                <span class="truncate">Agregar Categoría</span>
            </asp:HyperLink>
        </div>

        <!-- 2. Contenedor de Grilla y Búsqueda -->
        <div class="bg-white dark:bg-slate-900/70 p-4 rounded-xl shadow-sm">
            <!-- Barra de Búsqueda -->
            <div class="flex flex-col md:flex-row justify-between gap-4 p-4">
                <div class="w-full md:max-w-xs">
                    <label class="flex flex-col w-full h-12">
                        <div class="flex w-full flex-1 items-stretch rounded-lg h-full">
                            <div class="text-slate-500 dark:text-slate-400 flex bg-slate-100 dark:bg-slate-800 items-center justify-center pl-4 rounded-l-lg">
                                <span class="material-symbols-outlined">search</span>
                            </div>
                            <asp:TextBox ID="txtBuscar" runat="server" 
                                CssClass="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-lg text-slate-900 dark:text-slate-200 focus:outline-0 focus:ring-2 focus:ring-primary/50 border-none bg-slate-100 dark:bg-slate-800 h-full placeholder:text-slate-500 dark:placeholder:text-slate-400 px-4 rounded-l-none border-l-0 pl-2 text-base font-normal leading-normal" 
                                placeholder="Buscar categoría..." />
                        </div>
                    </label>
                </div>
            </div>

            <!-- 3. Grilla de Categorías -->
            <div class="px-4 py-3">
                <div class="overflow-x-auto rounded-lg border border-slate-200 dark:border-slate-800">
                    <asp:GridView ID="gvCategorias" runat="server"
                        AutoGenerateColumns="False" 
                        DataKeyNames="IdCategoria"
                        CssClass="w-full text-left"
                        GridLines="None" 
                        AllowPaging="True" PageSize="10" >

                        <HeaderStyle CssClass="bg-slate-50 dark:bg-slate-800 text-left text-slate-600 dark:text-slate-300 text-xs font-medium uppercase tracking-wider" />
                        <RowStyle CssClass="divide-y divide-slate-200 dark:divide-slate-800 hover:bg-slate-50 dark:hover:bg-slate-800/50" />
                        <PagerStyle CssClass="flex items-center justify-between p-4 mt-4" />

                        <Columns>
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" 
                                HeaderStyle-CssClass="px-4 py-3" 
                                ItemStyle-CssClass="h-[72px] px-4 py-2 text-slate-800 dark:text-slate-200 text-sm font-medium" />
                            
                            <asp:TemplateField HeaderText="Acciones" 
                                HeaderStyle-CssClass="px-4 py-3 text-right" 
                                ItemStyle-CssClass="h-[72px] px-4 py-2 text-right">
                                <ItemTemplate>
                                    <div class="flex justify-end items-center gap-2">
                                        <asp:HyperLink ID="btnEditar" runat="server"
                                            NavigateUrl='<%# Eval("IdCategoria", "CategoriasForm.aspx?id={0}") %>'
                                            CssClass="p-2 text-slate-600 dark:text-slate-300 hover:bg-slate-200 dark:hover:bg-slate-700 rounded-full transition-colors">
                                            <span class="material-symbols-outlined text-xl">edit</span>
                                        </asp:HyperLink>
                                        
                                        <asp:LinkButton ID="btnEliminar" runat="server"
                                            CssClass="p-2 text-red-500 hover:bg-red-100 dark:hover:bg-red-500/20 rounded-full transition-colors"
                                            OnClientClick="return confirm('¿Está seguro de que desea eliminar esta categoría?');">
                                            <span class="material-symbols-outlined text-xl">delete</span>
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
