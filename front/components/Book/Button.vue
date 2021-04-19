<template>
  <v-app>
    <div class="n-btn">
      <v-btn
      class="ma-2"
      large
      fab
      color="secondary"
      @click="showModal=true"
      >
        <v-icon>mdi-pencil</v-icon>
      </v-btn>
      <BookModal v-if="showModal" @close="showModal=false" />
    </div>
  </v-app>
</template>

<script>
import BookModal from "./ModalToCreateBook"

export default {
    data: function () {
    return {
      showModal: false,
    }
    },
    components:{
        BookModal 
    }

}
</script>

<style scoped>
.n-btn{
    position: absolute;
    top: 20px;
    right: 40px;
}
.input{
    font-size: 16px;
    width: 100%;
    border: none;
    outline: none;
    padding-bottom: 8px;
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.text_underline{
    position: relative; /*.text_underline::beforeの親要素*/
    border-top: 1px solid #c2c2c2; 
    /* padding-bottom: 8px; */
}

/*共通のstyle*/
.text_underline::before,
.text_underline::after{
    position: absolute; 
    bottom: 0px; /*中央配置*/
    width: 0px; /*アニメーションで0pxから50%に*/
    height: 1px; /*高さ*/
    content: '';
    background-color: #3be5ae; /*アニメーションの色*/
    transition: all 0.5s;
    -webkit-transition: all 0.5s;
}
.text_underline::before{
    position: absolute; 
    left: 0px; /*左配置 ここright: 0px;にすると右から左のアニメーション*/
    bottom: 0px; /*左配置*/
    width: 0px; /*アニメーションで0pxから100%に*/
    height: 1px; /*高さ*/
    content: '';
    background-color: #3be5ae; /*アニメーションの色*/
    transition: all 0.5s;
    -webkit-transition: all 0.5s;
}

.input:focus + .text_underline::before{
    width: 100%;
}
</style>

