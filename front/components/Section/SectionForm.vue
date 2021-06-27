<template>
  <form>
    <label for="summary">summary</label>
    <input type="text" v-model="sec_sum" class="input">
    <button @click="changeSummary()">confirm</button>
  </form>
</template>

<script>
import axios from '@/plugins/axios.js'

export default {
  props: ["sec_sum"],
  computed: {
    changeSummary: function(){
      axios
      .patch('/api/v1/sections.json')
    }
  }
}
</script>

<style>
.input{
  width: 0.8em;
  height: auto;
}
</style>