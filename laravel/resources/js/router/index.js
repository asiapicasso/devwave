import { createRouter, createWebHistory } from 'vue-router'
//import PageSondage
import pageSondage from '../views/pageSondage.vue'
import pageMusique from '../views/pageMusique.vue'
import pageProfil from '../views/pageProfil.vue'
import pageLive from '../views/pageLive.vue'
import pageReglages from '../views/pageReglages.vue'


const routes = [{
        path: '/pageSondage',
        name: 'PageSondage',
        component: pageSondage
    },
    {
        path: '/pageMusique',
        name: 'PageMusique',
        component: pageMusique
    },
    {
        path: '/pageProfil',
        name: 'pageProfil',
        component: pageProfil
    },
    {
        path: '/pageLive',
        name: 'pageLive',
        component: pageLive
    },
    {
        path: '/pageReglages',
        name: 'pageReglages',
        component: pageReglages
    },
];


const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router;