<template>
    <div class="main-content">
      <ul>
        <List>
          <template v-slot:list>
            <SectionList v-for="section in sections" :key="section.id" :section-item="section" />
          </template>
        </List>
      </ul>
        <v-btn
          class="mx-2 btn"
          fab
          dark
          color="secondary"
          @click="addSection()"
        >
          <v-icon dark>
            mdi-plus
          </v-icon>
        </v-btn>
    </div>    
</template>
<script>
import axios from '@/plugins/axios.js'
import SectionList from '@/components/Section/SectionList.vue'
import List from '@/components/common/List.vue'

export default {
  data: function () {
    return {
      sections: []
    }
  },
  components: {
    SectionList,
    List
  },
  computed: {
    addSection: function(){
      
    }
  },
  mounted () {
    axios
      .get('/api/v1/sections.json', {
        params: {id: this.$route.params.id}
      })
      .then(response => (this.sections = response.data))
  },
}
</script>

<style scoped>
.main{
  width:100%;
  background-color: #a7d7c5;
}
.header{
   background-color: #757575;
}
.btn{
   margin: 30px auto;
   left: 50%
}
</style>
