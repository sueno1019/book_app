<template>
    <transition name="BookModal">
        <div class="overlay" @click="$emit('close')">
            <div class="panel" @click.stop>
                <div class="modal-content">
                    <p>これがモーダルウィンドウです</p>
                    <p>いいね({{number}})</p>
                    <button @click="$emit('close')">閉じる</button>
                </div>
            </div>
        </div>
    </transition>
</template>

<script>
export default {
    data(){
        return{
            number:5
        }
    }
}
</script>


<style lang="scss">
.overlay {//モーダル以外の箇所
    background: rgba(5, 5, 5, 0.8);//第4引数は透明度
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
    background:rgb(255,255,255,0.9);
    padding: 20px;
    position: absolute;
    left: 18%;
    top: 24%;
    margin-left: -150px;
    margin-top: -100px;
    transition: all .3s ease;
    z-index: 2;
}
.modal-content{
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