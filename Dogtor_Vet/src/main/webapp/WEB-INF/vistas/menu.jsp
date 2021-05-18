<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!-- Dashboard (Active Session) -->

<c:if test="${sessionScope.objMenus != null && requestScope['javax.servlet.forward.servlet_path'] != '/'}">

   <!-- Menu on LG and XXL -->
   <nav id="menuSidebarLarge" class="d-none col-md-2 dashboard__menu menu__transition d-lg-flex flex-column justify-content-between align-items-center">

       <div class="menu__fixed fixed-top menu__transition">
           <div class="menu__header d-flex justify-content-between">
               <a class="font__max primary__color link__light font__bolder" href="./">
                   <div class="chevron__marker d-flex justify-content-lg-start justify-content-center">
                       <!-- <p class="d-block d-lg-none font__max">
                           D
                       </p> -->
                       <p class="d-none d-lg-block">
                           Dogtor
                       </p>
                   </div>
               </a>

               <button class="btn" id="menuChevron" aria-label="Toggle side menu">
                   <i class="primary__color" data-feather="chevrons-left"></i>
               </button>
               <div></div>
           </div>

           <div class="menu__body d-flex flex-column my-5 pe-lg-4 menu__transition">
               <ul class="menu__body__list">

                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="grid"></i>
                               </p>
                               <p class="d-none d-lg-block">Inicio</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="dollar-sign"></i>
                               </p>
                               <p class="d-none d-lg-block">Ventas</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="shopping-bag"></i>
                               </p>
                               <p class="d-none d-lg-block">Producto</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="package"></i>
                               </p>
                               <p class="d-none d-lg-block">Pedidos</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="zap"></i>
                               </p>
                               <p class="d-none d-lg-block">Servicios</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="calendar"></i>
                               </p>
                               <p class="d-none d-lg-block">Citas</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker active d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="users"></i>
                               </p>
                               <p class="d-none d-lg-block">Usuarios</p>
                           </div>
                       </a>
                   </li>
                   <li class="d-flex flex-row row mb-3">
                       <a class="background__title link__light" href="/">
                           <div class="marker d-flex justify-content-lg-start justify-content-center">
                               <p class="d-block pe-lg-3">
                                   <i data-feather="settings"></i>
                               </p>
                               <p class="d-none d-lg-block">Config</p>
                           </div>
                       </a>
                   </li>
               </ul>
           </div>
       </div>

   </nav>
</c:if>