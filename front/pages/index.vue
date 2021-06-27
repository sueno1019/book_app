<template>
    <div class="main-content">
      <div class="button-for-modal">
        <ModalButton>new book</ModalButton>
      </div> 
      <List>
        <template v-slot:list>
          <BookList v-for="book in books" :key="book.id" :book-item="book" />
        </template>
      </List>
    </div>
</template>

<script>
import axios from '@/plugins/axios.js'
import BookList from '@/components/Book/BookList.vue'
import ModalButton from '@/components/Book/Button.vue'
import List from '@/components/common/List.vue'
import Button from '../components/Book/Button.vue'

export default {
  data: function () {
    return {
      books: []
    }
  },
  components: {
    BookList,
    ModalButton,
    List,
    Button
  },
  mounted () {
    axios
      .get('/api/v1/books.json')
      .then(response => (this.books = response.data))
  },
}
</script>
#4ea08e
<style scoped>
.main-content{
  display: flex;
  width:100%;
  padding-top:80px;
  margin: 0 auto;
  background-color: #a7d7c5;
  align-items: stretch;
}
.button-for-modal{
  position: absolute;
  top: 60px;
  right: 210px;
}
</style>