<template>
       <div class="container">
         <v-form @submit.prevent="updatetiket">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                  <div class="card-header">Edit Tiket</div>
                      <div class="card-body">
                          <div class="form-group row">
                            <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-space-shuttle"> Nama Tiket </i></label>

                                 <div class="col-md-6">
                                       <input type="text" v-model="tiket.name_tiket" class="form-control">
                                 </div>
                           </div>


                      <div class="form-group row">
                        <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-address-book">Kategori Tiket</i></label>
                            <div class="col-md-6">
                                <select class="form-control" v-model="tiket.category_id">
                                        <option :value="tiket.category_id" >{{tiket.name_category}}</option>
                                        <option v-for="categories in category" :value="categories.id">{{categories.name_category}}</option>
                                </select>
                            </div>
                        </div>

                          <div class="form-group row">
                                 <label class="col-md-2 col-form-label text-md-right"><i class="far fa-flag"> Jumlah </i></label>
                                 <div class="col-md-6">
                                        <input type="number" v-model="tiket.jumlah_tiket" class="form-control">
                                 </div>
                           </div>

                          <div class="form-group row">
                                <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-money-bill-alt"> Harga </i></label>
                                 <div class="col-md-6">
                                     <input type="number"  v-model="tiket.harga_tiket" class="form-control">
                                 </div>
                           </div>

                               <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-2">
                                        <button type="submit" class="btn btn-danger">Edit data</button>
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
export default {
        data(){
            return{
                tiket:{},
                category:{},
            }
        },
        created(){
            axios.get(`/api/tiket/${this.$route.params.id}`)
            .then(res=>(this.tiket=res.data.data))

        },
        mounted() {
            axios.get('/api/category')
            .then(res=>(this.category=res.data.data))
        },
        methods:{
                updatetiket(){
                    axios.put(`/api/tiket/${this.$route.params.id}`,this.tiket)
                    .then((response)=>{
                        this.$router.push({name:'tiket'})
                    })


                }
        }

}
</script>

<style>

</style>
