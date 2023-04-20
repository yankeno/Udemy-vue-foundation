<template>
  <div class="red-b">
    <div class="border__blue">SCSSのテストです</div>
    <!-- <div class="background__primary">SCSSグローバルテストです</div> -->
    てすとです
    {{ testData }}
  </div>
</template>

<script>
export default {
  name: "TestComponent",
  data() {
    return {
      testData: "テストデータです",
    };
  },
};
</script>

<style scoped>
@import "@/assets/sass/main.scss";
.red-b {
  border: 1px red solid;
}
.border__blue {
  &__blue {
    border: 1px blue solid;
  }
}
/* .background__primary {
  background-color: $color-primary;
} */
</style>
