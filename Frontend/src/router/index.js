import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import PaySlip from '@/components/PaySlip.vue'
import AttendanceTracker from '@/components/AttendanceTracker.vue'
import EmployeeList from '@/components/EmployeeList.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/pay',
    name: 'pay',
    component: PaySlip
  },
  {
    path: '/attendtrack',
    name: 'attendtrack',
    component: AttendanceTracker
  },
  {
    path: '/employeelist',
    name: 'employeelist',
    component: EmployeeList
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
