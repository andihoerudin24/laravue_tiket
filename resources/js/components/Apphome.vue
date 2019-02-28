<template>
  <vc-donut
    background="white" foreground="grey"
    :size="200" unit="px" :thickness="30"
    hasLegend legendPlacement="top"
    :sections="sections" :total="100"
  >
    <h1>100%</h1>
  </vc-donut>
</template>
<script>
import apphome   from './Apphome'
export default {
      components:{apphome},
          data() {
      return {
        sections: [
          { label: 'Red section', value: 25, color: 'red' },
          { label: 'Green section', value: 25, color: 'green' },
          { label: 'Blue section', value: 25, color: 'blue' }
        ]
      };
    }

}
</script>

<style>

</style>
