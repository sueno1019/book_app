<template>
  <div>
    <BookIndex class="main"></BookIndex>
  </div>
</template>

<script>
import BookIndex from '../components/Book/BookIndex'

export default {
  components: {
    BookIndex
  }
}
</script>

<style scoped>
.main{
  width:100%;
  background-color: #4ea08e;
}
.header{
   background-color: #757575;
}
</style>
