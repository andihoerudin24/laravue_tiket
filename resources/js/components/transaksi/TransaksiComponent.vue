<template>
<div class="container">
     <v-form @submit.prevent="savetransaksi">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><i class="fas fa-money-check-alt"> TRANSAKSI TIKET </i></div>
                    <div class="card-body">
                    <h3><i class="fab fa-wpforms"> Form Transaksi </i></h3>
                    <table class="table table-bordered">
                           <tr><td>
                                <div class="col-md-12">
                                    <label>Name Tiket</label>
                                      <v-flex xs12 sm12 d-flex>
                                        <select v-model="form.id_tiket" class="form-control">
                                                <option v-for="tikets in tiket" :value="tikets.id">
                                                    {{tikets.name_tiket}}
                                                </option>
                                        </select>
                                      </v-flex>
                                </div>
                           </td></tr>
                        <tr><td>
                                <div class="col-md-12">
                                    <label>Qty</label>
                                      <v-flex xs12 sm12 d-flex>
                                         <input  type="number" class="form-control" v-model="form.qty">
                                      </v-flex>
                                </div>
                         </td></tr>
                          <tr><td>
                                <v-btn color="primary" type="submit" dark> Save
                                        <v-icon dark right>check_circle</v-icon>
                                </v-btn>
                                <v-btn color="primary" @click="finis()" dark> Finish
                                        <v-icon dark right>check_circle</v-icon>
                                </v-btn>
                                    <v-btn @click="print()" color="indigo" dark>Print
                                        <v-icon dark>backup</v-icon>
                                    </v-btn>
                            </td></tr>
                    </table>
                        <div class="card-header">
                           <i class="fab fa-wpforms"> Detail Transaksi </i>
                       </div>
                     <table class="table table-bordered">
                         <th>
                             <i class="fas fa-file-signature">  Nama Tiket </i>
                         </th>
                         <th>
                             <i class="fab fa-wolf-pack-battalion"> Qty </i></th>
                        <th>
                            <i class="fas fa-hand-holding-usd"> Harga Tiket </i>
                        </th>
                        <th>
                            <i class="fas fa-dollar-sign"> Subtotal  </i></th>
                            <th><i class="fas fa-ban"> Cancel </i>
                         </th>
                        <tr v-for="transaksis in transaksi" :key="transaksi.id">
                                <td>{{transaksis.name_tiket}}</td>
                                <td>{{transaksis.qty}}</td>
                                <td>{{transaksis.harga_tiket}}</td>
                                <td>{{transaksis.total}}</td>
                               <td>
                                     <v-btn icon small @click="cancel(transaksis.id)">
                                            <v-icon color="red">cancel</v-icon>
                                     </v-btn>
                               </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </v-form>
</div>
</template>

<script>
import swal from 'sweetalert';
import jsPDF from 'jspdf';
import autoTable from 'jspdf-autotable';
export default {
  data(){
      return{
          tiket:[],
          transaksi:{},
          form:{
              id_tiket:null,
              qty     :null
          }
      }
  },
  created(){
      axios.get("/api/tiket")
      .then(res=>this.tiket=res.data.data)
    },
      methods:{
          getTransaksi(){
             axios.get("/api/transaksi")
             .then(res=>this.transaksi=res.data.data)
          },
          savetransaksi(){
              axios.post("/api/transaksi/store",this.form)
              .then((response)=>{
                  swal({
                        title: "Success!",
                        text: "Berhasil Membeli Tiket!",
                        icon: "success",
                    });
                  this.getTransaksi()
              })
          },
          cancel(id){
              swal({
                    title: "Apakah Anda Yakin Untuk Menghapus?",
                    text: "Jika Yakin Tekan Tombol ok",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                    })
              .then((willDelete) => {
                    if (willDelete) {
                    axios.delete(`/api/transaksi/${id}`)
                    swal("Berhasil! Transaksi Berhasil Di batalkan!", {
                        icon: "success",
                    });
                     this.getTransaksi();
                } else {
                    swal("Gagal Untuk Menghapus!");
                    }
               });
          },
          finis(){
             axios.get("/api/transaksi/update")
             .then((response)=>{
                  swal({
                        title: "Success!",
                        text: "Transaksi Berhasil Di Simpan!",
                        icon: "success",
                    });
                 this.getTransaksi()
             })
          },
          print(){
            var vm=this
            var columns=[
                {title: "name Tiket", dataKey:"name_tiket"},
                {title: "Price Tiket",dataKey:"harga_tiket"},
                {title: "Qty",        dataKey:"qty"},
                {title: "Sum",        dataKey:"total"}
            ];
            var doc = new jsPDF('p','pt');
            doc.autoTable(columns,vm.transaksi)
            doc.save('a4.pdf')
          }
      }

}
</script>
<style type="text/css">
    .card-header {
       background-color:  #27c8f9;
     }
</style>
