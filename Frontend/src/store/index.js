import { createStore } from 'vuex'

export default createStore({
  state: {
    payroll:null,
    log:false
  },
  getters: {
  },
  mutations: {
    setPayroll(state,payload){
      state.payroll = payload

    }
  },
  actions: {
    async getPay({commit},id){
      let {payroll} = await (await fetch('http://localhost:3000/pay/'+id)).json()
      // let info = await payroll.json()
      commit('setPayroll',payroll);
      
      
    }
  },
  modules: {
  }
})