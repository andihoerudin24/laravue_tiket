<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card card-default">
                    <div class="card-header">
                      <router-link to="/categori/create" class="btn btn-primary btn-sm float-right"> + Add category</router-link>
                    </div>
                        <v-card>
                            <v-card-title>
                                <v-spacer></v-spacer>
                                        <v-text-field
                                            v-model="search"
                                            append-icon="search"
                                            label="Search"
                                            single-line
                                            hide-details
                                        ></v-text-field>
                                        </v-card-title>
                            <v-data-table
                                        :headers="headers"
                                        :items="category"
                                        :search="search"
                                        >
                                <template slot="items" slot-scope="category">
                                    <td>{{ category.item.name_category }}</td>
                                    <td>{{ category.item.created_at }}</td>
                                    <td>
                                        <router-link :to="{name :'edit_categori', params:{id:category.item.id}}">
                                            <v-icon color="orange">edit</v-icon>
                                        </router-link>
                                          <v-btn icon small @click="destroy(category.item.id)">
                                                <v-icon color="red">delete</v-icon>
                                          </v-btn>
                                    </td>
                                </template>
                                <v-alert slot="no-results" :value="true" color="red" icon="warning">
                                    Your search for "{{ search }}" found no results.
                                </v-alert>
                                </v-data-table>
                        </v-card>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        mounted() {
           this.getcategory()
        },
        data(){
            return{
                search: '',
                            headers: [
                            { text: 'name_category',  value: 'name_category' },
                            { text: 'created_at',     value: 'created_at' },
                            { text: 'action',          value: '' },
                          ],
                category: [],

            }
        },
        methods:{
            mytable(){
                $(function(){
                    $('#example').DataTable()
                });
            },
            getcategory(){
                axios('/api/category')
                .then(res=>this.category=res.data.data)
                .catch(res=>console.log(error.res.data.data))
                this.mytable()
            },
            destroy(id){
                 axios.delete(`/api/category/${id}+`)
                 .then(res=>this.getcategory())
            }

        }

    }
</script>
