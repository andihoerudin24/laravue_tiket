import Vue from 'vue'
import VueRouter from 'vue-router'


import CreateCategory from '../components/category/CreateCategory'
import CategoryComponent from '../components/category/CategoryComponent.vue'
import EditCategoryComponent from '../components/category/EditCategoryComponent.vue'

import CreateTiket from '../components/tiket/CreateTiket'
import TiketComponent from '../components/tiket/TiketComponent.vue'
import EditTiketComponent from '../components/tiket/EditTiketComponent.vue'

import TransaksiComponent from '../components/transaksi/TransaksiComponent.vue'
const routes = [
    //category
    { name: 'create_categori',  path:'/categori/create' ,  component:CreateCategory  },
    { name: 'edit_categori',    path:'/categori/edit/:id', component:EditCategoryComponent  },
    { name: 'categori',         path: '/categori',         component: CategoryComponent },
    //category
    //tiket
    { name: 'create_tiket',  path:'/tiket/create' ,        component:CreateTiket},
    { name: 'edit_tiket',    path:'/tiket/edit/:id',       component:EditTiketComponent  },
    { name: 'tiket',         path: '/tiket',               component:TiketComponent },

    //{ name: 'create_tiket',  path:'/tiket/create' ,        component:CreateTiket},
    //{ name: 'edit_tiket',    path:'/tiket/edit/:id',       component:EditTiketComponent  },
    { name: 'transaksi',         path: '/transaksi',               component:TransaksiComponent },

 ]

Vue.use(VueRouter)

const router = new VueRouter({
    routes, // short for `routes: routes`
    hasbang:false,
    mode:'history'
  })
  export default router