<template>
    <div class="main-content">
      <div class="wrapper">
        <ul class="list">
          <transition-group >
            <slot name="list">
                <BookList v-for="book in books" :key="book.id" :book-item="book" />
            </slot>
          </transition-group>
        </ul>
      </div>
    </div>
</template>

<script>
import axios from '@/plugins/axios.js'
import BookList from './BookList'

export default {
  data: function () {
    return {
      books: []
    }
  },
  components: {
    BookList
  },
  mounted () {
    axios
      .get('/api/v1/books.json')
      .then(response => (this.books = response.data))
  },
}
</script>

<style scoped>
.main-content{
  display: flex;
  width:100%;
  padding-top:50px;
  margin: 0 auto;
  /* background-color: limegreen; */
  align-items: stretch;
}
.wrapper{
  min-width:1000px;
  padding: 1em 3em;
  /* background-color: orangered; */
  margin: 0 auto;
}
.list{
  text-align: left;
  max-width: 100%;
}
</style>