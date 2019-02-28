<template>
       <div class="container">
   <v-form @submit.prevent="savetiket">

    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                  <div class="card-header">Tambah Tiket</div>
                      <div class="card-body">
                          <div class="form-group row">
                            <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-space-shuttle"> Nama Tiket </i></label>

                                 <div class="col-md-6">
                                       <input type="text" v-model="form.name_tiket" class="form-control">
                                 </div>
                           </div>


                      <div class="form-group row">
                        <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-address-book">Kategori Tiket</i></label>
                            <div class="col-md-6">
                                    <select class="form-control" v-model="form.category_id">
                                        <option v-for="categories in category"  :value="categories.id">{{categories.name_category}}</option>
                                    </select>
                            </div>
                        </div>

                          <div class="form-group row">
                                 <label class="col-md-2 col-form-label text-md-right"><i class="far fa-flag"> Jumlah </i></label>
                                 <div class="col-md-6">
                                        <input type="number" v-model="form.jumlah_tiket" class="form-control">
                                 </div>
                           </div>

                          <div class="form-group row">
                                <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-money-bill-alt"> Harga </i></label>
                                 <div class="col-md-6">
                                     <input type="number"  v-model="form.harga_tiket" class="form-control">
                                 </div>
                           </div>

                               <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-2">
                                        <button type="submit" class="btn btn-danger">Tambah data</button>
                                       <router-link to="/tiket" class="btn btn-info">Kembali</router-link>
                                    </div>
                            </div>
                      </div>
                  </div>
            </div>
        </div>
    </v-form>
</div>
</template>

<script>
import {IMaskComponent} from 'vue-imask';
export default {

    data () {
      return {
        date: null,
        options: {
          placeholder: '000.000',
          // http://igorescobar.github.io/jQuery-Mask-Plugin/docs.html
        },
        category: {},
        form:{
          name_tiket:null,
          harga_tiket:null,
          jumlah_tiket:null,
          category_id:null
        },

      }
    },
    created(){
            axios.get("/api/category")
            .then(res=>this.category=res.data.data)
    },
    methods:{
          savetiket(){
                axios.post("/api/tiket/",this.form)
                .then((response)=>{
                   this.$router.push({name:'tiket'})
                })
          }
    },

  }
</script>

<style>
        .card-header {
               background-color:  #27c8f9;
             }

</style>
