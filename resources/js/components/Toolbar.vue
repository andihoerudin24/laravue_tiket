<template>
  <v-toolbar color="cyan" dark >
    <v-spacer></v-spacer>
              <div class="hidden-sm-and-down">
                    <router-link
                    v-for="item in items"
                    :key="item.title"
                    :to="item.to">
                      <v-btn flat>{{item.title}}</v-btn>
                    </router-link>
  </div>
</v-toolbar>
</template>
<script>
export default {
  data() {
    return {
      items: [
        { title: "Category", to: "/", component:'./category/CategoryComponents'},
        { title: "Tiket",    to: "/", component:'./tiket/TiketComponents'},
        { title: "Transaksi",    to: "/", component:'./transaksi/TransaksiComponents'},
      ]
    }
  },
    created(){

  }
}
</script>

<style>

</style>
