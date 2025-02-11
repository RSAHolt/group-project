import { createStore } from 'vuex'

export default createStore({
  state: {
    payroll:null,
    employees:null,
    log:false
  },
  getters: {
  },
  mutations: {
    setPayroll(state,payload){
      state.payroll = payload

    },
    setAttend(state,payload){
      state.employees= payload
    }
  },
  actions: {
    async getPay({commit},id){
      let {payroll} = await (await fetch('http://localhost:3000/pay/'+id)).json()
      // let info = await payroll.json()
      commit('setPayroll',payroll);
      
      
    },
    async getAttend({commit},payload){
      let {employees} = await (await fetch('http://localhost:3000/attendtrack/')).json()
      
      commit('setAttend',employees);
      
      
    },
    async deleteEmployee({commit},id){
      await fetch('http://localhost:3000/attendtrack/'+id,{
        method:'DELETE'
      })
      location.reload()
    },
    async postEmployee({commit},post){
      await fetch('http://localhost:3000/attendtrack/',{
        method:'POST',
        headers:{
          "Content-Type":"application/json"
        },
        body:JSON.stringify(
        post
        )
      })
      location.reload()
    },
    async patchEmployee({commit},patch){
      await fetch('http://localhost:3000/attendtrack/${patch.employee_id}',{
        method:'PATCH',
        headers:{
          "Content-Type":"application/json"
        },
        body:JSON.stringify(patch)
      })
      location.reload()

    }
  },
  modules: {
  }
})