window.Vue = require('vue');
import axios from 'axios';

import VueImg from 'v-img';

Vue.use(VueImg);


const app = new Vue({
    el: '#app',
    data:{images:[],num:0},
    created:function(){
    	this.getImages();
    },
    methods:{
    	getImages:function(){
    	axios.get('api/images').then(response =>{
    		this.images = response.data;
    	}).catch(error =>{
    		alert('error');
    	});
    },
    paginate:function(id){
      return this.images[id].name;
    }
    }
});
