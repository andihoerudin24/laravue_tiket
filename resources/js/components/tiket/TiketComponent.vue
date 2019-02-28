<template>
  <v-card>
        <router-link to="/tiket/create" class="btn btn-primary btn-sm float-right"> + Add Tiket</router-link>
  <v-card-title>
      Data Tiket
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
      :items="tiket"
      :search="search"
    >
      <template slot="items" slot-scope="tiket">
        <td>{{ tiket.item.name_tiket }}</td>
        <td>{{ tiket.item.harga_tiket }}</td>
        <td>{{ tiket.item.name_category }}</td>
        <td>{{ tiket.item.jumlah_tiket }}</td>
        <td>
          <router-link :to="{name:'edit_tiket', params:{id:tiket.item.id}}">
                <v-icon color="orange">edit</v-icon>
          </router-link>
            <v-btn icon small @click="destroy(tiket.item.id)">
                    <v-icon color="red">delete</v-icon>
            </v-btn>
          </td>
      </template>
      <v-alert slot="no-results" :value="true" color="red" icon="warning">
        Your search for "{{ search }}" found no results.
      </v-alert>
    </v-data-table>
  </v-card>
</template>
<script>
  export default {
    data () {
      return {
        search: '',
        headers: [
          { text: 'Name tiket', value: 'name_tiket' },
          { text: 'Harga tiket', value: 'harga_tiket' },
          { text: 'Name category', value: 'name_category' },
          { text: 'Jumlah tiket', value: 'jumlah_tiket' },
          { text: 'aksi', value: 'jumlah_tiket' },
        ],
        tiket: [ ]
      }
    },
    created(){
       this.gettiket()
    },
    methods:{
      destroy(id){
         let decision = confirm('anda yakin ingin menghapus ?')
          if(decision===true){
             axios.delete(`/api/tiket/${id}`)
             this.gettiket()
          }

      },
      gettiket(){
         axios.get('/api/tiket')
        .then(res=>this.tiket=res.data.data)
      }
    }
  }
</script>