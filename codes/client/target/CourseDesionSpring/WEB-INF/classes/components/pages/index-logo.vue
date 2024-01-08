<template>
  <!--    logo-->
  <el-row>
    <el-row style="margin-top: 0;">
      <el-carousel direction="horizontal" :autoplay="true" height="670px">
        <el-carousel-item v-for="(v,k) in items" :key="k">
          <img :src="v" alt="请检查网络连接" width="100%">
        </el-carousel-item>
      </el-carousel>
    </el-row>
  </el-row>

  <!--    logo结束-->
</template>

<script>
      export default {
        name: "index-body",
        data() {
          return {
            items: {
              // img1: require("../../assets/school1.jpg"),
              img2: require("../../assets/school2.jpg"),
              img3: require("../../assets/school3.jpg"),
              img4: require("../../assets/school4.jpg"),
              img5: require("../../assets/school5.jpg")
            },
            rules: {
              search: [
                {validator: checkString, trigger: 'blur'}
              ]
            },
            search: "",
            data1: [],//热门精品
            data2: [],//低价好物
            data3: [],//九新以上
            dataSearch: [],//用来保存搜索的全部结果
            goodsInfoId: "",
            goodsInfoImg: {},
            goodsInfoName: "",
            goodsInfoDscrip: "",
            goodsInfoPrice: 0,
            centerDialogVisible: false,
            dialogValue: "",
            centerDialogVisible2: false,
            goToShopCar: true,
            currentPage: 1, //初始页
            pageSize: 12, //每页的数据
            paginationShow: false,//默认不显示分页
            searchFlag: false,//用来避免频繁向服务器发送数据
            fullscreenLoading: false,//模拟加载
          };
          let checkString = (rule, value, callback) => {
            if (!value) {
              return callback(new Error('请填写内容'));
            } else {
              callback();
            }
          };
        }
      }
</script>

<style scoped>

</style>
