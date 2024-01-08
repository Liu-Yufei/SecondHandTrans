<template>
  <div classa >
    <!--首页头-->
    <index-header></index-header>
    <!--首页 Logo-->
    <index-logo></index-logo>
    <!--首页主体-->
    <index-body></index-body>
    <!--首页尾-->
    <index-footer></index-footer>
  </div>
</template>

<script>
    import IndexHeader from './pages/index-header.vue';
    import IndexBody from './pages/index-body';
    import IndexFooter from './pages/index-footer';
    import IndexLogo from './pages/index-logo'
    export default {
      name: "index",
      components:{
          IndexHeader,IndexBody,IndexFooter,IndexLogo
      }
    }
</script>

<style scoped>
.index-header >>> .index-header-bar {
  border-radius: 0;
  line-height: 60px;
  background-color: rgba(100, 68, 136,0.5);
  position:fixed;
  width: 100%;
  z-index: 999;
}
.index-header >>> .navbar{
  height: 60px;
  min-height: 0;
}
.index-header >>> .index-header-bar span{
  color: #e2c8ca;
  font-size: 24px;
  line-height: 60px;
}
.index-header >>> .index-header-bar span:hover{
  color: white;
}
.index-header >>> .index-header-bar-span{
  color: #e2c8ca;
  font-size: 24px;
  text-align: center;
  line-height: 60px;
  position: relative;
}
.index-header >>> .index-header-bar-span:hover{
  height: 59px;
  position: center;
  background-color: rgba(100, 68, 136,0.5);
}
.index-header >>> .index-header-bar a{
  color: #e2c8ca;
  font-size: 18px;
  line-height: 60px;
  text-decoration: none;
  border: 0;
}
.index-header >>> .index-header-bar a:hover{
  color: white;
}
.index-header >>> .my-dropdown-menu-1{
  background-color: rgba(100, 68, 136,0.5);
  text-align: center;
  min-width: 80px;
}
.index-header >>> .my-dropdown-menu-li-1:hover{
  background-color: rgba(100, 68, 136,0.5);
  text-align: center;
  min-width: 80px;
}
.index-header >>> .my-el-menu-1{
  border-bottom: 0;
}
.index-header >>> .my-el-menu-1>.el-menu-item.is-active{
  border-bottom: 2px solid rgb(181,170,154);
}
.index-header >>> .my-el-menu-item-1{
  margin-left: 5%;
  line-height: 50px;
  height: 50px;
}
</style>
