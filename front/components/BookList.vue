<template>
    <li class="list">
        <div class="book-pic">
            {{bookItem.image}}
        </div>
        <div class="book-info">
            <div class="book-title">
                <router-link  :to="{name: 'Section', params: {id: bookItem.id}}">
                    {{bookItem.title}}
                </router-link>
            </div>
            <div class=book-author>
                著者: {{bookItem.author}}
            </div>           
        </div>    
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
    }
}
</script>

<style scoped>
a{
    position: relative;
}
.list{
    margin-top: 30px;
    padding: 30px;
    background-color: #f4f9f4;
    overflow: hidden;
    list-style-type: none;
    box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 1px, rgba(0, 0, 0, 0.07) 0px 2px 2px, rgba(0, 0, 0, 0.07) 0px 4px 4px, rgba(0, 0, 0, 0.07) 0px 8px 8px, rgba(0, 0, 0, 0.07) 0px 16px 16px;
}
.book-pic{
    float: left;
    height: 187px;
    width: 120px;
    background-color:blue
}
.book-info{
    width:auto;
    float: left;
    margin-left:20px ;
    /* background-color: olive; */
}
.book-title{
    font-size: 40px;
}
.book-author{
    margin-top: 20px;
    font-size: 25px;
}
</style>