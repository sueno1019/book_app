<template>
  <div>
    <div>
      <div class="section">
        <div class="section-content" v-for="(content,i) in contents" :key="i" @click="addComponent(content.name)">{{content.name}}</div>
      </div>
    </div>
  </div>
</template>

<script> 
import BookIndex from "../components/Book/BookIndex"

export default {
  components: {
    BookIndex
  }
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
</style>
