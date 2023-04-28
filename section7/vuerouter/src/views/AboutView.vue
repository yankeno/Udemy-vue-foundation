<template>
  <div class="about">
    <h1>This is an about page</h1>
    <button @click="checkRouteInfo">ルート情報</button>
    <button @click="goToHome">Homeに戻る</button>
  </div>
</template>

<script>
import router from "@/router";

export default {
  name: "AboutPage",
  methods: {
    checkRouteInfo() {
      console.log(this.$route);
      console.log(this.$route.path);
      console.log(this.$router);
    },
    goToHome() {
      router.push("/");
    },
  },
  //   beforeRouteLeave(to, from, next) {
  //     const checkLeave = window.confirm("本当にこのページから離れますか？");
  //     if (checkLeave) {
  //       next();
  //     } else {
  //       next(false);
  //     }
  //   },
};
</script>
