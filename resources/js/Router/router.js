import Vue from 'vue'
import VueRouter from 'vue-router'


import CreateCategory from '../components/category/CreateCategory'
import CategoryComponent from '../components/category/CategoryComponent.vue'
import EditCategoryComponent from '../components/category/EditCategoryComponent.vue'

const routes = [
    { name: 'create_categori',  path:'/categori/create' ,  component:CreateCategory  },
    { name: 'edit_categori',    path:'/categori/edit/:id', component:EditCategoryComponent  },
    { name: 'categori',         path: '/categori',         component: CategoryComponent },

 ]

Vue.use(VueRouter)

const router = new VueRouter({
    routes, // short for `routes: routes`
    hasbang:false,
    mode:'history'
  })
  export default router