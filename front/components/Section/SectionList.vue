<template>
  <li class="list">
    <NuxtLink  :to="{name: 'part', params: {id: sectionItem.id}}">
      <div class="list-container">
        <div class="section-info">
          <div class="section-name">
            第{{sectionItem.sec_num}}章: {{sectionItem.name}}
          </div>
          <component :is="summary"></component>
        </div>    
      </div>
    </NuxtLink>
  </li>
</template>

<script>

export default {
  props: {
    sectionItem: {
      type: Object,
      default: null,
      required: 1
    }
  },
  data: function(){
    return{
      // img_src: bookItem.title
      summary: "Form"    
    }
  }
}
</script>

<style scoped>
a{
    position: relative;
}
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
.section-info{
    width: auto;
    height: auto;
    float: left;
    margin:20px 20px ;
    color: #fff;
}
.section-name{
    font-size: 20px;
}
.list-container{
    width: 100%;
    height: 100%;
}
a{
    display: block;
    height: 265px;
    width: 976px;
    padding: 30px;
}
</style>