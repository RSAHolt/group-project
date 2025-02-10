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
    }
  },
  modules: {
  }
})