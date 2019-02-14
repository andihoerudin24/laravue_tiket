<template>
     <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <v-form @submit.prevent="submit">
                  <div class="card-header"><i class="fas fa-plus-circle">Edit Kategori</i></div>
                      <div class="card-body">
                          <div class="form-group row">
                                    <label class="col-md-2 col-form-label text-md-right"><i class="fas fa-space-shuttle"> Nama kategori </i></label>
                                    <div class="col-md-6">
                                        <input type="text" v-model="form.name_category" class="form-control">
                                    </div>
                            </div>
                               <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-2">
                                    <button type="submit" class="btn btn-danger">Update Category</button>
                                    <router-link to="/categori" class="btn btn-danger">Cancel</router-link>
                                </div>
                          </div>
                      </div>
                </v-form>
                  </div>
                </div>
            </div>
        </div>

</template>

<script>
export default {
    data(){
        return{
            form:{}
        }
    },
    created(){
        axios.get(`/api/category/${this.$route.params.id}`)
        .then(res=>(this.form=res.data.data))
    },
    methods:{
        submit(){
                axios.put(`/api/category/${this.$route.params.id}`,this.form)
                .then((respones)=>{
                  this.$router.push({name:'categori'});
              })
            }
    }
}
</script>

<style>

</style>
