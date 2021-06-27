<template>
  <li class="list">
    <NuxtLink  :to="{name: 'book-bookId-sections-id', params: {id: sectionItem.id}}">
      <div class="list-container">
        <div class="section-name">
          第{{sectionItem.sec_num}}章: {{sectionItem.name}}
        </div>
        <div class="summary-container">
          <Form v-if="edit" :sec_sum="sectionItem.sec_sum" class="form" />
          <div class="summary"> 
            <p class="section-sum">{{sectionItem.sec_sum}}</p>
            <button @click="editSummary()" class="edit-btn">edit</button>
          </div>
        </div>
      </div>
    </NuxtLink>
  </li>
</template>

<script>
import Form from '@/components/Section/SectionForm.vue'

export default {
  props: {
    sectionItem: {
      type: Object,
      default: null,
      required: 1,
    }
  },
  data: function(){
    return{
      // img_src: bookItem.title
      btn_name: "edit",
      edit: false
    }
  },
  componet: {
    Form: Form
  },
  computed: {
    editSummary: function(){
      this.edit = true
    }
  }
}
</script>

<style scoped>

.list{
  margin-top: 30px;
  height: 265px;
  width: 976px;
  border-radius: 10px;
  background-color: #8BC34A;
  overflow: hidden;
  list-style-type: none;
  box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 1px, rgba(0, 0, 0, 0.07) 0px 2px 2px, rgba(0, 0, 0, 0.07) 0px 4px 4px, rgba(0, 0, 0, 0.07) 0px 8px 8px, rgba(0, 0, 0, 0.07) 0px 16px 16px;
}
.section-name{
  width: auto;
  height: auto;
  display: flex;
  margin:20px 20px ;
  color: #fff;
  font-size: 20px;
}

.list-container{
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
}
a{
  display: block;
  height: 100%;
  width: 976px;
  padding: 30px;
  text-decoration: none;
}
.summary-container {
  display: flex;
  flex-direction: column;
  flex-basis: 100%;
}
.summary {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  overflow-wrap: normal;
}
.edit-btn{
  margin: 10px 20px;
  width: 15px;
  height: 10px;
  background-color: azure;
  flex-basis: 15%;
}
.section-sum {
  color: #fff;
  font-size: 15px;
  margin: 20px;
}

</style>