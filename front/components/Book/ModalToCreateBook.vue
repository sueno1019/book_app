<template>
    <transition name="BookModal">
        <div class="overlay" @click="$emit('close')">
            <div class="panel" @click.stop>
                <div class="modal-content">
                    <div class="sum">
                        <span>要約:</span>
                        <br>
                        <textarea v-model="message" placeholder="ここにDBに登録され散る内容が編集不可で表示される感じ？"></textarea>
                            <div class="nav">
                                <v-btn color="light-green" elevation="10" class="fix">fix</v-btn>
                                <v-btn color="light-green" elevation="10" class="login" @click="$emit('close')">close</v-btn>
                            </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </transition>
</template>

<script>
export default {
    
}
</script>


<style lang="scss">
.overlay {//モーダル以外の箇所
    background: rgba(5, 5, 5, 0.3);//第4引数は透明度
    position: fixed;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    z-index: 1;
    transition: all .5s ease;
}
.panel {//モーダル箇所
    width: 1200px;
    height: 630px;
    background:#324851;
    padding: 20px;
    position: absolute;
    left: 18%;
    top: 24%;
    margin-left: -150px;
    margin-top: -100px;
    z-index: 2;
    border-radius: 30px;
}
.sum{
    height: 600px;
    z-index: 3;
    font-size: 1rem;
    color: white;
}

.nav{
    margin: 17px 20px;
    float: right;
}
.fix{
    margin-right: 10px;
}

textarea{
    border-style: double;
    color: white;
    width: 90%;
    height: 20%;
}

.modal-enter,
.modal-leave-active {
    opacity: 0;
}
.modal-enter .panel,
.modal-leave-active .panel{
    top: -200px;
}
</style>