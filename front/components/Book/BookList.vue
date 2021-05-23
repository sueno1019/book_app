<template>
    <li class="list">
        <NuxtLink  :to="{name: 'book-id', params: {id: bookItem.id}}">
            <div class="list-container">
                <img class="book-pic">
                <div class="book-info">
                    <div class="book-title">
                        {{bookItem.title}}
                    </div>
                    <div class=book-author>
                        著者: {{bookItem.author}}{{bookItem.image}}
                    </div>
                    <div class=book-sum>
                        {{bookItem.book_sum}}
                    </div>           
                </div>    
            </div>
        </NuxtLink>
    </li>
</template>

<script>

export default {
    props: {
        bookItem: {
            type: Object,
            default: null,
            required: 1
        }
    },
    data: function(){
        return{
            //  img_src: bookItem.title
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
.book-pic{
    float: left;
    height: 187px;
    width: 120px;
    /* background-color:blue */
}
.book-info{
    width: auto;
    height: auto;
    float: left;
    margin:20px 20px ;
    color: #fff;
}
.book-title{
    font-size: 40px;
}
.book-author{
    margin-top: 40px;
    font-size: 25px;
}
.book-sum{
    margin-top: 40px;
    font-size: 15px;
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