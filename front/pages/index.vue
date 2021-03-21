<template>
  <div>
    <Header class="header"></Header>
    <BookIndex class="main"></BookIndex>
  </div>
</template>

<script>
import Header from '../components/Header' 
import BookIndex from "../components/BookIndex"

export default {
  components: {
    Header,
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
